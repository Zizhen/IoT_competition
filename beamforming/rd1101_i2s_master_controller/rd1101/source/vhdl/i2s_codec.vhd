----------------------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<
----------------------------------------------------------------------
----                                                              ----
---- WISHBONE I2S Interface IP Core                               ----
----                                                              ----
---- This file is part of the I2S Interface project               ----
---- http://www.opencores.org/cores/i2s_interface/                ----
----                                                              ----
---- Description                                                  ----
---- I2S encoder/decoder.                                         ----
----                                                              ----
----                                                              ----
---- To Do:                                                       ----
---- -                                                            ----
----                                                              ----
---- Author(s):                                                   ----
---- - Geir Drange, gedra@opencores.org                           ----
----                                                              ----
----------------------------------------------------------------------
----                                                              ----
---- Copyright (C) 2004 Authors and OPENCORES.ORG                 ----
----                                                              ----
---- This source file may be used and distributed without         ----
---- restriction provided that this copyright statement is not    ----
---- removed from the file and that any derivative work contains  ----
---- the original copyright notice and the associated disclaimer. ----
----                                                              ----
---- This source file is free software; you can redistribute it   ----
---- and/or modify it under the terms of the GNU General          ----
---- Public License as published by the Free Software Foundation; ----
---- either version 2.0 of the License, or (at your option) any   ----
---- later version.                                               ----
----                                                              ----
---- This source is distributed in the hope that it will be       ----
---- useful, but WITHOUT ANY WARRANTY; without even the implied   ----
---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ----
---- PURPOSE. See the GNU General Public License for more details.----
----                                                              ----
---- You should have received a copy of the GNU General           ----
---- Public License along with this source; if not, download it   ----
---- from http://www.gnu.org/licenses/gpl.txt                     ----
----                                                              ----
----------------------------------------------------------------------
--   ------------------------------------------------------------------
--   Copyright (c) 2013 by Lattice Semiconductor Corporation
--   ALL RIGHTS RESERVED 
--   ------------------------------------------------------------------
--
--   Permission:
--
--      Lattice SG Pte. Ltd. grants permission to use this code
--      pursuant to the terms of the Lattice Reference Design License Agreement. 
--
--
--   Disclaimer:
--
--      This VHDL or Verilog source code is intended as a design reference
--      which illustrates how these types of functions can be implemented.
--      It is the user's responsibility to verify their design for
--      consistency and functionality through the use of formal
--      verification methods.  Lattice provides no warranty
--      regarding the use or functionality of this code.
--
--   --------------------------------------------------------------------
--
--                  Lattice SG Pte. Ltd.
--                  101 Thomson Road, United Square #07-02 
--                  Singapore 307591
--
--
--                  TEL: 1-800-Lattice (USA and Canada)
--                       +65-6631-2000 (Singapore)
--                       +1-503-268-8001 (other locations)
--
--                  web: http:--www.latticesemi.com/
--                  email: techsupport@latticesemi.com
--
--   --------------------------------------------------------------------
-- CVS Revision History
--
-- $Log: RD#RD1101#source#vhdl#i2s_codec.vhd,v $
-- Revision 1.1  2013-07-04 19:38:06-07  lsccad
-- ...No comments entered during checkin...
--
-- Revision 1.4  2007/10/09 20:06:40  gedra
-- Code beutification.
--
-- Revision 1.3  2005/06/03 17:18:08  gedra
-- BugFix: LSB of transmitted word would be set to zero in slave master mode. (Credit: Julien Dumont)
--
-- Revision 1.2  2004/08/06 18:55:05  gedra
-- Removed conf_inten, and fixed bug in transmitter master mode.
--
-- Revision 1.1  2004/08/03 18:49:43  gedra
-- I2S encoder/decoder.
--
---------------------------------------------------------------------------
-- Code Revision History (LSC) :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | JT		  |9/2010                         
---------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2s_codec is
   generic (DATA_WIDTH  : integer:=16;
            ADDR_WIDTH  : integer:=6;
            IS_RECEIVER : integer:=1);-- range 0 to 1);
   port (
      wb_clk_i     : in  std_logic;     -- wishbone clock
      conf_res     : in  std_logic_vector(5 downto 0);  -- sample resolution
      conf_ratio   : in  std_logic_vector(4 downto 0);  -- clock divider ratio
      conf_swap    : in  std_logic;     -- left/right sample order
      conf_en      : in  std_logic;     -- transmitter/recevier enable
      i2s_sd_i     : in  std_logic;     -- I2S serial data input         
      sample_dat_i : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- audio data
      sample_dat_o : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- audio data
      mem_rdwr     : out std_logic;     -- sample buffer read/write
      sample_addr  : out std_logic_vector(ADDR_WIDTH - 2 downto 0);  -- address
      evt_hsbf     : out std_logic;     -- higher sample buf empty or full event
      evt_lsbf     : out std_logic;     -- lower sample buf empty or full event
      i2s_sd_o     : out std_logic;     -- I2S serial data output
      i2s_sck_o    : out std_logic;     -- I2S clock output
      i2s_ws_o     : out std_logic);    -- I2S word select output
