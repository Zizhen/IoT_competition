module clk_div (clk,reset, clk_out);
 
input clk;
input reset;
output reg clk_out;

reg [4:0] count = 0;
always @(posedge clk or posedge reset)
	begin
	 if(reset)
		 begin
		 count=0;
		 clk_out=0;
		 end
	else
		begin
		count=count+1;
		if(count>16)
			begin
				count=0;
				clk_out=~clk_out;
			end
		 end
	end

endmodule