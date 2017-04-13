module zcr

( clk,
  data,
  reset,
  zcr_count,
  zcr_valid
);
parameter DATA_WIDTH= 16;
parameter window_size = 8;//64;

input clk;
input [DATA_WIDTH -1:0] data;
input reset;
output reg [5:0] zcr_count;
output reg zcr_valid;

reg [5:0] zcr_count_temp;

reg current ,not_previous;
reg [6:0] window_count;
reg [15:0] zcr_window [0:window_size-1];
reg clear;
integer i;

always @ (posedge clk or posedge reset )
	begin
	if(reset)
		begin
		window_count<=0;
		//zcr_valid<=0;
		end
	else
		begin
		if(window_count<window_size)
			begin
			window_count<=window_count+1;
			zcr_valid<=0;
			end
		else 
			begin
			window_count<=0;
			zcr_valid<=1;
			zcr_count<=zcr_count_temp;
			end
		end 
	end 

always @(posedge clk or posedge reset)
	begin
		if (reset || (window_count >= window_size))
			begin
				for (i=0;i<(window_size-1);i=i+1)
					zcr_window[i]<=0;
			end
		else
			zcr_window[window_count]<=data;
	end
	
//assign sign_change = (zcr_window[zcr_count][15]==~(zcr_window[zcr_count-1][15]):1?0;
always @ (posedge clk or posedge reset)
	begin 
		if(reset || (window_count == 0))
			zcr_count_temp<=0;
		else if(window_count<window_size+1 && window_count>2)
			begin
				current<=zcr_window[window_count-1][15];
				not_previous<=~(zcr_window[window_count-2][15]);
				if(current==(not_previous))
			    zcr_count_temp<=zcr_count_temp+1;
		    end
	end
	
endmodule 