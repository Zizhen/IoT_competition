module submean2

( clk,
  data_in,
  reset,
  subMean_out,
  subMean_valid
);

parameter DATA_WIDTH= 16;
parameter window_size = 8;//16;

input clk;
input [DATA_WIDTH -1:0] data_in;
input reset;
output reg [DATA_WIDTH -1:0]subMean_out;
output  subMean_valid;
 

wire Full,Rd_En;
reg [15:0] subMean_window [0:window_size-1];
reg [19:0] sum = 0;
reg [15:0] avg = 0;
reg [4:0] window_init_count,window_count;
integer i;
wire [14:0] fifo_out; 
 
fifo_submean f1 (.Data(data_in[14:0]), .WrClock(clk), .RdClock(clk), .WrEn(1), .RdEn(Rd_En), 
    .Reset(reset), .RPReset( ), .Q(fifo_out), .Empty( ), .Full(Full));
 
rising_edge_det r1(.clk(clk), .reset(reset), .din(Full), .pe(Rd_En));

assign subMean_valid=Rd_En;

always @(posedge clk or posedge reset)
begin	
	if (reset)
		begin
		sum<=0;
		avg<=0;
		subMean_out<=0;
		end
	else if (~Rd_En)
		begin
		sum<=sum+data_in[14:0];
		avg<=(sum >> 4);
		end
	else 
		begin
		sum<=sum+data_in[14:0]-fifo_out;
		avg<=(sum >> 4) ;
		subMean_out<= data_in[14:0] - avg;
		end
end
endmodule
