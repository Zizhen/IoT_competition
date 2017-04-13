module top(  rst,
             i_sd,
             o_sck,
             o_ws,
			 horizontal_out,
			 mclk,
			 //for i2s Port 2
			 i_sd2,
             o_ws2,
			 vertical_out,
			 //for zcr
			 zcr_count_left,
			 zcr_valid_left,
			 //for ste
			 ste_left,
			 ste_left_valid,
			 //for submean 
			 subMean_left_out,
			 subMean_left_valid, 
			 //beam forming
			 led_pattern,
			 beam_forming_valid,
             o_left_data2,
             o_right_data2,
             o_left_vld2,
             o_right_vld2
			);
			
    parameter DATA_WIDTH= 16;
	
	input                      rst;//reset
    output                     o_sck;//Serial clock line
    output                     o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    input                      i_sd;//I2S serial data
    
    output [DATA_WIDTH -1:0] vertical_out,horizontal_out;
    output                    zcr_valid_left;
    output                    ste_left,ste_left_valid;
	output [4:0]              zcr_count_left;
	output [DATA_WIDTH -1:0]  subMean_left_out;
	output 					  subMean_left_valid;
	output [7:0]			  led_pattern;
	output					  beam_forming_valid;
	output                    mclk;
    output                    o_ws2;//Write Select,a high indicates right channel and low indicates left channel    
	input                     i_sd2;//I2S serial data
	output [DATA_WIDTH - 1 : 0] o_left_data2;//Output left channel data to Host/Processor
    output [DATA_WIDTH - 1 : 0] o_right_data2;//Output right channel data to Host/Processor
    output                   o_left_vld2;
    output                   o_right_vld2;
	
	wire  [15:0]  horizontal_out,vertical_out;	
	wire [4:0] zcr_count_right,zcr_count_left;
	wire zcr_valid_right,zcr_valid_left;
    wire fpga_clk;
	wire [15:0] fifo_in1;
	wire [15:0] fifo_in2;
	wire wr_en,wr_en2;
	wire [15:0]  o_right_data,o_left_data;
	wire [15:0]  o_right_data2,o_left_data2;
	wire [7:0] 	 left_pattern;
	wire 		 beam_forming_valid;
    wire         o_left_vld;
    wire         o_right_vld;
    wire         o_left_vld2;
    wire         o_right_vld2;
	
	assign i_sys_rst=rst || ~lock;

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
	 
    pll1 my_pll
	(.CLKI(osc_clk),
	.RST(rst), 
	.CLKOP(fpga_clk),   //fpga_clk 
	.CLKOS(mclk),      // mclk
	//.CLKOS2(),
	.LOCK(lock)
	);
  
 clk_div div8 (.clk(mclk),.reset(i_sys_rst), .clk_out(o_sck));

I2S_Controller   port2 (
                          .rst(i_sys_rst),
                          .i_sd(i_sd2),
                          .o_sck(o_sck),
                          .o_ws(o_ws2),
                          .o_left_data(o_left_data2),
                          .o_right_data(o_right_data2),
                          .o_left_vld(o_left_vld2),
                          .o_right_vld(o_right_vld2)
                       );

			
  assign fifo_in1=~(o_right_data-1);				   				   
//assign fifo_in1=o_ws?~(o_right_data-1):~(o_left_data-1);					
assign fifo_in2=o_ws?~(o_right_data2-1):~(o_left_data2-1);
assign wr_en=o_left_vld ;//|| o_right_vld;
assign wr_en2=o_left_vld2 || o_right_vld2;

fifo_left horizontal_port (.Data(fifo_in1), .WrClock(o_sck), .RdClock(fpga_clk), .WrEn(wr_en), .RdEn(rd_en1), 
    .Reset(i_sys_rst), .RPReset( ), .Q( horizontal_out ), .Empty(left_empty), .Full(left_full), .AlmostEmpty( ), 
    .AlmostFull(almost_full ));
	
char_cntrl f1(.in(almost_full),.clk(fpga_clk),.reset(i_sys_rst),.out(rd_en1));	
fifo_right vertical_port (.Data(fifo_in2), .WrClock(o_sck), .RdClock(fpga_clk), .WrEn(wr_en2), .RdEn( 1), 
    .Reset(i_sys_rst), .RPReset( ), .Q(vertical_out), .Empty(right_empty), .Full(right_full), .AlmostEmpty( ), 
    .AlmostFull( ));

zcr zcr2
( .clk(fpga_clk),
  .data(horizontal_out),
  .reset(i_sys_rst || ~rd_en1 ),
  .zcr_count(zcr_count_left),
  .zcr_valid (zcr_valid_left)
);

ste ste2 
( .clk(fpga_clk),
  .data(horizontal_out),
  .reset(i_sys_rst || ~rd_en1),
  .ste(ste_left),
  .ste_valid(ste_left_valid)
);
	
submean2 subMean1    //change this to give max value for each window
( .clk(fpga_clk),
  .data_in(horizontal_out),
  .reset(i_sys_rst || ~rd_en1),
  .subMean_out(subMean_left_out),
  .subMean_valid(subMean_left_valid)
);

beam_forming beam_forming1
(	.clk(fpga_clk),
	.left_data_in(o_left_data2),
	.right_data_in(o_right_data2),
	.reset(i_sys_rst || ~rd_en1),
	.led_pattern(led_pattern),
	.beam_forming_valid(beam_forming_valid)
);

endmodule 