end i2s_codec;

architecture rtl of i2s_codec is
   
   signal i2s_clk_en           : std_logic;
   signal clk_cnt                                            : integer range 0 to 31;
   signal adr_cnt                                            : integer range 0 to 2**(ADDR_WIDTH - 1) - 1;
   type srx_states is (IDLE, WAIT_CLK, TRX_DATA, RX_WRITE, SYNC);
   signal sd_ctrl                                            : srx_states;
   signal bit_cnt, bits_to_trx                               : integer range 0 to 63;
   signal toggle,neg_edge, ws_pos_edge,ws_neg_edge : std_logic;
   signal data_in                                            : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal i2s_ws, new_word       : std_logic;
   signal imem_rdwr, receiver                                : std_logic;
   signal ws_cnt                                             : integer range 0 to 31;
   
begin
   SGRX : if IS_RECEIVER = 1 generate
      receiver <= '1';
   end generate SGRX;
   SGTX : if IS_RECEIVER = 0 generate
      receiver <= '0';
   end generate SGTX;

-- I2S clock enable generation, master mode. The clock is a fraction of the
-- Wishbone bus clock, determined by the conf_ratio value.

      CGEN : process (wb_clk_i)
      begin
         if rising_edge(wb_clk_i) then
            if conf_en = '0' then       -- disabled
               i2s_clk_en <= '0';
               clk_cnt    <= 0;
               neg_edge   <= '0';
               toggle     <= '0';
            else                        -- enabled
               if clk_cnt < to_integer(unsigned(conf_ratio)) + 1 then
                  clk_cnt    <= (clk_cnt + 1) mod 32;
                  i2s_clk_en <= '0';
               else
                  clk_cnt    <= 0;
                  i2s_clk_en <= '1';
                  neg_edge   <= not neg_edge;
               end if;
               toggle <= neg_edge;
            end if;
         end if;
      end process CGEN;


-- Process to generate word select signal, master mode
      i2s_ws_o <= i2s_ws;
      WSG : process (wb_clk_i)
      begin
         if rising_edge(wb_clk_i) then
            if conf_en = '0' then
               i2s_ws      <= '0';
               ws_cnt      <= 0;
               ws_pos_edge <= '0';
               ws_neg_edge <= '0';
            else
               if i2s_clk_en = '1' and toggle = '1' then
                  if ws_cnt < bits_to_trx then
                     ws_cnt <= ws_cnt + 1;
                  else
                     i2s_ws <= not i2s_ws;
                     ws_cnt <= 0;
                     if i2s_ws = '1' then
                        ws_neg_edge <= '1';
                     else
                        ws_pos_edge <= '1';
                     end if;
                  end if;
               else
                  ws_pos_edge <= '0';
                  ws_neg_edge <= '0';
               end if;
            end if;
         end if;
      end process WSG;

-- Logic to generate clock signal, master mode
      i2s_sck_o <= toggle;


