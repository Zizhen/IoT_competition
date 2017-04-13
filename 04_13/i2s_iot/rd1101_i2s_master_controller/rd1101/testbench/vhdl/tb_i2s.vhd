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
---- I2S top level test bench. Two transmitters and two receivers ----
---- are instantiated, one each in slave and master mode.         ----
---- Test result is displayed in the log window, there should     ----
---- be no errors.                                                ----
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
--
-- CVS Revision History
--
-- $Log: RD#RD1101#testbench#vhdl#tb_i2s.vhd,v $
-- Revision 1.1  2013-07-04 19:37:51-07  lsccad
-- ...No comments entered during checkin...
--
-- Revision 1.3  2007/10/09 20:13:08  gedra
-- Code beutification.
--
-- Revision 1.2  2004/08/07 12:33:29  gedra
-- De-linted.
--
-- Revision 1.1  2004/08/04 14:31:02  gedra
-- Top level test bench.
--
---------------------------------------------------------------------------
-- Code Revision History (LSC) :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | JT		  |9/2010                         
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_i2s is

end tb_i2s;

architecture behav of tb_i2s is
	
constant DATA_WIDTH:integer:=32;
constant ADDR_WIDTH:integer:=6;
constant IS_RECEIVER:integer:=1;

component i2s_topm
      generic (DATA_WIDTH : integer;
               ADDR_WIDTH : integer;
               IS_RECEIVER : integer);
port (
      wb_clk_i  : in  std_logic;
      wb_rst_i  : in  std_logic;
      wb_sel_i  : in  std_logic;
      wb_stb_i  : in  std_logic;
      wb_we_i   : in  std_logic;
      wb_cyc_i  : in  std_logic;
      wb_bte_i  : in  std_logic_vector(1 downto 0);
      wb_cti_i  : in  std_logic_vector(2 downto 0);
      wb_adr_i  : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);
      wb_dat_i  : in  std_logic_vector(DATA_WIDTH -1 downto 0);
      i2s_sd_i  : in  std_logic;        -- I2S data input for receiver
      wb_ack_o  : out std_logic;
      wb_dat_o  : out std_logic_vector(DATA_WIDTH - 1 downto 0);
      rx_int_o  : out std_logic;        -- Interrupt line for receiver
      i2s_sck_o : out std_logic;        -- I2S clock out
      i2s_ws_o  : out std_logic;       -- I2S word select out
      tx_int_o  : out std_logic;       -- Interrupt line for transmitter
      i2s_sd_o  : out std_logic);      -- I2S data output for transmitter
   end component;

   signal wb_clk_o, wb_rst_o, wb_sel_o, wb_stb_o, wb_we_o : std_logic;
   signal wb_cyc_o, wb_ack_i: std_logic;
   signal rx_ack, tx_ack    : std_logic;
   signal tx_int_o,rx_int_o : std_logic;
   signal wb_bte_o : std_logic_vector(1 downto 0);
   signal wb_cti_o : std_logic_vector(2 downto 0);
   signal wb_adr_o : std_logic_vector(ADDR_WIDTH - 1 downto 0);
   signal wb_dat_o, rx_dat_i, tx_dat_i   : std_logic_vector(DATA_WIDTH -1 downto 0);   
   signal i2s_sd_rx, i2s_sd_tx, i2s_sck_rx, i2s_sck_tx, i2s_ws_rx, i2s_ws_tx : std_logic;
   
   signal send_to_rx_left,send_to_rx_right:std_logic_vector(DATA_WIDTH -1 downto 0); 
   signal i2s_ws_rx_del:std_logic;
   signal i,ii:integer;
   
   constant zero:std_logic_vector(ADDR_WIDTH - 2 downto 0) :=(others => '0'); 
   constant TX_BUF_BASE:std_logic_vector(ADDR_WIDTH - 1 downto 0) :=('1' & zero);
   constant TX_CONFIG:std_logic_vector(ADDR_WIDTH - 1 downto 0) := (others => '0');
   constant RX_CONFIG:std_logic_vector(ADDR_WIDTH - 1 downto 0) := (others => '0');
   constant TX_INTSTAT: natural := 1;
   constant RX_INTSTAT: natural := 1;
   constant WRITE_TIMEOUT : integer := 20;
   constant READ_TIMEOUT  : integer := 20;  -- Max cycles to wait during read
   constant WEAK_BUS: std_logic_vector(ADDR_WIDTH - 1 downto 0) := (others => 'W');
   constant LOW_BUS : std_logic_vector(DATA_WIDTH -1 downto 0) := (others => 'L');
      
