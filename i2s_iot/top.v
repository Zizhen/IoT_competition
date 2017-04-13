module top(  rst_n,
             mclk, 
             i_sd,
             o_sck,
             o_ws,
			 horizontal_out,
			 vertical_out,
			 mclk2, 
             i_sd2,
             o_sck2,
             o_ws2,
			 SDA,
			 SCL,
			 glass,
			 shout,
			 beam_forming_valid
			 
			);
			
    parameter DATA_WIDTH= 32;
	
	input                      rst_n;//reset
    output                     o_sck;//Serial clock line
	output 					   o_sck2;
	output                     o_ws2;
    output                     o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    input                      i_sd;//I2S serial data
	input                      i_sd2;
    output  [DATA_WIDTH -1:0]  /*vertical_out*/horizontal_out;
	output  [DATA_WIDTH -1:0]  vertical_out;
	output                     mclk;
	output                     mclk2;
	            
    inout                      SDA,SCL;
	
    output glass,shout,beam_forming_valid;	
	 
	assign zero=0; 
	wire [15:0] subMean_left_out;
    wire  [15:0]  horizontal_out,vertical_out;	
	wire [5:0] zcr_count_right,zcr_count_left;
	wire zcr_valid_right,zcr_valid_left;
    wire fpga_clk;
	wire [31:0] fifo_in1;
	wire [31:0] fifo_in2;
	wire wr_en,wr_en2;
	wire [31:0]  o_right_data,o_left_data;
	wire [31:0]  o_right_data2,o_left_data2;
	wire [31:0]  o_right_data2_final,o_left_data2_final;
	wire [31:0]  o_right_data_final,o_left_data_final;
	wire [30:0]  ste_left;
	wire rst;
	assign i_sys_rst=rst || ~lock || ~lock2;
    assign rst=~(rst_n);
    
	wire glass,shout;

    wire [7:0]  DATA;
	
	wire [DATA_WIDTH -1:0]  out_right_data2,out_left_data2;


I2S_Controller   port1 (
                          .rst(i_sys_rst),
                          .i_sd(i_sd),
                          .o_sck(o_sck),
                          .o_ws(o_ws),
                          .o_left_data(o_left_data),
                          .o_right_data(o_right_data),
                          .o_left_vld(o_left_vld),
                          .o_right_vld(o_right_vld)
						  
                        );

defparam OSCH_inst.NOM_FREQ = "16.63";
		OSCH OSCH_inst( .STDBY(1'b0), // 0=Enabled, 1=Disabled									
                        .OSC(osc_clk),
                       .SEDSTDBY());
	 
    pll1 my_pll1
	(.CLKI(osc_clk),
	.RST(rst), 
	.CLKOP(fpga_clk),              //fpga_clk 
	.CLKOS(mclk),                  // mclk
	.CLKOS2(rvl_clk),
	.LOCK(lock)
	);
  
 clk_div div8 (.clk(mclk),.reset(i_sys_rst), .clk_out(o_sck));


 pll2 my_pll2 
 (.CLKI(osc_clk ),
  .RST(rst),
  .CLKOP(mclk2 ),
  .CLKOS(o_sck2),
  .LOCK(lock2));

I2S_Controller   port2 (
                          .rst(i_sys_rst),
                          .i_sd(i_sd2),
                          .o_sck(o_sck2),
                          .o_ws(o_ws2),
                          .o_left_data(o_left_data2),
                          .o_right_data(o_right_data2),
                          .o_left_vld(o_left_vld2),
                          .o_right_vld(o_right_vld2)
                       );


  assign o_right_data_final=(~o_right_data)+1;
  assign o_left_data_final=(~o_left_data)+1;
  assign fifo_in1=o_right_data_final;
  assign o_right_data2_final=(~o_right_data2)+1;
  assign o_left_data2_final=(~o_left_data2)+1;
  
  //assign fifo_in2=o_ws?o_right_data2_final:o_left_data2_final;
  assign wr_en= o_right_vld ;
  assign wr_en2=o_left_vld2 || o_right_vld2;
  
fifo_horizontal horizontal_port (.Data(fifo_in1[31:15]), .WrClock(o_sck), .RdClock(o_ws), .WrEn(wr_en), .RdEn(1), 
    .Reset(i_sys_rst), .RPReset( ), .Q( horizontal_out ), .Empty(left_empty), .Full(left_full), .AlmostEmpty( ), 
    .AlmostFull(almost_full ));


//char_cntrl f1(.in(almost_full),.clk(fpga_clk),.reset(i_sys_rst),.out(rd_en1));	
fifo_right vertical_right (.Data(o_right_data2_final[31:15]), .WrClock(o_sck2), .RdClock(o_ws2), .WrEn(wr_en2), .RdEn( 1), 
    .Reset(i_sys_rst), .RPReset( ), .Q(out_right_data2), .Empty(right_empty), .Full(right_full), .AlmostEmpty( ), 
    .AlmostFull( ));
fifo_left vertical_left (.Data(o_left_data2_final[31:15]), .WrClock(o_sck2), .RdClock(o_ws2), .WrEn(wr_en2), .RdEn( 1), 
    .Reset(i_sys_rst), .RPReset( ), .Q(out_left_data2), .Empty(right_empty), .Full(right_full), .AlmostEmpty( ), 
    .AlmostFull( ));
	
	 

zcr zcr1
( .clk(o_ws),
  .data(horizontal_out),
  .reset(i_sys_rst),
  .zcr_count(zcr_count_left),
  .zcr_valid (zcr_valid_left)
);

ste ste1 
( .clk(o_ws),
  .data(horizontal_out),
  .reset(i_sys_rst),
  .ste(ste_left),
  .ste_valid(ste_left_valid)
);
	
submean2 subMean1    
( .clk(o_ws),
  .data_in(horizontal_out),
  .reset(i_sys_rst),
  .subMean_out(subMean_left_out),
  .subMean_valid(subMean_left_valid)
);


classification class1

(.zcr_count_left(zcr_count_left),
 .zcr_valid_left(zcr_valid_left),
 
 .ste_left(ste_left),
 .ste_left_valid(ste_left_valid),
 
 .subMean_left_out(subMean_left_out),
 .subMean_left_valid(subMean_left_valid),
 
 .glass(glass),
 .shout(shout)
);
//assign DATA={shout,glass};
beam_forming beam_forming1
(	.clk(fpga_clk),
	.left_data_in(out_left_data2),
	.right_data_in(out_right_data2),
	.reset(i_sys_rst || ~rd_en1),
	.led_pattern(led_pattern),
	.beam_forming_valid(beam_forming_valid)
);

I2C_Top i2c1(
       .SDA(SDA),
	   .SCL(SCL),
       .Clock(Clock),
	   .Reset_L(i_sys_rst),
       .CS_L(CS_L),
	   .RW_L(RW_L),
	   .INTR_L(INTR_L), 
       .A0(A0),.A1(A1),.A2(A2), 
       .DATA(DATA)); 


endmodule 