-- Process to receive data on i2s_sd_i, or transmit data on i2s_sd_o
   sample_addr  <= std_logic_vector(to_unsigned(adr_cnt, ADDR_WIDTH - 1));
   mem_rdwr     <= imem_rdwr;
   sample_dat_o <= data_in;

   SDRX : process (wb_clk_i)
   begin
      if rising_edge(wb_clk_i) then
         if conf_en = '0' then          -- codec disabled
            imem_rdwr   <= '0';
            sd_ctrl     <= IDLE;
            data_in     <= (others => '0');
            bit_cnt     <= 0;
            bits_to_trx <= 0;
            new_word    <= '0';
            adr_cnt     <= 0;
            evt_lsbf    <= '0';
            evt_hsbf    <= '0';
            i2s_sd_o    <= '0';
         else
            case sd_ctrl is
               when IDLE =>
                  imem_rdwr <= '0';
                  if to_integer(unsigned(conf_res)) > 15 and
                     to_integer(unsigned(conf_res)) < 33 then
                     bits_to_trx <= to_integer(unsigned(conf_res)) - 1;
                  else
                     bits_to_trx <= 15;
                  end if;
                  if conf_en = '1' then
                     if (ws_pos_edge = '1' and conf_swap = '1') or
                        (ws_neg_edge = '1' and conf_swap = '0') then
                        if receiver = '1' then        -- recevier
                           sd_ctrl <= WAIT_CLK;
                        else
                           imem_rdwr <= '1';  -- read first data if transmitter
                           sd_ctrl   <= TRX_DATA;
                        end if;
                     end if;
                  end if;
               when WAIT_CLK =>         -- wait for first bit after WS
                  adr_cnt  <= 0;
                  bit_cnt  <= 0;
                  new_word <= '0';
                  data_in  <= (others => '0');
                  if i2s_clk_en = '1' and neg_edge = '0' then
                     sd_ctrl <= TRX_DATA;
                  end if;
               when TRX_DATA =>         -- transmit/receive serial data 
                  imem_rdwr <= '0';
                  evt_hsbf  <= '0';
                  evt_lsbf  <= '0';                  
                  if ws_pos_edge = '1' or ws_neg_edge = '1' then
                     new_word <= '1';
                  end if;
                  
                  -- recevier operation
                  if receiver = '1' then
                     if i2s_clk_en = '1' and neg_edge = '1' then                        
                           if bit_cnt < bits_to_trx and new_word = '0' then
                              bit_cnt                        <= bit_cnt + 1;
                              data_in(bits_to_trx - bit_cnt) <= i2s_sd_i;
                           else
                              imem_rdwr                      <= '1';
                              data_in(bits_to_trx - bit_cnt) <= i2s_sd_i;
                              sd_ctrl                        <= RX_WRITE;
                           end if;                        
                     end if;
                  end if;
                  -- transmitter operation
                  if receiver = '0' then
                        if i2s_clk_en = '1' and neg_edge = '0' then
                           if bit_cnt < bits_to_trx and new_word = '0' then
                              bit_cnt  <= bit_cnt + 1;
                              i2s_sd_o <= sample_dat_i(bits_to_trx - bit_cnt);
                           else
                              bit_cnt <= bit_cnt + 1;
                              if bit_cnt > bits_to_trx then
                                 i2s_sd_o <= '0';
                              else
                                 i2s_sd_o <= sample_dat_i(0);
                              end if;
                              -- transmitter address counter
                              imem_rdwr <= '1';
                              adr_cnt   <= (adr_cnt + 1) mod 2**(ADDR_WIDTH - 1);
                              if adr_cnt = 2**(ADDR_WIDTH - 2) - 1 then
                                 evt_lsbf <= '1';
                              else
                                 evt_lsbf <= '0';
                              end if;
                              if adr_cnt = 2**(ADDR_WIDTH - 1) - 1 then
                                 evt_hsbf <= '1';
                              else
                                 evt_hsbf <= '0';
                              end if;
                              sd_ctrl <= SYNC;
                           end if;
                        end if;                     
                  end if;
               when RX_WRITE =>         -- write received word to sample buffer
                  imem_rdwr <= '0';
                  adr_cnt   <= (adr_cnt + 1) mod 2**(ADDR_WIDTH - 1);
                  if adr_cnt = 2**(ADDR_WIDTH - 2) - 1 then
                     evt_lsbf <= '1';
                  else
                     evt_lsbf <= '0';
                  end if;
                  if adr_cnt = 2**(ADDR_WIDTH - 1) - 1 then
                     evt_hsbf <= '1';
                  else
                     evt_hsbf <= '0';
                  end if;
                  sd_ctrl <= SYNC;
               when SYNC =>             -- synchronise with next word
                  imem_rdwr <= '0';
                  evt_hsbf  <= '0';
                  evt_lsbf  <= '0';
                  bit_cnt   <= 0;
                  if ws_pos_edge = '1' or ws_neg_edge = '1' then
                     new_word <= '1';
                  end if;    
                  
                  new_word <= '0';
                  data_in  <= (others => '0');
                  sd_ctrl  <= TRX_DATA;                     
                              
               when others => null;
            end case;
         end if;
      end if;
   end process SDRX;
   
end rtl;