begin
-- I2S transmitter, master mode
TRANSMITTER : if IS_RECEIVER = 0 generate
   ITX32M : i2s_topm
      generic map (DATA_WIDTH => DATA_WIDTH,
                   ADDR_WIDTH => ADDR_WIDTH,
                   IS_RECEIVER=>0)
      port map (
         -- Wishbone interface
         wb_clk_i  => wb_clk_o,                
         wb_rst_i  => wb_rst_o,                
         wb_sel_i  => wb_sel_o,                
         wb_stb_i  => wb_stb_o,        
         wb_we_i   => wb_we_o,                 
         wb_cyc_i  => wb_cyc_o,                
         wb_bte_i  => wb_bte_o,                
         wb_cti_i  => wb_cti_o,                
         wb_adr_i  => wb_adr_o(ADDR_WIDTH-1 downto 0),    
         wb_dat_i  => wb_dat_o(DATA_WIDTH-1 downto 0),   
         i2s_sd_i  => '0',--open,
         wb_ack_o  => tx_ack,                 
         wb_dat_o  => tx_dat_i,               
         rx_int_o  => open,
         tx_int_o  => tx_int_o,               
         i2s_sd_o  => i2s_sd_tx,                 
         i2s_sck_o => i2s_sck_tx,                
         i2s_ws_o  => i2s_ws_tx);                
end generate TRANSMITTER;                                               

-- I2S receiver, master mode  
RECEIVER : if IS_RECEIVER = 1 generate               
   IRX32M : i2s_topm
      generic map (DATA_WIDTH => DATA_WIDTH,
                   ADDR_WIDTH => ADDR_WIDTH,
                   IS_RECEIVER=>1)
      port map (
         -- Wishbone interface
         wb_clk_i  => wb_clk_o,               
         wb_rst_i  => wb_rst_o,               
         wb_sel_i  => wb_sel_o,               
         wb_stb_i  => wb_stb_o,       
         wb_we_i   => wb_we_o,                
         wb_cyc_i  => wb_cyc_o,               
         wb_bte_i  => wb_bte_o,               
         wb_cti_i  => wb_cti_o,               
         wb_adr_i  => wb_adr_o(ADDR_WIDTH-1 downto 0),   
         wb_dat_i  => wb_dat_o(DATA_WIDTH-1 downto 0),  
         i2s_sd_i  => i2s_sd_rx,                
         wb_ack_o  => rx_ack,                
         wb_dat_o  => rx_dat_i,              
         rx_int_o  => rx_int_o,              
         i2s_sck_o => i2s_sck_rx,               
         i2s_ws_o  => i2s_ws_rx,                
         tx_int_o  => open,                   
         i2s_sd_o  => open);                  
end generate RECEIVER;

wb_ack_i <= tx_ack when IS_RECEIVER=0 else rx_ack;

-- Clock process, 50Mhz Wishbone master freq.
   CLKGEN : process
   begin
      wb_clk_o <= '0';
      wait for 10 ns;
      wb_clk_o <= '1';
      wait for 10 ns;
   end process CLKGEN;

-- Main test process
TRANSMITTER_main : if IS_RECEIVER = 0 generate
   MAIN_tx : process
   variable read_data:std_logic_vector(DATA_WIDTH -1 downto 0);          
   begin      
      wb_rst_o <= '1';                  -- system reset
      wb_sel_o <= '0';
      wb_stb_o <= '0';
      wb_sel_o <= '0';
      wb_we_o  <= '0';
      wb_cyc_o <= '0';
      wb_bte_o <= "00";
      wb_cti_o <= "000";
      wb_adr_o <= (others => '0');
      wb_dat_o <= (others => '0');
      read_data:=(others => '0');
      wait for 200 ns;
      wb_rst_o <= '0';
