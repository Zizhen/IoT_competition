----------------------------------------------------------------------
----                                                              ----
---- WISHBONE I2S Interface IP Core                               ----
----                                                              ----
---- This file is part of the I2S Interface project               ----
---- http://www.opencores.org/cores/i2s_interface/                ----
----                                                              ----
---- Description                                                  ----
---- I2S receiver. Top level entity for the receiver core,        ----
---- master mode.                                                 ----
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
-- $Log: RD#RD1101#source#vhdl#i2s_topm.vhd,v $
-- Revision 1.1  2013-07-04 19:38:03-07  lsccad
-- ...No comments entered during checkin...
--
-- Revision 1.3  2007/10/09 20:07:11  gedra
-- Code beutification.
--
-- Revision 1.2  2004/08/06 18:55:43  gedra
-- De-linting.
--
-- Revision 1.1  2004/08/04 14:29:34  gedra
-- Receiver top level, master mode.
--
---------------------------------------------------------------------------
-- Code Revision History (LSC) :
---------------------------------------------------------------------------
-- Ver: | Author	|Mod. Date	|Changes Made:
-- V1.0 | JT		  |9/2010                         
---------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity i2s_topm is
   generic (DATA_WIDTH : integer:=16;
            ADDR_WIDTH : integer:=6;
            IS_RECEIVER : integer:=1);
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
end i2s_topm;                   

