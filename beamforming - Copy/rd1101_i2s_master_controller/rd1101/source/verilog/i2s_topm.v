//----------------------------------------------------------------------
//-- >>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<
//----------------------------------------------------------------------
//----                                                              ----
//---- WISHBONE SPDIF IP Core                                       ----
//----                                                              ----
//---- This file is part of the SPDIF project                       ----
//---- http://www.opencores.org/cores/spdif_interface/              ----
//----                                                              ----
//---- Description                                                  ----
//---- Generic event register.                                      ----
//----                                                              ----
//----                                                              ----
//---- To Do:                                                       ----
//---- -                                                            ----
//----                                                              ----
//---- Author(s):                                                   ----
//---- - Geir Drange, gedra@opencores.org                           ----
//----                                                              ----
//----------------------------------------------------------------------
//----                                                              ----
//---- Copyright (C) 2004 Authors and OPENCORES.ORG                 ----
//----                                                              ----
//---- This source file may be used and distributed without         ----
//---- restriction provided that this copyright statement is not    ----
//---- removed from the file and that any derivative work contains  ----
//---- the original copyright notice and the associated disclaimer. ----
//----                                                              ----
//---- This source file is free software; you can redistribute it   ----
//---- and/or modify it under the terms of the GNU Lesser General   ----
//---- Public License as published by the Free Software Foundation; ----
//---- either version 2.1 of the License, or (at your option) any   ----
//---- later version.                                               ----
//----                                                              ----
//---- This source is distributed in the hope that it will be       ----
//---- useful, but WITHOUT ANY WARRANTY; without even the implied   ----
//---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ----
//---- PURPOSE. See the GNU Lesser General Public License for more  ----
//---- details.                                                     ----
//----                                                              ----
//---- You should have received a copy of the GNU Lesser General    ----
//---- Public License along with this source; if not, download it   ----
//---- from http://www.opencores.org/lgpl.shtml                     ----
//----                                                              ----
//----------------------------------------------------------------------
//--
//   Copyright (c) 2013 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED 
//   ------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement. 
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
//   --------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02 
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
//   --------------------------------------------------------------------
//
//-- CVS Revision History
//--
//-- $Log: RD#RD1101#source#verilog#i2s_topm.v,v $
//-- Revision 1.1  2013-07-04 19:38:23-07  lsccad
//-- ...No comments entered during checkin...
//--
//-- Revision 1.6  2007/10/11 19:14:43  gedra
//-- Code beautification
//--
//-- Revision 1.5  2004/07/12 17:06:41  gedra
//-- Fixed bug with lock event generation.
//--
//-- Revision 1.4  2004/07/11 16:19:50  gedra
//-- Bug-fix.
//--
//-- Revision 1.3  2004/06/06 15:42:20  gedra
//-- Cleaned up lint warnings.
//--
//-- Revision 1.2  2004/06/04 15:55:07  gedra
//-- Cleaned up lint warnings.
//--
//-- Revision 1.1  2004/06/03 17:49:26  gedra
//-- Generic event register. Used in both receiver and transmitter.
//--
//---------------------------------------------------------------------------
//-- Code Revision History (LSC) :
//---------------------------------------------------------------------------
//-- Ver: | Author	|Mod. Date	|Changes Made:
//-- V1.0 | JT		  |9/2010     || Initial ver for verilog                      
//---------------------------------------------------------------------------

