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
//-- $Log: RD#RD1101#source#verilog#i2s_codec.v,v $
//-- Revision 1.1  2013-07-04 19:38:26-07  lsccad
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

module i2s_codec #(
   parameter DATA_WIDTH  = 16,
   parameter ADDR_WIDTH  = 6,
   parameter IS_RECEIVER = 0)
   (
      wb_clk_i    ,
      conf_res    ,
      conf_ratio  ,
      conf_swap   ,
      conf_en     ,
      i2s_sd_i    ,
      sample_dat_i,
      sample_dat_o,
      mem_rdwr    ,
      sample_addr ,
      evt_hsbf    ,
      evt_lsbf    ,
      i2s_sd_o    ,
      i2s_sck_o   ,
      i2s_ws_o    
   );      

input wb_clk_i;     //-- wishbone clock
input[5:0] conf_res;  //-- sample resolution
input[4:0] conf_ratio;  //-- clock divider ratio
input conf_swap;     //-- left/right sample order
input conf_en  ;     //-- transmitter/recevier enable
input i2s_sd_i ;     //-- I2S serial data input         
input[DATA_WIDTH - 1 : 0] sample_dat_i;  //-- audio data
output[DATA_WIDTH - 1 : 0] sample_dat_o;  //-- audio data
output mem_rdwr;     //-- sample buffer read/write
output[ADDR_WIDTH - 2 : 0] sample_addr;  //-- address
output evt_hsbf ;     //-- higher sample buf empty or full event
output evt_lsbf ;     //-- lower sample buf empty or full event
output i2s_sd_o ;     //-- I2S serial data output
output i2s_sck_o;     //-- I2S clock output
output i2s_ws_o;    //-- I2S word select output

parameter IDLE=0;
parameter WAIT_CLK=1;
parameter TRX_DATA=2;
parameter RX_WRITE=3;
parameter SYNC=4;

reg[8:0] temp_data=2**(ADDR_WIDTH-1);
   

 reg i2s_clk_en;
 reg [4:0] clk_cnt;
 reg [7:0] adr_cnt;// integer range 0 to 2**(ADDR_WIDTH - 1) - 1; so the max value of ADDR_WIDTH is 9
 reg [4:0] sd_ctrl;
 reg[5:0] bit_cnt, bits_to_trx; //integer range 0 to 63;
 reg toggle,neg_edge, ws_pos_edge,ws_neg_edge;
 reg[DATA_WIDTH - 1 : 0] data_in;// (DATA_WIDTH - 1 downto 0);
 reg i2s_ws, new_word;
 reg imem_rdwr;
 wire receiver;
 reg[4:0] ws_cnt; // integer range 0 to 31;
 
 reg i2s_sd_o,evt_lsbf,evt_hsbf;
   
assign receiver = (IS_RECEIVER==1)?1'b1:1'b0;

//-- I2S clock enable generation, master mode. The clock is a fraction of the
//-- Wishbone bus clock, determined by the conf_ratio value.