architecture rtl of i2s_topm is
	
	 component gen_control_reg
   generic (DATA_WIDTH      : integer); 
   port (
         clk       : in  std_logic;     -- clock  
         rst       : in  std_logic;     -- reset
         ctrl_wr   : in  std_logic;     -- control register write       
         ctrl_rd   : in  std_logic;     -- control register read
         ctrl_din  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
         ctrl_dout : out std_logic_vector(DATA_WIDTH - 1 downto 0);
         ctrl_bits : out std_logic_vector(DATA_WIDTH - 1 downto 0)); 
   end component;

   component gen_event_reg
      generic (DATA_WIDTH : integer);
      port (
         clk      : in  std_logic;      -- clock  
         rst      : in  std_logic;      -- reset
         evt_wr   : in  std_logic;      -- event register write  
         evt_rd   : in  std_logic;      -- event register read
         evt_din  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- write data
         event_hap: in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- event vector
         evt_mask : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- irq mask
         evt_en   : in  std_logic;      -- irq enable
         evt_dout : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- read data
         evt_irq  : out std_logic);     -- interrupt  request
   end component;

   component dpram
      generic (DATA_WIDTH : positive;
               RAM_WIDTH  : positive);
      port (
         clk     : in  std_logic;
         rst     : in  std_logic;       -- reset is optional, not used here
         din     : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
         wr_en   : in  std_logic;
         rd_en   : in  std_logic;
         wr_addr : in  std_logic_vector(RAM_WIDTH - 1 downto 0);
         rd_addr : in  std_logic_vector(RAM_WIDTH - 1 downto 0);
         dout    : out std_logic_vector(DATA_WIDTH - 1 downto 0));
   end component;
   
   component rx_i2s_wbd
   generic (DATA_WIDTH : integer;
            ADDR_WIDTH : integer);
   port (
         wb_clk_i   : in  std_logic;    -- wishbone clock
         wb_rst_i   : in  std_logic;    -- reset signal
         wb_sel_i   : in  std_logic;    -- select input
         wb_stb_i   : in  std_logic;    -- strobe input
         wb_we_i    : in  std_logic;    -- write enable
         wb_cyc_i   : in  std_logic;    -- cycle input
         wb_bte_i   : in  std_logic_vector(1 downto 0);  -- burts type extension
         wb_cti_i   : in  std_logic_vector(2 downto 0);  -- cycle type identifier
         wb_adr_i   : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);  -- address
         data_out   : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- internal bus
         wb_ack_o   : out std_logic;    -- acknowledge
         wb_dat_o   : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- data out         
         config_rd  : out std_logic;    -- Config register read
         config_wr  : out std_logic;    -- Config register write         
         intstat_rd : out std_logic;    -- Interrupt status register read
         intstat_wr : out std_logic;    -- Interrupt status register read
         mem_rd     : out std_logic;    -- Sample memory write
         mem_addr   : out std_logic_vector(ADDR_WIDTH - 2 downto 0));  -- memory addr.
   end component;

   component i2s_codec
      generic (DATA_WIDTH  : integer;
               ADDR_WIDTH  : integer;               
               IS_RECEIVER : integer range 0 to 1);
      port (
         wb_clk_i     : in  std_logic;  -- wishbone clock
         conf_res     : in  std_logic_vector(5 downto 0);  -- sample resolution
         conf_ratio   : in  std_logic_vector(4 downto 0);  -- clock divider ratio
         conf_swap    : in  std_logic;  -- left/right sample order
         conf_en      : in  std_logic;  -- transmitter/recevier enable
         i2s_sd_i     : in  std_logic;  -- I2S serial data input         
         sample_dat_i : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- audio data
         sample_dat_o : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- audio data
         mem_rdwr     : out std_logic;  -- sample buffer read/write
         sample_addr  : out std_logic_vector(ADDR_WIDTH - 2 downto 0);  -- address
         evt_hsbf     : out std_logic;  -- higher sample buf empty event
         evt_lsbf     : out std_logic;  -- lower sample buf empty event
         i2s_sd_o     : out std_logic;  -- I2S serial data output
         i2s_sck_o    : out std_logic;  -- I2S clock output
         i2s_ws_o     : out std_logic);  -- I2S word select output
   end component;
   
   
   
   component tx_i2s_wbd
   generic (DATA_WIDTH : integer;
            ADDR_WIDTH : integer);
   port (
         wb_clk_i   : in  std_logic;    -- wishbone clock
         wb_rst_i   : in  std_logic;    -- reset signal
         wb_sel_i   : in  std_logic;    -- select input
         wb_stb_i   : in  std_logic;    -- strobe input
         wb_we_i    : in  std_logic;    -- write enable
         wb_cyc_i   : in  std_logic;    -- cycle input
         wb_bte_i   : in  std_logic_vector(1 downto 0);  -- burts type extension
         wb_cti_i   : in  std_logic_vector(2 downto 0);  -- cycle type identifier
         wb_adr_i   : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);  -- address
         data_out   : in  std_logic_vector(DATA_WIDTH - 1 downto 0);  -- internal bus
         wb_ack_o   : out std_logic;    -- acknowledge
         wb_dat_o   : out std_logic_vector(DATA_WIDTH - 1 downto 0);  -- data out         
         config_rd  : out std_logic;    -- Config register read
         config_wr  : out std_logic;    -- Config register write         
         intstat_rd : out std_logic;    -- Interrupt status register read
         intstat_wr : out std_logic;    -- Interrupt status register read
         mem_wr     : out std_logic);   -- Sample memory write
   end component;

   signal data_out             : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal config_rd, config_wr    : std_logic;
   signal config_dout           : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal config_bits                        : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal intmask_bits         : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal intstat_events                     : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal intstat_dout                       : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal intstat_rd, intstat_wr             : std_logic;
   signal evt_hsbf, evt_lsbf                 : std_logic;
   signal mem_wr_receiver, mem_rd_receiver                     : std_logic;
   signal sbuf_rd_adr, sbuf_wr_adr           : std_logic_vector(ADDR_WIDTH - 2 downto 0);
   signal sbuf_dout, sbuf_din, zeros         : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal conf_res                           : std_logic_vector(5 downto 0);
   signal conf_ratio                         : std_logic_vector(4 downto 0);
   signal conf_swap, conf_inten, conf_en : std_logic;
   
   signal sample_addr                        : std_logic_vector(ADDR_WIDTH - 2 downto 0);
   signal sample_data                        : std_logic_vector(DATA_WIDTH - 1 downto 0);
   signal zero                               : std_logic;
   signal mem_wr_transmitter, mem_rd_transmitter                     : std_logic;

   
begin

-- Data bus or'ing
RECEIVER_DATA_BUF : if IS_RECEIVER = 1 generate 
   data_out <= config_dout or intstat_dout
               when wb_adr_i(ADDR_WIDTH - 1) = '0' else sbuf_dout;
end generate RECEIVER_DATA_BUF;               

