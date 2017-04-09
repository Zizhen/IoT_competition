module rising_edge_det (clk, reset, din, pe);

input clk, reset,din;
output reg pe;

reg temp;

always @(posedge clk or posedge reset)
	if(reset)
		temp<=0;
	else
		temp<=din;
	
	
always @ (posedge clk or posedge reset)
	if(reset)
		pe<=0;
	else if (temp==0 && din==1)
		pe<=1;
		
endmodule 