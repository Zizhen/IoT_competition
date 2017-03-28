module top(  rst_n,
             mclk, 
             i_sd,
             o_sck,
             o_ws,
			 fifo_in1,
		     sample_clk,
			 i_sd_out,
			 o_sck_out,
			 o_ws_out
			);
			
    parameter DATA_WIDTH= 16;
	output sample_clk;
	input                      rst_n;//reset
    output                     o_sck;//Serial clock line
    output                     o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    input                      i_sd;//I2S serial data
    output i_sd_out,o_sck_out,o_ws_out;
    output  [31:0]             fifo_in1;
 
	output                     mclk;
    
	wire i_sd_right;
    wire  [15:0]  horizontal_out,vertical_out;	
	wire [5:0] zcr_count_right,zcr_count_left;
	wire zcr_valid_right,zcr_valid_left;
    wire fpga_clk;
	wire [31:0] fifo_in1;
	wire [15:0] fifo_in2;
	wire wr_en,wr_en2;
	wire [31:0]  o_right_data,o_left_data;
	wire [31:0]  o_right_data2,o_left_data2;
	wire rst;
	wire rvl_clk;
	assign i_sys_rst=rst || ~lock;
    assign rst=~(rst_n);
	assign sample_clk=o_ws;
	assign i_sd_right=~o_ws?i_sd:0;
	
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
						
assign i_sd_out=i_sd;
assign o_sck_out=o_sck;
assign o_ws_out=o_ws;


defparam OSCH_inst.NOM_FREQ = "16.63";
		OSCH OSCH_inst( .STDBY(1'b0), // 0=Enabled, 1=Disabled									
                        .OSC(osc_clk),
                       .SEDSTDBY());
	 
    pll1 my_pll
	(.CLKI(osc_clk),
	.RST(rst), 
	.CLKOP(fpga_clk),              //fpga_clk 
	.CLKOS(mclk),                  // mclk
	.CLKOS2(rvl_clk),
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


			
  assign fifo_in1=~(o_right_data[31:15]-1);				   				   

endmodule 