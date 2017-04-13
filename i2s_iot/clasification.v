module classification

(input [5:0] zcr_count_left,
 input zcr_valid_left,
 
 input [30:0] ste_left,
 input ste_left_valid,
 
 input [15:0] subMean_left_out,
 input subMean_left_valid,
 
 output glass,
 output shout
);

wire zcr_active;
wire ste_active;
wire submean_active; 

assign zcr_active=((zcr_count_left<4)&& zcr_valid_left)?1:0;
assign ste_active=((ste_left<4000)&& ste_left_valid)?1:0;
assign submean_active=((subMean_left_out<2222)&& subMean_left_valid)?1:0;
assign glass=zcr_active && ste_active && submean_active;
assign shout=glass;

endmodule