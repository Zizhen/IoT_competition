module subMean

( clk,
  data_in,
  reset,
  subMean_out,
  subMean_valid
);
parameter DATA_WIDTH= 16;
parameter window_size = 16;

input clk;
input [DATA_WIDTH -1:0] data_in;
input reset;
output reg [DATA_WIDTH -1:0]subMean_out;
output reg subMean_valid;

reg [15:0] subMean_window [0:window_size-1];
reg [19:0] sum = 0;
reg [15:0] avg = 0;
reg [4:0] window_count;

integer i;
integer m;//input signal's index in window array
integer n;//output signal's index in window array

//this block of code handles://filling up the window, cumulate sum while filling up
//after filled up, take average
//switch the mth elem to the new data_in, update sum and average
always @ (posedge clk or posedge reset)
	begin
	if(reset)
		begin
		window_count<=0;
		sum <= 0;
		avg <= 0;
		end
	else
		begin
		if(window_count<window_size)//before window is filled
			begin
				subMean_window[window_count] <= data_in;
				sum <= sum + subMean_window[window_count];
				window_count <= window_count+1;
				subMean_valid <= 0;
			end
		else //after window is filled
			begin
				avg <= (sum >> 4);
				sum <= sum - subMean_window[m] + data_in;
				subMean_window[m] <= data_in;
				subMean_valid <= 1;
			end
		end
	end
	
//This block of code updates m and n, input and output index
always @ (posedge clk or posedge reset)
	begin
		if(reset)
			begin
			m <= 0; //after window fills, 0th item in the array will be changed to new data in
			n <= 7; //after window fills. 7th item in the array will be normalized and output
			end
		else
		begin
			m <= m + 1;
			n <= n + 1;
			if(m >= window_size)
				m <= 0;
			if(n >= window_size)
				n <= 0;
		end
	end

//This block of code assigns (nth elem - average) to output port
always @ (posedge clk) //or posedge reset)
	begin
	subMean_out <= subMean_window[n] - avg;
	end

endmodule