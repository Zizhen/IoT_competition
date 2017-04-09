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
//-- CVS Revision History
//--
//-- $Log: RD#RD1101#source#verilog#rx_i2s_wbd.v,v $
//-- Revision 1.1  2013-07-04 19:38:20-07  lsccad
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

module rx_i2s_wbd #(
   parameter DATA_WIDTH=16,
   parameter ADDR_WIDTH=6
   )
   (
      wb_clk_i  ,
      wb_rst_i  ,
      wb_sel_i  ,
      wb_stb_i  ,
      wb_we_i   ,
      wb_cyc_i  ,
      wb_bte_i  ,
      wb_cti_i  ,
      wb_adr_i  ,
      data_out  ,
      wb_ack_o  ,
      wb_dat_o  ,
      config_rd ,
      config_wr ,
      intstat_rd,
      intstat_wr,
      mem_rd    ,
      mem_addr  
   );

input wb_clk_i;       //-- wishbone clock
input wb_rst_i;       //-- reset signal
input wb_sel_i;       //-- select input
input wb_stb_i;       //-- strobe input
input wb_we_i ;       //-- write enable
input wb_cyc_i;       //-- cycle input
input[1 : 0] wb_bte_i;  //-- burts type extension
input[2 : 0] wb_cti_i;  //-- cycle type identifier
input[ADDR_WIDTH - 1 : 0] wb_adr_i;  //-- address
input[DATA_WIDTH - 1 : 0] data_out;  //-- internal bus
output wb_ack_o;       //-- acknowledge
output[DATA_WIDTH - 1 : 0] wb_dat_o;  //-- data out
output config_rd ;       //-- Config register read
output config_wr ;       //-- Config register write      
output intstat_rd;       //-- Interrupt status register read
output intstat_wr;       //-- Interrupt status register read
output mem_rd    ;       //-- Sample memory read
output[ADDR_WIDTH - 2 : 0] mem_addr; // -- memory addr.
   
   parameter REG_RXCONFIG  = 4'b0000;
   parameter REG_RXINTSTAT = 4'b0001;
   reg iack, iwr;
   wire ird;
   reg[7:0] acnt;//            : integer range 0 to 2**(ADDR_WIDTH - 1) - 1;
   wire[ADDR_WIDTH - 1 : 0] all_ones;
   reg[DATA_WIDTH - 1 : 0] rdout;
   
assign   wb_ack_o = iack;

//-- acknowledge generation
always@ (posedge wb_clk_i or posedge wb_rst_i)
      if (wb_rst_i) begin
         iack <= 1'b0;
      end else begin
         if (wb_cyc_i && wb_sel_i && wb_stb_i)  begin
            case (wb_cti_i)
               3'b010 :begin            //-- incrementing burst
                case (wb_bte_i)      // -- burst extension
                   2'b00 : begin      // -- linear burst
                       iack <= 1'b1;
                      end default :begin  //-- all other treated assert classic cycle
                       iack <= !iack;                     
                     end
                  endcase
				  
               end 3'b111 : begin            //-- end of burst
                  iack <= !iack;
               end default : begin        //-- all other treated assert classic cycle 
                  iack <= !iack;
               end
            endcase
         end else
            iack <= 1'b0;
      end

//-- write generation      
always@(posedge wb_clk_i or posedge wb_rst_i)
      if (wb_rst_i) begin
         iwr <= 1'b0;
      end else begin
         if (wb_cyc_i && wb_sel_i && wb_stb_i && wb_we_i) begin
            case (wb_cti_i)
              3'b010 : begin            //-- incrementing burst
				                  case (wb_bte_i)       //-- burst extension
                   2'b00 : begin       //-- linear burst
                       iwr <= 1'b1;
                     end default :begin     //-- all other treated assert classic cycle
                       iwr <=!iwr;
                    end
                 endcase
               end 3'b111 : begin            //-- end of burst
                  iwr <=!iwr;
               end default :begin          //-- all other treated assert classic cycle   
                  iwr <=!iwr;
               end
            endcase
         end else
            iwr <= 1'b0;         
      end

//-- read generation
assign ird = (wb_cyc_i == 1'b1 && wb_sel_i == 1'b1 && wb_stb_i == 1'b1 && wb_we_i == 1'b0)?1'b1: 1'b0;
assign wb_dat_o = (wb_adr_i[ADDR_WIDTH - 1] == 1'b1)? data_out:rdout;

always@(posedge wb_clk_i)            //-- clock data from registers         
         rdout <= data_out;      
   
//-- sample memory read address. This needs special attention due to read latency
assign mem_addr=(wb_cti_i==3'b010 && wb_we_i==1'b0 && iack && wb_bte_i==2'b00)?acnt[ADDR_WIDTH-2:0]:wb_adr_i[ADDR_WIDTH-2:0];

   
assign all_ones[ADDR_WIDTH - 1 : 0] = 0-1;

always@(posedge wb_clk_i or posedge wb_rst_i)
      if (wb_rst_i) begin
         acnt <= 0;
      end else begin
         if (wb_cti_i == 3'b010 && wb_we_i == 1'b0 && wb_bte_i == 2'b00) begin
            if (iack == 1'b0) begin
               if (wb_adr_i == all_ones) begin
                  acnt <= 0;
               end else begin
                  acnt <= wb_adr_i + 1;
               end
            end else begin
               if (acnt < 2**(ADDR_WIDTH - 1) - 1) begin
                  acnt <= acnt + 1;
               end else begin
                  acnt <= 0;
               end
            end
         end
      end

//-- read and write strobe generation

assign config_rd=(wb_adr_i[3:0]==REG_RXCONFIG && ird && wb_adr_i[ADDR_WIDTH-1]==1'b0)?1'b1:1'b0;
assign config_wr=(wb_adr_i[3:0]==REG_RXCONFIG && iwr && wb_adr_i[ADDR_WIDTH-1]==1'b0)?1'b1:1'b0;
   
assign intstat_rd=(wb_adr_i[3:0]==REG_RXINTSTAT && ird && wb_adr_i[ADDR_WIDTH-1]==1'b0)?1'b1:1'b0;
assign intstat_wr=(wb_adr_i[3:0]==REG_RXINTSTAT && iwr && wb_adr_i[ADDR_WIDTH-1]==1'b0)?1'b1:1'b0;

assign mem_rd=(wb_adr_i[ADDR_WIDTH-1]==1'b1 && ird)?1'b1:1'b0; 
   
endmodule