`timescale 1ns / 10ps

module i2s_topm	#( 
                   parameter  DATA_WIDTH=16,          
                   parameter  ADDR_WIDTH=6,
                   parameter  IS_RECEIVER=1
                 )
                 ( wb_clk_i,wb_rst_i,wb_sel_i,wb_stb_i,wb_we_i,   
                  wb_cyc_i,wb_bte_i,wb_cti_i,wb_adr_i,wb_dat_i,i2s_sd_i,
                  wb_ack_o,wb_dat_o,rx_int_o,i2s_sck_o,i2s_ws_o,tx_int_o,
                  i2s_sd_o);


 
 input wb_clk_i;
 input wb_rst_i;
 input wb_sel_i;
 input wb_stb_i;
 input wb_we_i ;
 input wb_cyc_i;
 input [1:0 ]wb_bte_i;
 input [2:0] wb_cti_i;
 input [ADDR_WIDTH - 1:0] wb_adr_i;
 input [DATA_WIDTH -1 :0] wb_dat_i;
 input i2s_sd_i;        // I2S data input for receiver
 output wb_ack_o;
 output [DATA_WIDTH - 1:0] wb_dat_o;
 output rx_int_o ;     //   -- Interrupt line for receiver
 output i2s_sck_o;     //   -- I2S clock out
 output i2s_ws_o ;     //  -- I2S word select out
 output tx_int_o ;     //  -- Interrupt line for transmitter
 output i2s_sd_o ;     // -- I2S data output for transmitter
 
  wire[DATA_WIDTH - 1 : 0] data_out;
  wire config_rd, config_wr;
  wire[DATA_WIDTH - 1 : 0] config_dout;
  wire[DATA_WIDTH - 1 : 0] config_bits;
  wire[DATA_WIDTH - 1 : 0] intmask_bits;
  wire[DATA_WIDTH - 1 : 0] intstat_events;
  wire[DATA_WIDTH - 1 : 0] intstat_dout;
  wire intstat_rd, intstat_wr;
  wire evt_hsbf, evt_lsbf;
  wire mem_wr_receiver, mem_rd_receiver;
  wire[ADDR_WIDTH - 2 : 0] sbuf_rd_adr, sbuf_wr_adr;
  wire[DATA_WIDTH - 1 : 0] sbuf_dout, sbuf_din, zeros;
  wire[5 : 0] conf_res;
  wire[4 : 0] conf_ratio;
  wire conf_swap, conf_inten, conf_en;
  
  wire[ADDR_WIDTH - 2 : 0] sample_addr;
  wire[DATA_WIDTH - 1 : 0] sample_data;
  wire zero;
  wire mem_wr_transmitter, mem_rd_transmitter;
  
  generate 
  if (IS_RECEIVER==1)
    assign data_out = (wb_adr_i[ADDR_WIDTH - 1] == 1'b0)? (config_dout | intstat_dout):sbuf_dout;
  else                                       
    assign data_out = (wb_adr_i[ADDR_WIDTH - 1] == 1'b0)? (config_dout | intstat_dout):0;    
  endgenerate  
          
   generate 
   if (IS_RECEIVER==1)
      rx_i2s_wbd #(
          .DATA_WIDTH(DATA_WIDTH),
          .ADDR_WIDTH(ADDR_WIDTH)
      )
       RECEIVER_WB 
       (               
         .wb_clk_i(wb_clk_i),
         .wb_rst_i(wb_rst_i),
         .wb_sel_i(wb_sel_i),
         .wb_stb_i(wb_stb_i),
         .wb_we_i (wb_we_i),
         .wb_cyc_i(wb_cyc_i),
         .wb_bte_i(wb_bte_i),
         .wb_cti_i(wb_cti_i),
         .wb_adr_i(wb_adr_i),
         .data_out(data_out),
         .wb_ack_o(wb_ack_o),
         .wb_dat_o(wb_dat_o),
         .config_rd(config_rd),
         .config_wr(config_wr),         
         .intstat_rd(intstat_rd),
         .intstat_wr(intstat_wr),
         .mem_rd(mem_rd_receiver),
         .mem_addr(sbuf_rd_adr)
       );
   else
     tx_i2s_wbd #(
          .DATA_WIDTH(DATA_WIDTH),
          .ADDR_WIDTH(ADDR_WIDTH)
      )
     TRANSMITTER_WB( 
         .wb_clk_i(wb_clk_i),
         .wb_rst_i(wb_rst_i),
         .wb_sel_i(wb_sel_i),
         .wb_stb_i(wb_stb_i),
         .wb_we_i (wb_we_i),
         .wb_cyc_i(wb_cyc_i),
         .wb_bte_i(wb_bte_i),
         .wb_cti_i(wb_cti_i),
         .wb_adr_i(wb_adr_i),
         .data_out(data_out),
         .wb_ack_o(wb_ack_o),
         .wb_dat_o(wb_dat_o),
         .config_rd (config_rd),
         .config_wr (config_wr),         
         .intstat_rd(intstat_rd),
         .intstat_wr(intstat_wr),
         .mem_wr(mem_wr_transmitter)
      );
   endgenerate      
   
//-- TxConfig - Configuration register

gen_control_reg #(
      .DATA_WIDTH(DATA_WIDTH) 
   )          
   CONF
   (
      .clk      (wb_clk_i),
      .rst      (wb_rst_i),
      .ctrl_wr  (config_wr),
      .ctrl_rd  (config_rd),
      .ctrl_din (wb_dat_i),
      .ctrl_dout(config_dout),
      .ctrl_bits(config_bits)
   );
      
 assign conf_res = config_bits[10:5];
 assign conf_ratio = config_bits[15:11];
 assign conf_swap  = config_bits[2];
 assign conf_inten = config_bits[1];
 assign conf_en    = config_bits[0];
 assign intmask_bits[0]= config_bits[3]; 
 assign intmask_bits[1]= config_bits[4];  
 assign intmask_bits[DATA_WIDTH - 1 : 2] = 0;      
   
    generate 
    if (IS_RECEIVER==1)
     gen_event_reg #(
       .DATA_WIDTH(DATA_WIDTH)
     )
     RECEIVER_ISTAT(
         .clk      (wb_clk_i),
         .rst      (wb_rst_i),
         .evt_wr   (intstat_wr),
         .evt_rd   (intstat_rd),
         .evt_din  (wb_dat_i),
         .evt_dout (intstat_dout),
         .event_hap(intstat_events),
         .evt_mask (intmask_bits),
         .evt_en   (conf_inten),
         .evt_irq  (rx_int_o)
    );    
   else
      gen_event_reg#(
        .DATA_WIDTH(DATA_WIDTH)
     )
     TRANSMITTER_ISTAT(
         .clk     (wb_clk_i),
         .rst     (wb_rst_i),
         .evt_wr  (intstat_wr),
         .evt_rd  (intstat_rd),
         .evt_din (wb_dat_i),
         .evt_dout(intstat_dout),
         .event_hap(intstat_events),
         .evt_mask(intmask_bits),
         .evt_en  (conf_inten),
         .evt_irq (tx_int_o)
      );
   endgenerate     
   
   assign intstat_events[0]= evt_lsbf;  //-- lower sample buffer empty
   assign intstat_events[1]= evt_hsbf;  //-- higher sampel buffer empty
   assign intstat_events[DATA_WIDTH - 1 : 2] = 0;   
   
    generate 
    if (IS_RECEIVER==1)
      dpram #(
         .DATA_WIDTH(DATA_WIDTH),
         .RAM_WIDTH (ADDR_WIDTH - 1)
      )
      RECEIVER_MEM(
         .clk     (wb_clk_i),
         .rst     (wb_rst_i),
         .din     (sbuf_din),
         .wr_en   (mem_wr_receiver),
         .rd_en   (mem_rd_receiver),
         .wr_addr (sbuf_wr_adr),
         .rd_addr (sbuf_rd_adr),
         .dout    (sbuf_dout)
      );
   else
      dpram #(
         .DATA_WIDTH(DATA_WIDTH),
         .RAM_WIDTH (ADDR_WIDTH - 1)
      )
      TRANSMITTER_MEM(
         .clk    (wb_clk_i),
         .rst    (wb_rst_i),
         .din    (wb_dat_i[DATA_WIDTH - 1 : 0]),
         .wr_en  (mem_wr_transmitter),
         .rd_en  (mem_rd_transmitter),
         .wr_addr(wb_adr_i[ADDR_WIDTH - 2 : 0]),
         .rd_addr(sample_addr),
         .dout   (sample_data)
      );
   endgenerate        
   
assign zero=0;
assign zeros=0;   
   
    generate 
   if (IS_RECEIVER==1)
     i2s_codec #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .IS_RECEIVER(1)
     )
     RECEIVER_DEC(
         .wb_clk_i     (wb_clk_i),
         .conf_res     (conf_res),
         .conf_ratio   (conf_ratio),
         .conf_swap    (conf_swap),
         .conf_en      (conf_en),
         .i2s_sd_i     (i2s_sd_i),         
         .sample_dat_i (zeros),
         .sample_dat_o (sbuf_din),
         .mem_rdwr     (mem_wr_receiver),
         .sample_addr  (sbuf_wr_adr),
         .evt_hsbf     (evt_hsbf),
         .evt_lsbf     (evt_lsbf),
         .i2s_sd_o     (),
         .i2s_sck_o    (i2s_sck_o),
         .i2s_ws_o     (i2s_ws_o)
    );   
   else
     i2s_codec #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .IS_RECEIVER(0)
     )
     TRANSMITTER_DEC(
         .wb_clk_i     (wb_clk_i),
         .conf_res     (conf_res),
         .conf_ratio   (conf_ratio),
         .conf_swap    (conf_swap),
         .conf_en      (conf_en),
         .i2s_sd_i     (zero),         
         .sample_dat_i (sample_data),
         .sample_dat_o (),
         .mem_rdwr     (mem_rd_transmitter),
         .sample_addr  (sample_addr),
         .evt_hsbf     (evt_hsbf),
         .evt_lsbf     (evt_lsbf),
         .i2s_sd_o     (i2s_sd_o),
         .i2s_sck_o    (i2s_sck_o),
         .i2s_ws_o     (i2s_ws_o)
     ); 
   endgenerate        
endmodule    