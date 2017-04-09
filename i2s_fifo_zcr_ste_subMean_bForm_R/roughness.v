module roughness(
	state_clk, clk, down_sample_clk, reset,
	audio_in, roughness_out,
	

);
parameter SUM_NUM = 2;
parameter b1 = 18'h01964;
parameter b2 = 18'h3cd74;
parameter b3 = 18'h01964;
parameter a2 = 18'h20580;
parameter a3 = 18'h0faec;

input clk, state_clk, down_sample_clk, reset;
input wire signed[15:0] audio_in;
output reg signed[15:0] roughness_out;

reg [15:0] audio_in_abs;
reg [15:0] roughness_temp;
reg [9:0] t;
genvar i;
reg [31:0] multiplier_out[SUM_NUM-1:0];
reg [31:0] sum_mult;
reg [15:0] sig[0:1023][1:0];  //need to be replaced by a ROM
integer j;

initial begin
	t = 0;
	sum_mult = 0;
end

//step 1: take absolute value
always@(posedge clk or posedge reset)
	begin
	if(reset)
		begin
		audio_in_abs <= 16'h0;
		roughness_temp <= 16'h0;
		t <= 10'h0;
		sum_mult <= 32'h0;
		end
	else
		begin
		t <= t+1;
		audio_in_abs <= {0,audio_in[14:0]};
		end
	end

//step 2-1: multiplication
generate
	for(i=0; i<SUM_NUM; i=i+1)
		begin:
		mult16_array array(audio_in_abs,sig[t][i],multiplier_out[i]);
		end
endgenerate

//step 2-2: sum multiply result
always@(posedge clk)
begin
	for(j=0; j<SUM_NUM; j<=j+1)
		begin
		sum_mult <= sum_mult+multiplier_out[j];
		end
end

//step 3: IIR filter
IIR2_18bit_fixed iir(.audio_out(roughness_temp),.audio_in(sum_mult[31:16]),.scale(0),
.b1(b1),.b2(b2),.b3(b3),.a2(a2),.a3(a3),.state_clk(state_clk), .lr_clk(clk), .reset(reset));

always@(down_sample_clk)
begin
	if(down_sample_clk)
		roughness_out <= roughness_temp;
	else
		roughness_out <= 16'h0;
end


endmodule




///////////////////////////////////////////////////////////////////
/// Second order IIR filter ///////////////////////////////////////
///////////////////////////////////////////////////////////////////
module IIR2_18bit_fixed (audio_out, audio_in,
			scale,
			b1, b2, b3,
			a2, a3,
			state_clk, lr_clk, reset) ;
output reg signed [15:0] audio_out ;
input wire signed [15:0] audio_in ;
input wire [2:0] scale ;
input wire signed [17:0] b1, b2, b3, a2, a3 ;
input wire state_clk, lr_clk, reset ;

wire signed [17:0] f1_mac_new, f1_coeff_x_value ;
reg signed [17:0] f1_coeff, f1_mac_old, f1_value ;

reg signed [17:0] x_n ;
reg signed [17:0] x_n1, x_n2 ;

reg signed [17:0] f1_y_n1, f1_y_n2 ;

mult16_array f1_c_x_v (f1_coeff, f1_value, f1_coeff_x_value);
assign f1_mac_new = f1_mac_old + f1_coeff_x_value ;

reg [3:0] state ;
reg last_clk ;
always @ (posedge state_clk)
begin
	if (reset)
	begin
		state <= 4'd15 ; //turn off the state machine
	end

	else begin
		case (state)
			1:
			begin
				f1_mac_old <= 18'd0 ;
				f1_coeff <= b1 ;
				f1_value <= {audio_in, 2'b0} ;
				x_n <= {audio_in, 2'b0} ;
				state <= 4'd2;
			end
			2:
			begin
				f1_mac_old <= f1_mac_new ;
				f1_coeff <= b2 ;
				f1_value <= x_n1 ;
				state <= 4'd3;
			end
			3:
			begin
				f1_mac_old <= f1_mac_new ;
				f1_coeff <= b3 ;
				f1_value <= x_n2 ;
				state <= 4'd6;
			end
			6:
			begin
				f1_mac_old <= f1_mac_new ;
				f1_coeff <= a2 ;
				f1_value <= f1_y_n1 ;
				state <= 4'd7;
			end
			7:
			begin
				f1_mac_old <= f1_mac_new ;
				f1_coeff <= a3 ;
				f1_value <= f1_y_n2 ;
				state <= 4'd10;
			end
			10:
			begin
				f1_y_n1 <= f1_mac_new<<scale ;
				audio_out <= f1_y_n1[17:2] ;
				f1_y_n2 <= f1_y_n1 ;
				x_n1 <= x_n ;
				x_n2 <= x_n1 ;
				state <= 4'd15;
			end
			15:
			begin
				if (lr_clk && last_clk==1)
				begin
					state <= 4'd1 ;
					last_clk <= 1'h0 ;
				end
				else if (~lr_clk && last_clk==0)
				begin
					last_clk <= 1'h1 ;
				end
			end
			default:
			begin
				state <= 4'd15 ;
			end
		endcase
	end
end

endmodule