TRANSMITTER_DATA_BUF : if IS_RECEIVER = 0 generate                
   data_out <= config_dout or intstat_dout                
                  when wb_adr_i(ADDR_WIDTH - 1) = '0' else (others => '0');
end generate TRANSMITTER_DATA_BUF;                   
                  
-- Wishbone bus cycle decoder for receiver
RECEIVER_WB : if IS_RECEIVER = 1 generate
   WB : rx_i2s_wbd
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         ADDR_WIDTH => ADDR_WIDTH)
      port map (
         wb_clk_i   => wb_clk_i,
         wb_rst_i   => wb_rst_i,
         wb_sel_i   => wb_sel_i,
         wb_stb_i   => wb_stb_i,
         wb_we_i    => wb_we_i,
         wb_cyc_i   => wb_cyc_i,
         wb_bte_i   => wb_bte_i,
         wb_cti_i   => wb_cti_i,
         wb_adr_i   => wb_adr_i,
         data_out   => data_out,
         wb_ack_o   => wb_ack_o,
         wb_dat_o   => wb_dat_o,
         config_rd  => config_rd,
         config_wr  => config_wr,         
         intstat_rd => intstat_rd,
         intstat_wr => intstat_wr,
         mem_rd     => mem_rd_receiver,
         mem_addr   => sbuf_rd_adr);
end generate RECEIVER_WB;

-- Wishbone bus cycle decoder for transmitter
TRANSMITTER_WB : if IS_RECEIVER = 0 generate
WB : tx_i2s_wbd
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         ADDR_WIDTH => ADDR_WIDTH)
      port map (
         wb_clk_i   => wb_clk_i,
         wb_rst_i   => wb_rst_i,
         wb_sel_i   => wb_sel_i,
         wb_stb_i   => wb_stb_i,
         wb_we_i    => wb_we_i,
         wb_cyc_i   => wb_cyc_i,
         wb_bte_i   => wb_bte_i,
         wb_cti_i   => wb_cti_i,
         wb_adr_i   => wb_adr_i,
         data_out   => data_out,
         wb_ack_o   => wb_ack_o,
         wb_dat_o   => wb_dat_o,
         config_rd  => config_rd,
         config_wr  => config_wr,         
         intstat_rd => intstat_rd,
         intstat_wr => intstat_wr,
         mem_wr     => mem_wr_transmitter);
end generate TRANSMITTER_WB;


-- TxConfig - Configuration register

CONF : gen_control_reg
   generic map (
      DATA_WIDTH      => DATA_WIDTH)           
   port map (
      clk       => wb_clk_i,
      rst       => wb_rst_i,
      ctrl_wr   => config_wr,
      ctrl_rd   => config_rd,
      ctrl_din  => wb_dat_i,
      ctrl_dout => config_dout,
      ctrl_bits => config_bits);
      
 conf_res <= config_bits(10 downto 5);
 conf_ratio <= config_bits(15 downto 11);
 conf_swap             <= config_bits(2);
 conf_inten            <= config_bits(1);
 conf_en              <= config_bits(0);
 intmask_bits(0)                       <= config_bits(3); 
 intmask_bits(1)                       <= config_bits(4);  
 intmask_bits(DATA_WIDTH - 1 downto 2) <= (others => '0');


-- TxIntStat - interrupt status register for receiver
RECEIVER_ISTAT : if IS_RECEIVER = 1 generate
   ISTAT : gen_event_reg
      generic map (
         DATA_WIDTH => DATA_WIDTH)
      port map (
         clk      => wb_clk_i,
         rst      => wb_rst_i,
         evt_wr   => intstat_wr,
         evt_rd   => intstat_rd,
         evt_din  => wb_dat_i,
         evt_dout => intstat_dout,
         event_hap=> intstat_events,
         evt_mask => intmask_bits,
         evt_en   => conf_inten,
         evt_irq  => rx_int_o);
end generate RECEIVER_ISTAT;  

