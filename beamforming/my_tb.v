`timescale 1ns/1ps
//timescale time_unit/time_precision


module I2S_Controller_tb;

    //--------------------------------------------------------------------------------------------------
    // Parameter declarations
    //--------------------------------------------------------------------------------------------------
    parameter DATA_WIDTH=16;

	beam_forming test (
		.clk(clk),
		.left_data_in(input_left_data_array),
		.right_data_in(input_right_data_array),
		.reset(reset),
		.led_pattern(led_pattern),
		.beam_forming_valid(beam_forming_valid)
	);
	GSR GSR_INST ( .GSR(1)); 
    PUR PUR_INST ( .PUR(1)); 


	reg [15:0]  input_left_mem [0:89];
	reg [15:0]  input_right_mem [0:89];

	wire [7:0]			led_pattern;
	wire				beam_forming_valid;
	reg 				clk, reset;

	//serial data generation
	reg [15:0] input_left_data_array;
    reg [15:0] input_right_data_array;
    reg [6:0]  count;

initial
	begin
	$readmemh("right.list",input_right_mem);
	$readmemh("left.list",input_left_mem);
	end

initial begin: CLOCK_INITIALIZATION
    clk <= 0;
end

always begin : CLOCK_GENERATION
#1 clk <= ~clk;
end

initial begin
	reset <= 0;
	count <= 0;
end

always@(clk)
	begin
		if(count < 90)
			begin
				input_left_data_array <= input_left_mem[count];
				input_right_data_array <= input_right_mem[count];
				count <= count + 1;
			end
	end


endmodule
