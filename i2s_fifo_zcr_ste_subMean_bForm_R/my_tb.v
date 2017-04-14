`timescale 1ns/1ps
//timescale time_unit/time_precision


module I2S_Controller_tb;

    //--------------------------------------------------------------------------------------------------
    // Parameter declarations
    //--------------------------------------------------------------------------------------------------
    parameter DATA_WIDTH=16;

	roughness test (
		.state_clk(clk),
		.clk(real_clk), 
		.down_sample_rate(4'hf), 
		.reset(reset),
		.audio_in(input_right_data_array), 
		.roughness_out(roughness_out)
	);
	
	GSR GSR_INST ( .GSR(1)); 
    PUR PUR_INST ( .PUR(1)); 

	reg [15:0]  input_left_mem [0:89];
	reg [15:0]  input_right_mem [0:89];

	reg 	   clk, reset,real_clk,ds_clk;

	//serial data generation
	reg [15:0] input_left_data_array;
    reg [15:0] input_right_data_array;
	wire [15:0] roughness_out;
    reg [6:0]  count;
	reg trigger;

initial
	begin
	$readmemh("right.list",input_right_mem);
	$readmemh("left.list",input_left_mem);
	end

initial begin: CLOCK_INITIALIZATION
    clk <= 0;
	real_clk <= 0;
	ds_clk <= 0;
end

always begin : CLOCK_GENERATION1
#1 clk <= ~clk;
end
always begin : CLOCK_GENERATION2
#16 real_clk <= ~real_clk;
end
always begin : CLOCK_GENERATION3
#64 ds_clk <= ~ds_clk;
end

initial begin
	reset = 0;
	count = 0;
	trigger = 0;
#2  trigger = 1;
end

always@(posedge real_clk)
	begin
		if(count < 90)
			begin
				input_left_data_array <= input_left_mem[count];
				input_right_data_array <= input_right_mem[count];
				count <= count + 1;
			end
	end


endmodule