always@(posedge wb_clk_i)
            if (conf_en ==1'b0) begin       //-- disabled
               i2s_clk_en <= 1'b0;
               clk_cnt    <= 0;
               neg_edge   <= 1'b0;
               toggle     <= 1'b0;
            end else begin                   //  -- enabled
               if (clk_cnt < (conf_ratio + 1)) begin
                  clk_cnt    <= (clk_cnt + 1) % 32;
                  i2s_clk_en <= 1'b0;
               end else begin
                  clk_cnt    <= 0;
                  i2s_clk_en <= 1'b1;
                  neg_edge   <= !neg_edge;
               end
               toggle <= neg_edge;
            end


//-- Process to generate word select signal, master mode
assign  i2s_ws_o = i2s_ws;
always@ (posedge wb_clk_i)
            if (conf_en == 1'b0) begin
               i2s_ws      <= 1'b0;
               ws_cnt      <= 0;
               ws_pos_edge <= 1'b0;
               ws_neg_edge <= 1'b0;
            end else begin
               if ((i2s_clk_en == 1'b1) && (toggle == 1'b1)) begin
                  if (ws_cnt < bits_to_trx) begin
                     ws_cnt <= ws_cnt + 1;
                  end else begin
                     i2s_ws <= !i2s_ws;
                     ws_cnt <= 0;
                     if (i2s_ws == 1'b1) begin
                        ws_neg_edge <= 1'b1;
                     end else begin
                        ws_pos_edge <= 1'b1;
                     end
                  end
               end else begin
                  ws_pos_edge <= 1'b0;
                  ws_neg_edge <= 1'b0;
               end
            end

//-- Logic to generate clock signal, master mode
assign i2s_sck_o = toggle;

//-- Process to receive data on i2s_sd_i, or transmit data on i2s_sd_o
assign  sample_addr  = adr_cnt[ADDR_WIDTH - 2:0];
assign  mem_rdwr     = imem_rdwr;
assign  sample_dat_o = data_in;

always@(posedge wb_clk_i)
         if (conf_en == 1'b0) begin          //-- codec disabled
            imem_rdwr   <= 1'b0;
            sd_ctrl     <= IDLE;
            data_in     <= 0;
            bit_cnt     <= 0;
            bits_to_trx <= 0;
            new_word    <= 1'b0;
            adr_cnt     <= 0;
            evt_lsbf    <= 1'b0;
            evt_hsbf    <= 1'b0;
            i2s_sd_o    <= 1'b0;
         end else begin
            case (sd_ctrl)
               IDLE : begin
                  imem_rdwr <= 1'b0;
                  if ((conf_res > 15) && (conf_res < 33)) begin
                     bits_to_trx <= conf_res - 1;
                  end else begin
                     bits_to_trx <= 15;
                  end
                  if (conf_en ==1'b1) begin
                     if ((ws_pos_edge == 1'b1 & conf_swap == 1'b1) ||
                        (ws_neg_edge == 1'b1 & conf_swap == 1'b0)) begin
                        if (receiver == 1'b1) begin        //-- recevier
                           sd_ctrl <= WAIT_CLK;
                        end else begin
                           imem_rdwr <= 1'b1;  //-- read first data if transmitter
                           sd_ctrl   <= TRX_DATA;
                        end
                     end
                  end
               end
               WAIT_CLK : begin        //-- wait for first bit after WS
                  adr_cnt  <= 0;
                  bit_cnt  <= 0;
                  new_word <= 1'b0;
                  data_in  <= 0;
                  if ((i2s_clk_en == 1'b1) && (neg_edge == 1'b0)) begin
                     sd_ctrl <= TRX_DATA;
                  end
               end
               TRX_DATA : begin         //-- transmit/receive serial data 
                  imem_rdwr <= 1'b0;
                  evt_hsbf  <= 1'b0;
                  evt_lsbf  <= 1'b0;                  
                  if ((ws_pos_edge == 1'b1) || (ws_neg_edge == 1'b1)) begin
                     new_word <= 1'b1;
                  end
                  
                  //-- recevier operation
                  if (receiver == 1'b1) begin
                     if ((i2s_clk_en == 1'b1) && (neg_edge == 1'b1)) begin
                           if ((bit_cnt < bits_to_trx) && (new_word == 1'b0)) begin
                              bit_cnt                        <= bit_cnt + 1;
                              data_in[bits_to_trx - bit_cnt] <= i2s_sd_i;
                           end else begin
                              imem_rdwr                      <= 1'b1;
                              data_in[bits_to_trx - bit_cnt] <= i2s_sd_i;
                              sd_ctrl                        <= RX_WRITE;
                           end                 
                     end
                  end
                  //-- transmitter operation
                  if (receiver == 1'b0) begin
                        if ((i2s_clk_en == 1'b1) && (neg_edge == 1'b0)) begin
                           if ((bit_cnt < bits_to_trx) && (new_word == 1'b0)) begin
                              bit_cnt  <= bit_cnt + 1;
                              i2s_sd_o <= sample_dat_i[bits_to_trx - bit_cnt];
                           end else begin
                              bit_cnt <= bit_cnt + 1;
                              if (bit_cnt > bits_to_trx) begin
                                 i2s_sd_o <= 1'b0;
                              end else begin
                                 i2s_sd_o <= sample_dat_i[0];
                              end
                              //-- transmitter address counter
                              imem_rdwr <= 1'b1;
                              adr_cnt   <= (adr_cnt + 1) % temp_data;
                              if (adr_cnt == 2**(ADDR_WIDTH - 2) - 1) begin
                                 evt_lsbf <= 1'b1;
                              end else begin
                                 evt_lsbf <= 1'b0;
                              end
                              if (adr_cnt == 2**(ADDR_WIDTH - 1) - 1) begin
                                 evt_hsbf <= 1'b1;
                              end else begin
                                 evt_hsbf <= 1'b0;
                              end
                              sd_ctrl <= SYNC;
                           end
                        end                     
                  end
               end   
               RX_WRITE : begin         //-- write received word to sample buffer
                  imem_rdwr <= 1'b0;
                  adr_cnt   <= (adr_cnt + 1) % temp_data;
                  if (adr_cnt == 2**(ADDR_WIDTH - 2) - 1) begin
                     evt_lsbf <= 1'b1;
                  end else begin
                     evt_lsbf <= 1'b0;
                  end
                  if (adr_cnt == 2**(ADDR_WIDTH - 1) - 1) begin
                     evt_hsbf <= 1'b1;
                  end else begin
                     evt_hsbf <= 1'b0;
                  end
                  sd_ctrl <= SYNC; 
               end
               SYNC : begin            //-- synchronise with next word
                  imem_rdwr <= 1'b0;
                  evt_hsbf  <= 1'b0;
                  evt_lsbf  <= 1'b0;
                  bit_cnt   <= 0;
                  if ((ws_pos_edge ==1'b1) || (ws_neg_edge == 1'b1)) begin
                     new_word <= 1'b1;
                  end  
                 
                  new_word <= 1'b0;
                  data_in  <= 0;
                  sd_ctrl  <= TRX_DATA;                     
               end               
               default: begin sd_ctrl  <=IDLE; end
            endcase
         end

endmodule