module top(  rst,
             i_sd,
             o_sck,
             o_ws,
             o_left_data,
             o_right_data,
             o_left_vld,
             o_right_vld,
			 zcr_valid_right,
			 zcr_valid_left,
			 ste,
			 ste_valid,
			 subMean_out,
			 subMean_valid
			);
			
    parameter DATA_WIDTH= 16;
	
	input                      rst;//reset
    output                     o_sck;//Serial clock line
    output                 o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    input                      i_sd;//I2S serial data
    
    output [DATA_WIDTH - 1 : 0] o_left_data;//Output left channel data to Host/Processor
    output [DATA_WIDTH - 1 : 0] o_right_data;//Output right channel data to Host/Processor
    output                   o_left_vld;
    output                   o_right_vld,zcr_valid_right,zcr_valid_left;
    output                   ste,ste_valid; 
	output [DATA_WIDTH -1:0]subMean_out;
	output subMean_valid;
	
	wire  [15:0]  left_out,right_out;
	wire [5:0] zcr_count_right,zcr_count_left;
	wire zcr_valid_right,zcr_valid_left;
    wire ste,ste_valid;
	wire [DATA_WIDTH -1:0]subMean_out;
	wire subMean_valid;
	

I2S_Controller   port1 (
                          .rst(rst),
                          .i_sd(i_sd),
                          .o_sck(o_sck),
                          .o_ws(o_ws),
                          .o_left_data(o_left_data),
                          .o_right_data(o_right_data),
                          .o_left_vld(o_left_vld),
                          .o_right_vld(o_right_vld),
						  .fifo_read_clk(fifo_read_clk)
                       );
					   
					   
					
fifo_left left1 (.Data(~(o_right_data-1)), .WrClock(o_sck), .RdClock(fifo_read_clk), .WrEn(o_left_vld), .RdEn(1), 
    .Reset(rst), .RPReset( ), .Q( left_out ), .Empty(left_empty), .Full(left_full), .AlmostEmpty( ), 
    .AlmostFull( ));
fifo_right right1 (.Data(~(o_left_data-1)), .WrClock(o_sck), .RdClock(fifo_read_clk), .WrEn(o_right_vld), .RdEn( 1), 
    .Reset(rst), .RPReset( ), .Q(right_out), .Empty(right_empty), .Full(right_full), .AlmostEmpty( ), 
    .AlmostFull( ));
	
	
	
zcr zcr1
( .clk(fifo_read_clk),
  .data(right_out),
  .reset(rst),
  .zcr_count(zcr_count_right),
  .zcr_valid (zcr_valid_right)
);

zcr zcr2
( .clk(fifo_read_clk),
  .data(left_out),
  .reset(rst),
  .zcr_count(zcr_count_left),
  .zcr_valid (zcr_valid_left)
);
ste ste1 
( .clk(fifo_read_clk),
  .data(right_out),
  .reset(rst),
  .ste(ste),
  .ste_valid(ste_valid)
);

subMean subMean1
( .clk(fifo_read_clk),
  .data_in(left_out),
  .reset(rst),
  .subMean_out(subMean_out),
  .subMean_valid(subMean_valid)
);

					  
endmodule 