[ActiveSupport MAP]
Device = LCMXO3L-6900C;
Package = CABGA256;
Performance = 5;
LUTS_avail = 6864;
LUTS_used = 296;
FF_avail = 7071;
FF_used = 174;
INPUT_LVCMOS25 = 2;
OUTPUT_LVCMOS25 = 40;
IO_avail = 207;
IO_used = 42;
EBR_avail = 26;
EBR_used = 1;
; Begin EBR Section
Instance_Name = right1/fifo_right_0_0;
Type = FIFO8KB;
Width = 7;
REGMODE = NOREG;
RESETMODE = ASYNC;
ASYNC_RESET_RELEASE = SYNC;
GSR = DISABLED;
; End EBR Section
; Begin PLL Section
Instance_Name = port1/my_pll/PLLInst_0;
Type = EHXPLLJ;
CLKOP_Post_Divider_A_Input = DIVA;
CLKOS_Post_Divider_B_Input = DIVB;
CLKOS2_Post_Divider_C_Input = DIVC;
CLKOS3_Post_Divider_D_Input = DIVD;
Pre_Divider_A_Input = VCO_PHASE;
Pre_Divider_B_Input = DIVA;
Pre_Divider_C_Input = VCO_PHASE;
Pre_Divider_D_Input = VCO_PHASE;
VCO_Bypass_A_Input = VCO_PHASE;
VCO_Bypass_B_Input = VCO_PHASE;
VCO_Bypass_C_Input = VCO_PHASE;
VCO_Bypass_D_Input = VCO_PHASE;
FB_MODE = CLKOP;
CLKI_Divider = 1;
CLKFB_Divider = 1;
CLKOP_Divider = 25;
CLKOS_Divider = 64;
CLKOS2_Divider = 8;
CLKOS3_Divider = 1;
Fractional_N_Divider = 0;
CLKOP_Desired_Phase_Shift(degree) = 0;
CLKOP_Trim_Option_Rising/Falling = RISING;
CLKOP_Trim_Option_Delay = 0;
CLKOS_Desired_Phase_Shift(degree) = 0;
CLKOS_Trim_Option_Rising/Falling = RISING;
CLKOS_Trim_Option_Delay = 0;
CLKOS2_Desired_Phase_Shift(degree) = 0;
CLKOS3_Desired_Phase_Shift(degree) = 0;
; End PLL Section
