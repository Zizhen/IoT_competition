module ste 
( clk,
  data,
  reset,
  ste,
  ste_valid
);
parameter DATA_WIDTH= 16;
parameter window_size = 64;
parameter threshold = 100000;

input clk;
input [DATA_WIDTH -1:0] data;
input reset;
output reg ste_valid;

output reg [30:0] ste;
wire [14:0] square;
reg [6:0] window_count;
reg [15:0] ste_window [0:window_size-1];
integer i;
reg [30:0] sum;

always @ (posedge clk or posedge reset )
	begin
	if(reset)
		begin
		window_count=0;
		//ste_valid=0;
		end
	else 
		begin
		if(window_count<window_size)
			begin
			window_count=window_count+1;
			ste=0;
			ste_valid=0;
			end
		else 
			begin
			window_count=0;
			ste_valid=1;
			ste=sum;
			end
		end
	end


always @(posedge clk or posedge reset)
	begin
		if (reset || (window_count >= window_size))
			begin
				for (i=0;i<=(window_size-1);i=i+1)
					ste_window[i]<=0;
			end
		else
			ste_window[window_count]<=data;
	end  
squares sq1 (.Address(data[14:8]), .OutClock(clk), .OutClockEn(1), .Reset(reset), .Q(square));

always @ (posedge clk or posedge reset)
	begin 
		if(reset || (window_count == 0))
			sum<=0;
		else if(window_count<window_size+1 && window_count>2)
			begin
				sum<=sum+square;
		    end
	end

endmodule


