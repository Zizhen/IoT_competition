module I2S_Controller (
                          rst,
                          i_sd,
                          o_sck,
                          o_ws,
                          o_left_data,
                          o_right_data,
                          o_left_vld,
                          o_right_vld//						  fifo_read_clk
                       );

 
     
   
    parameter DATA_WIDTH= 16;
    
    // I2S Rx Ports
	input                      rst;//reset
    input                      o_sck;//Serial clock line
    output  reg                o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    input                      i_sd;//I2S serial data
    
    output [DATA_WIDTH - 1 : 0] o_left_data;//Output left channel data to Host/Processor
    output [DATA_WIDTH - 1 : 0] o_right_data;//Output right channel data to Host/Processor
    output                   o_left_vld;
    output                   o_right_vld;
  //  output 					fifo_read_clk;
    reg [4:0] count = 0;
	
	/*defparam OSCH_inst.NOM_FREQ = "16.63";
		OSCH OSCH_inst( .STDBY(1'b0), // 0=Enabled, 1=Disabled									
                        .OSC(osc_clk),
                       .SEDSTDBY());

	
	assign i_sys_rst=rst || ~lock;
	 
    pll1 my_pll
	(.CLKI(osc_clk),
	.RST(rst), 
	.CLKOP(o_sck), 
	.CLKOS(fifo_read_clk), 
	.CLKOS2(),
	.LOCK(lock)
	);
    */
always @(negedge o_sck or posedge rst)
	begin
	 if(rst)
		 begin
		 count=0;
		 o_ws=0;
		 end
	else
		begin
		if(count<15)
			count=count+1;
		else
			begin
			o_ws=~o_ws;
			count=0;
			end
		 end 
	end
            i2s_rx # (
                      .DATA_WIDTH(DATA_WIDTH)
                     )
            i2s_rx_inst
                (
                 .i_sys_rst(rst),
                 .i_sck(o_sck),
                 .i_ws(o_ws),
                 .i_sd(i_sd),
                 .o_left_data(o_left_data),
                 .o_right_data(o_right_data),
                 .o_left_vld(o_left_vld),
                 .o_right_vld(o_right_vld)
                 );
    
	
	
endmodule                         