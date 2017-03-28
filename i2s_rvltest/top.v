module up_down_counter    (
out      ,  // Output of the counter
clk      ,  // clock input
reset       // reset input
);
//----------Output Ports--------------
output [14:0] out;
output clk;
//------------Input Ports-------------- 
//input [7:0] data;
input reset;
//------------Internal Variables--------
reg [14:0] out;
reg [6:0] count;
reg clk;
wire osc_clk,rst;
//-------------Code Starts Here-------
always @(posedge clk)
if (rst) begin // active high reset
  out <= 0 ;
end else begin
  out <= out + 1;
end
 
 
assign rst=~reset;


defparam OSCH_inst.NOM_FREQ = "16.63";
		OSCH OSCH_inst( .STDBY(1'b0), // 0=Enabled, 1=Disabled									
                        .OSC(osc_clk),
                       .SEDSTDBY());

always @(negedge osc_clk or posedge rst)
	begin
	 if(rst)
		 begin
		 count=0;
		 clk=0;
		 end
	else
		begin
		if(count<31)
			count=count+1;
		else
			begin
			clk=~clk;
			count=0;
			end
		 end 
	end
 

endmodule 
