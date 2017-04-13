//   ==================================================================
//   >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//   ------------------------------------------------------------------
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



module top_test_bench;


wire [2:0] addr ;
wire [7:0] data;

clk_reset U_clk_reset 
                  (.clk(clk),
                   .rst_l(rst_l)
				   );
				   
///////////////////////////////////////////////////////				  
// Instantiate the Micro Processor (uP) Model
// This model contains all the tasks called
// to apply the stimulus to the design

up_model U_up_model
            (.clk( clk),
             .reset_l(  rst_l),
             .cs_l    (cs_l),
             .rw_l    ( rw_l),
             .ack_l   (ack_l),
             .intr_l  ( intr_l),
             .addr     (addr),
             .data    ( data)
            );
			
//////////////////////////////////////////////////////////
// Instantiate the ack_gen block, used to 
// acknowledge uP cycles 4 clock tics after !cs_l

ack_gen U_ack_gen
               (.clk  (clk),
                .rst_l( rst_l),
                .cs_l  (cs_l),
                .ack_l (ack_l)
               );  
			   
/////////////////////////////////////////////////////////
//Instantiate one of the I2C_Slave models  

pullup p1(sda);
pullup p2(scl);

i2c_slave U_i2c_slave
                    (.scl ( scl),
                     .sda ( sda)
                    );
/////////////////////////////////////////////////////////					
I2C_Top U_I2C_Top
        ( .SDA     ( sda),
          .SCL     (scl),
          .Clock   ( clk),
          .Reset_L (rst_l),
          .CS_L    (cs_l),
          .A0      (addr[0]),
          .A1      (addr[1]),
          .A2      (addr[2]),
          .RW_L    ( rw_l),
          .INTR_L  (intr_l),
          .DATA    (data)
       ); 
	   
	  initial 
	  #850000000 $stop;


			   

endmodule

