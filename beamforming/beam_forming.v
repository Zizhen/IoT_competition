module beam_forming
( clk,
  left_data_in,
  right_data_in,
  reset,
  led_pattern,
  beam_forming_valid
);
parameter DATA_WIDTH= 16;
parameter window_size = 30;

input clk;
input [DATA_WIDTH-1 : 0] left_data_in;
input [DATA_WIDTH-1 : 0] right_data_in;
input reset;
output reg [7:0] led_pattern;
output reg beam_forming_valid;

//register depth is 90 samples
reg [15:0] left_data_storage [0:window_size*3];
reg [15:0] right_data_storage [0:window_size*3];
integer i;
reg [4:0] window_count;
reg full;
reg [20:0] min_diff;
reg [20:0] current_diff;
integer j;
integer shift_index;
integer final_index;

reg [7:0] phase_diff_LUT[0:window_size*2-1];
initial begin
	phase_diff_LUT[0] = 8'h01;
	phase_diff_LUT[1] = 8'h01;
	phase_diff_LUT[2] = 8'h01;
	phase_diff_LUT[3] = 8'h02;
	phase_diff_LUT[4] = 8'h02;
	phase_diff_LUT[5] = 8'h02;
	phase_diff_LUT[6] = 8'h02;
	phase_diff_LUT[7] = 8'h02;
	phase_diff_LUT[8] = 8'h02;
	phase_diff_LUT[9] = 8'h02;
	phase_diff_LUT[10] = 8'h04;
	phase_diff_LUT[11] = 8'h04;
	phase_diff_LUT[12] = 8'h04;
	phase_diff_LUT[13] = 8'h04;
	phase_diff_LUT[14] = 8'h04;
	phase_diff_LUT[15] = 8'h04;
	phase_diff_LUT[16] = 8'h04;
	phase_diff_LUT[17] = 8'h04;
	phase_diff_LUT[18] = 8'h04;
	phase_diff_LUT[19] = 8'h04;
	phase_diff_LUT[20] = 8'h08;
	phase_diff_LUT[21] = 8'h08;
	phase_diff_LUT[22] = 8'h08;
	phase_diff_LUT[23] = 8'h08;
	phase_diff_LUT[24] = 8'h08;
	phase_diff_LUT[25] = 8'h08;
	phase_diff_LUT[26] = 8'h08;
	phase_diff_LUT[27] = 8'h08;
	phase_diff_LUT[28] = 8'h08;
	phase_diff_LUT[29] = 8'h08;
	phase_diff_LUT[30] = 8'h10;
	phase_diff_LUT[31] = 8'h10;
	phase_diff_LUT[32] = 8'h10;
	phase_diff_LUT[33] = 8'h10;
	phase_diff_LUT[34] = 8'h10;
	phase_diff_LUT[35] = 8'h10;
	phase_diff_LUT[36] = 8'h10;
	phase_diff_LUT[37] = 8'h10;
	phase_diff_LUT[38] = 8'h10;
	phase_diff_LUT[39] = 8'h10;
	phase_diff_LUT[40] = 8'h20;
	phase_diff_LUT[41] = 8'h20;
	phase_diff_LUT[42] = 8'h20;
	phase_diff_LUT[43] = 8'h20;
	phase_diff_LUT[44] = 8'h20;
	phase_diff_LUT[45] = 8'h20;
	phase_diff_LUT[46] = 8'h20;
	phase_diff_LUT[47] = 8'h20;
	phase_diff_LUT[48] = 8'h20;
	phase_diff_LUT[49] = 8'h20;
	phase_diff_LUT[50] = 8'h40;
	phase_diff_LUT[51] = 8'h40;
	phase_diff_LUT[52] = 8'h40;
	phase_diff_LUT[53] = 8'h40;
	phase_diff_LUT[54] = 8'h40;
	phase_diff_LUT[55] = 8'h40;
	phase_diff_LUT[56] = 8'h40;
	phase_diff_LUT[57] = 8'h80;
	phase_diff_LUT[58] = 8'h80;
	phase_diff_LUT[59] = 8'h80;
	window_count = 0;
end
always @ (posedge clk or posedge reset)
	led_pattern <= phase_diff_LUT[final_index];

always @ (posedge clk or posedge reset )
	begin
	if(reset)
		begin
		window_count<=0;
		beam_forming_valid<=0;
		full<=0;
		min_diff <= 21'b011111111111111111111;
		for (i=0;i<=window_size*3;i=i+1)
			begin
			left_data_storage[i]<=0;
			right_data_storage[i]<=0;
			end

		end
	else
		begin
		if(window_count<window_size*3)
			begin
			window_count<=window_count+1;
			end
		else 
			begin
			window_count<=window_count;
			full<=1;
			beam_forming_valid<=1;
			end
		end 
	end 


always @(posedge clk or posedge reset)
begin
	if (window_count < window_size)
		begin
		left_data_storage[window_count]<=0; 			//first 30 samples omitted for left array
		right_data_storage[window_count]<=right_data_in;			
		end
	else if(window_count < 2*window_size)
		begin
		left_data_storage[window_count]<=left_data_in;
		right_data_storage[window_count]<=right_data_in;
		end
	else if(window_count < 3*window_size)
		begin
		left_data_storage[window_count]<=0; 			//last 30 samples omitted for left array
		right_data_storage[window_count]<=right_data_in;
		end
end

always @(posedge clk or posedge reset)
begin
	if(full)//start shifting
		begin
		for(shift_index = 0;shift_index<60;shift_index=shift_index+1)//shift window 60 times from left to right
			begin
			for(j=0;j<window_size;j=j+1)//in each shift, sum up all differences
				begin
					if((left_data_storage[j+shift_index] - right_data_storage[30+j])>0)
						current_diff <= current_diff + left_data_storage[j+shift_index] - right_data_storage[30+j];
					else
						current_diff <= current_diff - left_data_storage[j+shift_index] + right_data_storage[30+j];
				end
			if(current_diff < min_diff)//if current difference is smaller, take it as the new min_diff
				begin
				min_diff <= current_diff;
				final_index <= shift_index;
				end	
			else begin //else min diff and shifted index remain the same
				min_diff <= current_diff;
				final_index <= final_index;
				end
			end
		end	
end



endmodule
