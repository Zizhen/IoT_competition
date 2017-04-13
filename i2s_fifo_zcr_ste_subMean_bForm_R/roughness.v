module roughness(
	state_clk, clk, down_sample_clk, reset,
	audio_in, roughness_out,
);

parameter b1 = 18'h01964;
parameter b2 = 18'h3cd74;
parameter b3 = 18'h01964;
parameter a2 = 18'h20580;
parameter a3 = 18'h0faec;

input clk, state_clk, down_sample_clk, reset;
input wire signed[15:0] audio_in;
output reg signed[15:0] roughness_out;

reg [15:0] audio_in_abs;
wire [15:0] roughness_temp;
wire [15:0] sig_out;
reg [9:0] t;
wire [31:0] multiplier_out;
integer valid_input_flag;

initial begin
	t = 0;
	audio_in_abs = 0;
	valid_input_flag = 0;
end

//step 1: take absolute value
always@(posedge clk or posedge reset)
	begin
	if(reset)
		begin
		t <= 10'h0;
		end
	else
		begin
		t <= t+1;
		audio_in_abs <= {0,audio_in[14:0]};
		if(t == 1)
			valid_input_flag <= 1;
		end
	end
	

//step 2: multiplication
roughness_signals roughness(.Address(t), .OutClock(clk), .OutClockEn(1), .Reset(reset), .Q(sig_out));
mult16_array array(.a(audio_in_abs),.b(sig_out),.c(multiplier_out));

//step 3: IIR filter
IIR2_18bit_fixed iir(.audio_out(roughness_temp),.audio_in(multiplier_out[31:16]),.scale(0),
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

reg signed [17:0] f1_mac_new, f1_coeff_x_value ;
reg signed [17:0] f1_coeff, f1_mac_old, f1_value ;

reg signed [17:0] x_n ;
reg signed [17:0] x_n1, x_n2 ;

reg signed [17:0] f1_y_n1, f1_y_n2 ;
integer second_round_flag;
reg [2:0] lr_clk_counter;

mult16_array f1_c_x_v (f1_coeff, f1_value, f1_coeff_x_value);
always@(*)
begin
	if(second_round_flag)
		f1_mac_new = f1_mac_old + f1_coeff_x_value ;
end
reg [3:0] state ;
reg last_clk ;

initial begin
	last_clk = 1;
	f1_y_n1 = 18'h0;
	f1_y_n2 = 18'h0;
	f1_mac_new = 18'h0;
	f1_mac_old = 18'h0;
	second_round_flag = 0;
	lr_clk_counter = 0;
end

always @ (posedge lr_clk)
begin
	lr_clk_counter <= lr_clk_counter + 1;
	if(lr_clk_counter == 3)
		second_round_flag <= 1;
end

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