------------------------------------------"*** Test of master TX ***"------------
-----------------Fill up sample buffers with test signal
-----------------ramp up in left, ramp down in right
      SGEN : for i in 0 to 15 loop                 
      ---------------------------left channel
         -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(conv_integer(TX_BUF_BASE) + 2*i, wb_adr_o'length));--TX_BUF_BASE + 2*i;
         wb_dat_o <= std_logic_vector(to_unsigned(((32767 - i*497)*16), wb_dat_o'length));
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write even address of buffer!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';
      
      --------------------------- right channel
         -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(conv_integer(TX_BUF_BASE) + 2*i+1, wb_adr_o'length));--TX_BUF_BASE + 2*i + 1;
         wb_dat_o <= std_logic_vector(to_unsigned(((32768 + i*497)*16), wb_dat_o'length));
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write odd address of buffer!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';         
      end loop;    	      	      	
--------------------"Enable transmitter master,enable interrupts,16 bit resolution";
---------------------left channel is stored on even addresses      
      -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= TX_CONFIG;
         wb_dat_o <= std_logic_vector(to_unsigned(16#3a1b#, wb_dat_o'length));--0011101010001011
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then
                  report"Warning: No acknowledge recevied for write configure register!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L'; 
           
----------------------"Wait for transmitter master LSBF interrupt"
     wait until tx_int_o='1';
-----------------------read txintsta register to check for transmitter LSBF interrupt
     wb_adr_o <= std_logic_vector(to_unsigned(TX_INTSTAT, wb_adr_o'length));
     wb_we_o  <= '0';
     wb_cyc_o <= '1'; 
     wb_stb_o <= '1';
     wb_sel_o <= '1';
     -- wait for acknowledge 
     wait until rising_edge(wb_clk_o);
     if wb_ack_i /= '1' then
         for i in 1 to READ_TIMEOUT loop
            wait until rising_edge(wb_clk_o);
            exit when wb_ack_i = '1';
            if (i = READ_TIMEOUT) then               
               report"Warning: No acknowledge recevied for read txintstat register!";
            end if;
         end loop;
      end if;
      read_data := tx_dat_i;      
      -- release bus
      wb_adr_o <= WEAK_BUS;
      wb_we_o  <= 'L';
      wb_cyc_o <= 'L';
      wb_stb_o <= 'L';
      wb_sel_o <= 'L';    
      if (read_data /= x"00000001") then
      	  report"Warning: read LSBF of txintstat register error!";
      end if;
      	      
------------------------- write txintstat register to clear transmitter LSBF interrupt
      wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(TX_INTSTAT, wb_adr_o'length));
         wb_dat_o <= x"00000001";
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write txintstat register";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';

----------------------"Wait for transmitter master HSBF interrupt"
     wait until tx_int_o='1';
-----------------------read txintsta register to check for transmitter HSBF interrupt
     wb_adr_o <= std_logic_vector(to_unsigned(TX_INTSTAT, wb_adr_o'length));
     wb_we_o  <= '0';
     wb_cyc_o <= '1'; 
     wb_stb_o <= '1';
     wb_sel_o <= '1';
     -- wait for acknowledge 
     wait until rising_edge(wb_clk_o);
     if wb_ack_i /= '1' then
         for i in 1 to READ_TIMEOUT loop
            wait until rising_edge(wb_clk_o);
            exit when wb_ack_i = '1';
            if (i = READ_TIMEOUT) then               
               report"Warning: No acknowledge recevied for read txintstat register!";
            end if;
         end loop;
      end if;
      read_data := tx_dat_i;      
      -- release bus
      wb_adr_o <= WEAK_BUS;
      wb_we_o  <= 'L';
      wb_cyc_o <= 'L';
      wb_stb_o <= 'L';
      wb_sel_o <= 'L';    
      if read_data /= x"00000002" then
      	  report"Warning: read HSBF of txintstat register error!";
      end if;
      	      
------------------------- write txintstat register to clear transmitter HSBF interrupt
      wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(TX_INTSTAT, wb_adr_o'length));
         wb_dat_o <= x"00000002";
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write txintstat register";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';  
            
---------------------write TXEN of configure register to bit 0 to stop the process of transmitter
      -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= TX_CONFIG;
         wb_dat_o <= std_logic_vector(to_unsigned(16#0000#, wb_dat_o'length));
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then
                  report"Warning: No acknowledge recevied for write configure register!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L'; 
         
         wait;
   end process MAIN_tx;
 end generate TRANSMITTER_main;
 
------------------------------------"*** Test of  master RX ***"-----------------   
RECEIVER_main : if IS_RECEIVER = 1 generate
   MAIN_rx : process
   variable read_data:std_logic_vector(DATA_WIDTH -1 downto 0);          
   begin      
      wb_rst_o <= '1';                  -- system reset
      wb_sel_o <= '0';
      wb_stb_o <= '0';
      wb_sel_o <= '0';
      wb_we_o  <= '0';
      wb_cyc_o <= '0';
      wb_bte_o <= "00";
      wb_cti_o <= "000";
      wb_adr_o <= (others => '0');
      wb_dat_o <= (others => '0');
      read_data:=(others => '0');
      wait for 200 ns;
      wb_rst_o <= '0';   
-----------write receiver configure register to enable recevier,
-----------enable interrupts,16bit resolution,left channel is stored on odd addresses    
     -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= RX_CONFIG;
         wb_dat_o <= std_logic_vector(to_unsigned(16#3a1f#, wb_dat_o'length));--0011101000011111
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then
                  report"Warning: No acknowledge recevied for write configure register!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';         
---------------------------"Wait for receiver master LSBF interrupt"
     wait until rx_int_o='1';
     -----------------------read rxintsta register to check for receiver LSBF interrupt
     wb_adr_o <= std_logic_vector(to_unsigned(RX_INTSTAT, wb_adr_o'length));
     wb_we_o  <= '0';
     wb_cyc_o <= '1'; 
     wb_stb_o <= '1';
     wb_sel_o <= '1';
     -- wait for acknowledge 
     wait until rising_edge(wb_clk_o);
     if wb_ack_i /= '1' then
         for i in 1 to READ_TIMEOUT loop
            wait until rising_edge(wb_clk_o);
            exit when wb_ack_i = '1';
            if (i = READ_TIMEOUT) then               
               report"Warning: No acknowledge recevied for read rxintstat register!";
            end if;
         end loop;
      end if;
      read_data := rx_dat_i;      
      -- release bus
      wb_adr_o <= WEAK_BUS;
      wb_we_o  <= 'L';
      wb_cyc_o <= 'L';
      wb_stb_o <= 'L';
      wb_sel_o <= 'L';    
      if (read_data /= x"00000001") then
      	  report"Warning: read LSBF of rxintstat register error!";
      end if;
      	      
------------------------- write rxintstat register to clear receiver LSBF interrupt
      wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(RX_INTSTAT, wb_adr_o'length));
         wb_dat_o <= x"00000001";
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write rxintstat register";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';

----------------------"Wait for receiver master HSBF interrupt"
     wait until rx_int_o='1';
-----------------------read rxintsta register to check for receiver HSBF interrupt
     wb_adr_o <= std_logic_vector(to_unsigned(RX_INTSTAT, wb_adr_o'length));
     wb_we_o  <= '0';
     wb_cyc_o <= '1'; 
     wb_stb_o <= '1';
     wb_sel_o <= '1';
     -- wait for acknowledge 
     wait until rising_edge(wb_clk_o);
     if wb_ack_i /= '1' then
         for i in 1 to READ_TIMEOUT loop
            wait until rising_edge(wb_clk_o);
            exit when wb_ack_i = '1';
            if (i = READ_TIMEOUT) then               
               report"Warning: No acknowledge recevied for read rxintstat register!";
            end if;
         end loop;
      end if;
      read_data := rx_dat_i;      
      -- release bus
      wb_adr_o <= WEAK_BUS;
      wb_we_o  <= 'L';
      wb_cyc_o <= 'L';
      wb_stb_o <= 'L';
      wb_sel_o <= 'L';    
      if read_data /= x"00000002" then
      	  report"Warning: read HSBF of rxintstat register error!";
      end if;
      	      
------------------------- write rxintstat register to clear receiver HSBF interrupt
      wait until rising_edge(wb_clk_o);         
         wb_adr_o <= std_logic_vector(to_unsigned(RX_INTSTAT, wb_adr_o'length));
         wb_dat_o <= x"00000002";
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then                  
                  report"Warning: No acknowledge recevied for write rxintstat register";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L';  
            
---------------------write RXEN of configure register to bit 0 to stop the process of receiver
      -- start cycle on positive edge
         wait until rising_edge(wb_clk_o);         
         wb_adr_o <= RX_CONFIG;
         wb_dat_o <= std_logic_vector(to_unsigned(16#0000#, wb_dat_o'length));
         wb_we_o  <= '1';
         wb_cyc_o <= '1';
         wb_stb_o <= '1';
         wb_sel_o <= '1';
         -- wait for acknowledge
         wait until rising_edge(wb_clk_o);
         if wb_ack_i /= '1' then
            for i in 1 to WRITE_TIMEOUT loop
               wait until rising_edge(wb_clk_o);
               exit when wb_ack_i = '1';
               if (i = WRITE_TIMEOUT) then
                  report"Warning: No acknowledge recevied for write configure register!";
               end if;
            end loop;
         end if;
         -- release bus
         wb_adr_o <= WEAK_BUS;
         wb_dat_o <= LOW_BUS;
         wb_we_o  <= 'L';
         wb_cyc_o <= 'L';
         wb_stb_o <= 'L';
         wb_sel_o <= 'L'; 
     
      wait;
   end process MAIN_rx;

-----generate sending to receiver data
  process (wb_clk_o) begin
    if rising_edge(wb_clk_o) then   
       i2s_ws_rx_del<=i2s_ws_rx;
    end if;
  end process;
  
  process (wb_clk_o,wb_rst_o) 
  	variable i:integer;
  begin
  	if wb_rst_o = '1' then
         send_to_rx_left<=(others=>'0');
         i:=0;
    elsif rising_edge(wb_clk_o) then 
    	if (i2s_ws_rx='0' and i2s_ws_rx_del='1') then----neg of i2s_ws_rx
    	   send_to_rx_left<=std_logic_vector(to_unsigned((32768 + i*497)*256, wb_dat_o'length));
    	   i:=i+1;
      end if;
    end if;
  end process;
  
   process (wb_clk_o,wb_rst_o) 
   	variable i:integer;
   begin
  	if wb_rst_o = '1' then
         send_to_rx_right<=(others=>'0');
         i:=0;
    elsif rising_edge(wb_clk_o) then 
    	if (i2s_ws_rx='1' and i2s_ws_rx_del='0') then----pos of i2s_ws_rx
    	   send_to_rx_right<=std_logic_vector(to_unsigned((32767 - i*497)*256, wb_dat_o'length));
    	   i:=i+1;
      end if;
    end if;
  end process;
  
  process (i2s_sck_rx,wb_rst_o) 
  	--variable i,ii:integer;
  begin
    if wb_rst_o = '1' then
      i2s_sd_rx<='0';
      --i:=31;
      --ii:=31;
      i<=15;
      ii<=15;
    elsif falling_edge(i2s_sck_rx) then
    	 if (i2s_ws_rx='1') then
    	 	 i2s_sd_rx<=send_to_rx_left(i);
    	 	 --i:=i-1;
    	 	 i<=i-1;
    	 	 if i=0 then
    	 	 	 --i:=31;
    	 	 	 i<=15;
    	 	 end if;
    	 elsif (i2s_ws_rx='0') then
    	 	 i2s_sd_rx<=send_to_rx_right(ii);
    	 	 --ii:=ii-1;
    	 	 ii<=ii-1;
    	 	 if ii=0 then
    	 	 	 --ii:=31;
    	 	 	 ii<=15;
    	 	 end if;
    	 end if;
    end if;
  end process;
end generate RECEIVER_main;  
  
end behav;



