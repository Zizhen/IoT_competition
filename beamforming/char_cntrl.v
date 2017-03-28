module char_cntrl
(
in,
clk,
reset,
out
);
input in,clk,reset;
output reg out;

parameter IDLE=1'b0,ACTIVE=1'b1;

reg [8:0] counter;
reg state,next_state;

always @ (posedge clk)
 begin 
 if (reset == 1'b1) begin
   counter<=  0;
  end else
   case(state)
    IDLE:
	   out<=0;
	 ACTIVE: begin
		out<=1;
		if(counter<64)
			counter<=counter+1;
		else
			counter<=0;
	end
	endcase
end
always @ (*)
 begin : FSM_COMBO
//  next_state <= 3'b000;
case(state)
	IDLE:begin
	   if(in)
		   next_state<=ACTIVE;
		else
			next_state<=IDLE;
	end
	ACTIVE:begin
		if(counter==64)
			next_state<=IDLE;
		else
			next_state<=ACTIVE;
		
	end
endcase
end 
always @ (posedge clk)
 begin : FSM_SEQ
    if (reset == 1'b1) begin
      state <=   IDLE;
    end else begin
      state <=   next_state;
    end
  end
endmodule