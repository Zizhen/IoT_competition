// Discrete-Time IIR Filter (real)
// -------------------------------
// Filter Structure : Direct-Form I, Second-Order Sections
// Number of Sections : 1
// Stable : Yes
// Linear Phase : No
// Arithmetic : fixed
// Numerator : s16,14 -> [-2 2)
// Denominator : s16,14 -> [-2 2)
// Scale Values : s16,14 -> [-2 2)
// Input : s16,15 -> [-1 1)
// Output : s16,11 -> [-16 16)
// Numerator State : s16,15 -> [-1 1)
// Denominator State : s16,15 -> [-1 1)
// Numerator Prod : s32,29 -> [-4 4)
// Denominator Prod : s32,29 -> [-4 4)
// Numerator Accum : s34,29 -> [-16 16)
// Denominator Accum : s34,29 -> [-16 16)
// Round Mode : round
// Overflow Mode : wrap
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module filter (clk, clk_enable, reset, filter_in, filter_out );

input clk; 
input clk_enable; 
input reset; 
input signed [15:0] filter_in; //sfix16_En15
output signed [15:0] filter_out; //sfix16_En11

// Local Functions
// Type Definitions
// Constants
parameter signed [15:0] scaleconst1 = 16'b0000000101011100; //sfix16_En14
parameter signed [15:0] coeff_b1_section1 = 16'b0100000000000000; //sfix16_En14
parameter signed [15:0] coeff_b2_section1 = 16'b0000000000000000; //sfix16_En14
parameter signed [15:0] coeff_b3_section1 = 16'b1100000000000000; //sfix16_En14
parameter signed [15:0] coeff_a2_section1 = 16'b1000001011100110; //sfix16_En14
parameter signed [15:0] coeff_a3_section1 = 16'b0011110101000111; //sfix16_En14
// Signals
wire signed [15:0] input_typeconvert; // sfix16_En15
wire signed [15:0] scale1; // sfix16_En15
wire signed [31:0] mul_temp; // sfix32_En29
// Section 1 Signals 
wire signed [33:0] a1sum1; // sfix34_En29
wire signed [33:0] a2sum1; // sfix34_En29
wire signed [33:0] b1sum1; // sfix34_En29
wire signed [33:0] b2sum1; // sfix34_En29
wire signed [15:0] numtypeconvert1; // sfix16_En15
wire signed [15:0] dentypeconvert1; // sfix16_En15
reg signed [15:0] numdelay_section1 [0:1] ; // sfix16_En15
reg signed [15:0] dendelay_section1 [0:1] ; // sfix16_En15
wire signed [31:0] a2mul1; // sfix32_En29
wire signed [31:0] a3mul1; // sfix32_En29
wire signed [31:0] b1mul1; // sfix32_En29
wire signed [31:0] b3mul1; // sfix32_En29
wire signed [16:0] unaryminus_temp; // sfix17_En15
wire signed [33:0] b1multypeconvert1; // sfix34_En29
wire signed [33:0] add_cast; // sfix34_En29
wire signed [33:0] add_cast_1; // sfix34_En29
wire signed [34:0] add_temp; // sfix35_En29
wire signed [33:0] sub_cast; // sfix34_En29
wire signed [33:0] sub_cast_1; // sfix34_En29
wire signed [34:0] sub_temp; // sfix35_En29
wire signed [33:0] sub_cast_2; // sfix34_En29
wire signed [33:0] sub_cast_3; // sfix34_En29
wire signed [34:0] sub_temp_1; // sfix35_En29
wire signed [15:0] output_typeconvert; // sfix16_En11

// Block Statements
assign input_typeconvert = filter_in;

assign mul_temp = input_typeconvert * scaleconst1;
assign scale1 = (mul_temp[29:13] + 1)>>>1;

// ------------------ Section 1 ------------------

assign numtypeconvert1 = scale1;

assign dentypeconvert1 = (a1sum1[29:13] + 1)>>>1;

always @( posedge clk or posedge reset)
begin: numdelay_process_section1
if (reset == 1'b1) begin
numdelay_section1[0] <= 0;
numdelay_section1[1] <= 0;
end
else begin
if (clk_enable == 1'b1) begin
numdelay_section1[0] <= numtypeconvert1;
numdelay_section1[1] <= numdelay_section1[0];
end
end
end // numdelay_process_section1

always @( posedge clk or posedge reset)
begin: dendelay_process_section1
if (reset == 1'b1) begin
dendelay_section1[0] <= 0;
dendelay_section1[1] <= 0;
end
else begin
if (clk_enable == 1'b1) begin
dendelay_section1[0] <= dentypeconvert1;
dendelay_section1[1] <= dendelay_section1[0];
end
end
end // dendelay_process_section1

assign a2mul1 = dendelay_section1[0] * coeff_a2_section1;

assign a3mul1 = dendelay_section1[1] * coeff_a3_section1;

assign b1mul1 = $signed({numtypeconvert1[15:0], 14'b00000000000000});

assign unaryminus_temp = (numdelay_section1[1]==16'b1000000000000000) ? $signed({1'b0, numdelay_section1[1]}) : -numdelay_section1[1];
assign b3mul1 = $signed({unaryminus_temp[16:0], 14'b00000000000000});

assign b1multypeconvert1 = $signed({{2{b1mul1[31]}}, b1mul1});

assign b1sum1 = b1multypeconvert1;

assign add_cast = b1sum1;
assign add_cast_1 = $signed({{2{b3mul1[31]}}, b3mul1});
assign add_temp = add_cast + add_cast_1;
assign b2sum1 = add_temp[33:0];

assign sub_cast = b2sum1;
assign sub_cast_1 = $signed({{2{a2mul1[31]}}, a2mul1});
assign sub_temp = sub_cast - sub_cast_1;
assign a2sum1 = sub_temp[33:0];

assign sub_cast_2 = a2sum1;
assign sub_cast_3 = $signed({{2{a3mul1[31]}}, a3mul1});
assign sub_temp_1 = sub_cast_2 - sub_cast_3;
assign a1sum1 = sub_temp_1[33:0];

assign output_typeconvert = ({{4{dentypeconvert1[15]}}, dentypeconvert1[15:3]} + 1)>>>1;

// Assignment Statements
assign filter_out = output_typeconvert;

endmodule // filter