-- TxIntStat - interrupt status register for transmitter
TRANSMITTER_ISTAT : if IS_RECEIVER = 0 generate
   ISTAT : gen_event_reg
      generic map (
         DATA_WIDTH => DATA_WIDTH)
      port map (
         clk      => wb_clk_i,
         rst      => wb_rst_i,
         evt_wr   => intstat_wr,
         evt_rd   => intstat_rd,
         evt_din  => wb_dat_i,
         evt_dout => intstat_dout,
         event_hap=> intstat_events,
         evt_mask => intmask_bits,
         evt_en   => conf_inten,
         evt_irq  => tx_int_o);
end generate TRANSMITTER_ISTAT;  

       
   intstat_events(0)                       <= evt_lsbf;  -- lower sample buffer empty
   intstat_events(1)                       <= evt_hsbf;  -- higher sampel buffer empty
   intstat_events(DATA_WIDTH - 1 downto 2) <= (others => '0');

-- Sample buffer memory for receiver
RECEIVER_MEM : if IS_RECEIVER = 1 generate
   MEM : dpram
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         RAM_WIDTH  => ADDR_WIDTH - 1)
      port map (
         clk     => wb_clk_i,
         rst     => wb_rst_i,
         din     => sbuf_din,
         wr_en   => mem_wr_receiver,
         rd_en   => mem_rd_receiver,
         wr_addr => sbuf_wr_adr,
         rd_addr => sbuf_rd_adr,
         dout    => sbuf_dout);
end generate RECEIVER_MEM;         

-- Sample buffer memory for transmitter
TRANSMITTER_MEM : if IS_RECEIVER = 0 generate
   MEM : dpram
      generic map (
         DATA_WIDTH => DATA_WIDTH,
         RAM_WIDTH  => ADDR_WIDTH - 1)
      port map (
         clk     => wb_clk_i,
         rst     => wb_rst_i,
         din     => wb_dat_i(DATA_WIDTH - 1 downto 0),
         wr_en   => mem_wr_transmitter,
         rd_en   => mem_rd_transmitter,
         wr_addr => wb_adr_i(ADDR_WIDTH - 2 downto 0),
         rd_addr => sample_addr,
         dout    => sample_data);
end generate TRANSMITTER_MEM;         


   zero <= '0';
   zeros <= (others => '0');
-- Receive decoder
RECEIVER_DEC : if IS_RECEIVER = 1 generate
   DEC : i2s_codec
      generic map (DATA_WIDTH  => DATA_WIDTH,
                   ADDR_WIDTH  => ADDR_WIDTH,
                   IS_RECEIVER => IS_RECEIVER)
      port map (
         wb_clk_i     => wb_clk_i,
         conf_res     => conf_res,
         conf_ratio   => conf_ratio,
         conf_swap    => conf_swap,
         conf_en      => conf_en,
         i2s_sd_i     => i2s_sd_i,         
         sample_dat_i => zeros,
         sample_dat_o => sbuf_din,
         mem_rdwr     => mem_wr_receiver,
         sample_addr  => sbuf_wr_adr,
         evt_hsbf     => evt_hsbf,
         evt_lsbf     => evt_lsbf,
         i2s_sd_o     => open,
         i2s_sck_o    => i2s_sck_o,
         i2s_ws_o     => i2s_ws_o);   
end generate RECEIVER_DEC;      
    
-- Transmitter decoder
TRANSMITTER_DEC : if IS_RECEIVER = 0 generate
   DEC : i2s_codec
      generic map (DATA_WIDTH  => DATA_WIDTH,
                   ADDR_WIDTH  => ADDR_WIDTH,
                   IS_RECEIVER => IS_RECEIVER)
      port map (
         wb_clk_i     => wb_clk_i,
         conf_res     => conf_res,
         conf_ratio   => conf_ratio,
         conf_swap    => conf_swap,
         conf_en      => conf_en,
         i2s_sd_i     => zero,         
         sample_dat_i => sample_data,
         sample_dat_o => open,
         mem_rdwr     => mem_rd_transmitter,
         sample_addr  => sample_addr,
         evt_hsbf     => evt_hsbf,
         evt_lsbf     => evt_lsbf,
         i2s_sd_o     => i2s_sd_o,
         i2s_sck_o    => i2s_sck_o,
         i2s_ws_o     => i2s_ws_o);            
end generate TRANSMITTER_DEC; 
end rtl;

