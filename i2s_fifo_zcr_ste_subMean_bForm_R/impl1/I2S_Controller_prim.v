// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Sat Feb 25 16:55:26 2017
//
// Verilog Description of module I2S_Controller
//

module I2S_Controller (i_sys_rst, i_sd, o_sck, o_ws, o_left_data, 
            o_right_data, o_left_vld, o_right_vld) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(18[8:22])
    input i_sys_rst;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(35[29:38])
    input i_sd;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(38[32:36])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(36[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(37[32:36])
    output [15:0]o_left_data;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    output [15:0]o_right_data;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    output o_left_vld;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(42[30:40])
    output o_right_vld;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(43[30:41])
    
    wire o_sck_adj /* synthesis SET_AS_NETWORK=o_sck_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(36[32:37])
    
    wire GND_net, i_sys_rst_c, i_sd_c, o_left_data_c_15, o_left_data_c_14, 
        o_left_data_c_13, o_left_data_c_12, o_left_data_c_11, o_left_data_c_10, 
        o_left_data_c_9, o_left_data_c_8, o_left_data_c_7, o_left_data_c_6, 
        o_left_data_c_5, o_left_data_c_4, o_left_data_c_3, o_left_data_c_2, 
        o_left_data_c_1, o_left_data_c_0, o_right_data_c_15, o_right_data_c_14, 
        o_right_data_c_13, o_right_data_c_12, o_right_data_c_11, o_right_data_c_10, 
        o_right_data_c_9, o_right_data_c_8, o_right_data_c_7, o_right_data_c_6, 
        o_right_data_c_5, o_right_data_c_4, o_right_data_c_3, o_right_data_c_2, 
        o_right_data_c_1, o_right_data_c_0, o_left_vld_c, o_right_vld_c, 
        osc_clk, VCC_net, o_ws_adj, n49, n121;
    
    VHI i5 (.Z(VCC_net));
    i2s_rx i2s_rx_inst (.o_sck_c(o_sck_adj), .o_left_data_c_15(o_left_data_c_15), 
           .VCC_net(VCC_net), .GND_net(GND_net), .o_right_data_c_15(o_right_data_c_15), 
           .o_left_vld_c(o_left_vld_c), .o_right_vld_c(o_right_vld_c), .o_ws_c(o_ws_adj), 
           .o_left_data_c_0(o_left_data_c_0), .o_left_data_c_1(o_left_data_c_1), 
           .o_left_data_c_2(o_left_data_c_2), .o_left_data_c_3(o_left_data_c_3), 
           .o_left_data_c_4(o_left_data_c_4), .o_left_data_c_5(o_left_data_c_5), 
           .o_left_data_c_6(o_left_data_c_6), .o_left_data_c_7(o_left_data_c_7), 
           .o_left_data_c_8(o_left_data_c_8), .o_left_data_c_9(o_left_data_c_9), 
           .o_left_data_c_10(o_left_data_c_10), .o_left_data_c_11(o_left_data_c_11), 
           .o_left_data_c_12(o_left_data_c_12), .o_left_data_c_13(o_left_data_c_13), 
           .o_left_data_c_14(o_left_data_c_14), .o_right_data_c_0(o_right_data_c_0), 
           .o_right_data_c_1(o_right_data_c_1), .o_right_data_c_2(o_right_data_c_2), 
           .o_right_data_c_3(o_right_data_c_3), .o_right_data_c_4(o_right_data_c_4), 
           .o_right_data_c_5(o_right_data_c_5), .o_right_data_c_6(o_right_data_c_6), 
           .o_right_data_c_7(o_right_data_c_7), .o_right_data_c_8(o_right_data_c_8), 
           .o_right_data_c_9(o_right_data_c_9), .o_right_data_c_10(o_right_data_c_10), 
           .o_right_data_c_11(o_right_data_c_11), .o_right_data_c_12(o_right_data_c_12), 
           .o_right_data_c_13(o_right_data_c_13), .o_right_data_c_14(o_right_data_c_14), 
           .i_sd_c(i_sd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(63[13] 73[19])
    OB o_left_data_pad_11 (.I(o_left_data_c_11), .O(o_left_data[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    OB o_left_data_pad_12 (.I(o_left_data_c_12), .O(o_left_data[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_13 (.I(o_left_data_c_13), .O(o_left_data[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_14 (.I(o_left_data_c_14), .O(o_left_data[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    GSR GSR_INST (.GSR(n121));
    OB o_left_data_pad_15 (.I(o_left_data_c_15), .O(o_left_data[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_ws_pad (.I(o_ws_adj), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(37[32:36])
    OB o_sck_pad (.I(o_sck_adj), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(36[32:37])
    pll1 my_pll (.osc_clk_keep(osc_clk), .i_sys_reset(GND_net), .o_sck_adj(o_sck_adj), 
         .o_ws_adj(o_ws_adj), .n49(n49), .GND_net(GND_net)) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(52[10] 58[3])
    OB o_left_data_pad_10 (.I(o_left_data_c_10), .O(o_left_data[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    LUT4 i56_1_lut (.A(i_sys_rst_c), .Z(n121)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(35[29:38])
    defparam i56_1_lut.init = 16'h5555;
    OB o_left_data_pad_9 (.I(o_left_data_c_9), .O(o_left_data[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_8 (.I(o_left_data_c_8), .O(o_left_data[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_7 (.I(o_left_data_c_7), .O(o_left_data[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_6 (.I(o_left_data_c_6), .O(o_left_data[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_5 (.I(o_left_data_c_5), .O(o_left_data[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_4 (.I(o_left_data_c_4), .O(o_left_data[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_3 (.I(o_left_data_c_3), .O(o_left_data[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_2 (.I(o_left_data_c_2), .O(o_left_data[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_1 (.I(o_left_data_c_1), .O(o_left_data[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_left_data_pad_0 (.I(o_left_data_c_0), .O(o_left_data[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(40[33:44])
    OB o_right_data_pad_15 (.I(o_right_data_c_15), .O(o_right_data[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_14 (.I(o_right_data_c_14), .O(o_right_data[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_13 (.I(o_right_data_c_13), .O(o_right_data[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_12 (.I(o_right_data_c_12), .O(o_right_data[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_11 (.I(o_right_data_c_11), .O(o_right_data[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_10 (.I(o_right_data_c_10), .O(o_right_data[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_9 (.I(o_right_data_c_9), .O(o_right_data[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_8 (.I(o_right_data_c_8), .O(o_right_data[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_7 (.I(o_right_data_c_7), .O(o_right_data[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_6 (.I(o_right_data_c_6), .O(o_right_data[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_5 (.I(o_right_data_c_5), .O(o_right_data[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_4 (.I(o_right_data_c_4), .O(o_right_data[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_3 (.I(o_right_data_c_3), .O(o_right_data[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_2 (.I(o_right_data_c_2), .O(o_right_data[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_1 (.I(o_right_data_c_1), .O(o_right_data[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_right_data_pad_0 (.I(o_right_data_c_0), .O(o_right_data[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(41[33:45])
    OB o_left_vld_pad (.I(o_left_vld_c), .O(o_left_vld));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(42[30:40])
    OB o_right_vld_pad (.I(o_right_vld_c), .O(o_right_vld));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(43[30:41])
    IB i_sys_rst_pad (.I(i_sys_rst), .O(i_sys_rst_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(35[29:38])
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(38[32:36])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module i2s_rx
//

module i2s_rx (o_sck_c, o_left_data_c_15, VCC_net, GND_net, o_right_data_c_15, 
            o_left_vld_c, o_right_vld_c, o_ws_c, o_left_data_c_0, o_left_data_c_1, 
            o_left_data_c_2, o_left_data_c_3, o_left_data_c_4, o_left_data_c_5, 
            o_left_data_c_6, o_left_data_c_7, o_left_data_c_8, o_left_data_c_9, 
            o_left_data_c_10, o_left_data_c_11, o_left_data_c_12, o_left_data_c_13, 
            o_left_data_c_14, o_right_data_c_0, o_right_data_c_1, o_right_data_c_2, 
            o_right_data_c_3, o_right_data_c_4, o_right_data_c_5, o_right_data_c_6, 
            o_right_data_c_7, o_right_data_c_8, o_right_data_c_9, o_right_data_c_10, 
            o_right_data_c_11, o_right_data_c_12, o_right_data_c_13, o_right_data_c_14, 
            i_sd_c) /* synthesis syn_module_defined=1 */ ;
    input o_sck_c;
    output o_left_data_c_15;
    input VCC_net;
    input GND_net;
    output o_right_data_c_15;
    output o_left_vld_c;
    output o_right_vld_c;
    input o_ws_c;
    output o_left_data_c_0;
    output o_left_data_c_1;
    output o_left_data_c_2;
    output o_left_data_c_3;
    output o_left_data_c_4;
    output o_left_data_c_5;
    output o_left_data_c_6;
    output o_left_data_c_7;
    output o_left_data_c_8;
    output o_left_data_c_9;
    output o_left_data_c_10;
    output o_left_data_c_11;
    output o_left_data_c_12;
    output o_left_data_c_13;
    output o_left_data_c_14;
    output o_right_data_c_0;
    output o_right_data_c_1;
    output o_right_data_c_2;
    output o_right_data_c_3;
    output o_right_data_c_4;
    output o_right_data_c_5;
    output o_right_data_c_6;
    output o_right_data_c_7;
    output o_right_data_c_8;
    output o_right_data_c_9;
    output o_right_data_c_10;
    output o_right_data_c_11;
    output o_right_data_c_12;
    output o_right_data_c_13;
    output o_right_data_c_14;
    input i_sd_c;
    
    
    wire ws_reg_i, ws_i, n211;
    wire [15:0]left_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(56[33:55])
    wire [15:0]n88;
    wire [15:0]n123;
    
    wire left_vld_i, n235, right_vld_i, n120;
    wire [15:0]left_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(43[33:48])
    
    wire left_vld_reg_i, right_vld_reg_i;
    wire [15:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(57[33:56])
    wire [15:0]n157;
    wire [15:0]n1;
    wire [15:0]right_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(44[33:49])
    
    wire sd_i, d1_left_vld, left_vld, d1_right_vld, right_vld, n8, 
        n185, n186, n194, n195, n200, n199, n198, n197, n187, 
        n188, n196, n193, n191, n192, n190, n189;
    
    LUT4 i15_2_lut (.A(ws_reg_i), .B(ws_i), .Z(n211)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    FD1S3AX left_data_ones_compl_i_i0 (.D(n88[0]), .CK(o_sck_c), .Q(left_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i0.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i16 (.D(n123[15]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i16.GSR = "ENABLED";
    FD1P3AX left_vld_i_45 (.D(n235), .SP(n211), .CK(o_sck_c), .Q(left_vld_i));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam left_vld_i_45.GSR = "ENABLED";
    FD1S3AX right_vld_i_46 (.D(n120), .CK(o_sck_c), .Q(right_vld_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam right_vld_i_46.GSR = "ENABLED";
    LUT4 inv_23_i7_1_lut (.A(left_data_reg_i[6]), .Z(n88[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i7_1_lut.init = 16'h5555;
    FD1S3AX left_vld_reg_i_47 (.D(left_vld_i), .CK(o_sck_c), .Q(left_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam left_vld_reg_i_47.GSR = "ENABLED";
    FD1S3AX right_vld_reg_i_48 (.D(right_vld_i), .CK(o_sck_c), .Q(right_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam right_vld_reg_i_48.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i0 (.D(n157[0]), .CK(o_sck_c), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i0.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i16 (.D(n1[15]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i16.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i0 (.D(sd_i), .SP(ws_reg_i), .CK(o_sck_c), 
            .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i0.GSR = "ENABLED";
    OFS1P3DX d2_left_vld_54 (.D(d1_left_vld), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d2_left_vld_54.GSR = "ENABLED";
    FD1S3AX d1_left_vld_53 (.D(left_vld), .CK(o_sck_c), .Q(d1_left_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d1_left_vld_53.GSR = "ENABLED";
    FD1S3AX d1_right_vld_55 (.D(right_vld), .CK(o_sck_c), .Q(d1_right_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d1_right_vld_55.GSR = "ENABLED";
    OFS1P3DX d2_right_vld_56 (.D(d1_right_vld), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d2_right_vld_56.GSR = "ENABLED";
    FD1S3AX ws_i_40 (.D(o_ws_c), .CK(o_sck_c), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_i_40.GSR = "ENABLED";
    FD1S3AX ws_reg_i_41 (.D(ws_i), .CK(o_sck_c), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_41.GSR = "ENABLED";
    LUT4 inv_23_i5_1_lut (.A(left_data_reg_i[4]), .Z(n88[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i5_1_lut.init = 16'h5555;
    LUT4 inv_23_i4_1_lut (.A(left_data_reg_i[3]), .Z(n88[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i4_1_lut.init = 16'h5555;
    FD1P3AX left_data_reg_i_i0_i1 (.D(left_data_reg_i[0]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i1.GSR = "ENABLED";
    LUT4 inv_27_i16_1_lut (.A(right_data_reg_i[15]), .Z(n157[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i16_1_lut.init = 16'h5555;
    LUT4 inv_27_i15_1_lut (.A(right_data_reg_i[14]), .Z(n157[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i15_1_lut.init = 16'h5555;
    LUT4 inv_27_i14_1_lut (.A(right_data_reg_i[13]), .Z(n157[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i14_1_lut.init = 16'h5555;
    LUT4 inv_27_i13_1_lut (.A(right_data_reg_i[12]), .Z(n157[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i13_1_lut.init = 16'h5555;
    LUT4 inv_27_i12_1_lut (.A(right_data_reg_i[11]), .Z(n157[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i12_1_lut.init = 16'h5555;
    LUT4 inv_27_i11_1_lut (.A(right_data_reg_i[10]), .Z(n157[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i11_1_lut.init = 16'h5555;
    LUT4 inv_27_i10_1_lut (.A(right_data_reg_i[9]), .Z(n157[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i10_1_lut.init = 16'h5555;
    LUT4 inv_27_i9_1_lut (.A(right_data_reg_i[8]), .Z(n157[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i9_1_lut.init = 16'h5555;
    LUT4 inv_27_i8_1_lut (.A(right_data_reg_i[7]), .Z(n157[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i8_1_lut.init = 16'h5555;
    LUT4 inv_27_i7_1_lut (.A(right_data_reg_i[6]), .Z(n157[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i7_1_lut.init = 16'h5555;
    LUT4 inv_27_i6_1_lut (.A(right_data_reg_i[5]), .Z(n157[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i6_1_lut.init = 16'h5555;
    LUT4 inv_27_i5_1_lut (.A(right_data_reg_i[4]), .Z(n157[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i5_1_lut.init = 16'h5555;
    LUT4 inv_27_i4_1_lut (.A(right_data_reg_i[3]), .Z(n157[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i4_1_lut.init = 16'h5555;
    LUT4 inv_27_i3_1_lut (.A(right_data_reg_i[2]), .Z(n157[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i3_1_lut.init = 16'h5555;
    LUT4 inv_27_i2_1_lut (.A(right_data_reg_i[1]), .Z(n157[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i2_1_lut.init = 16'h5555;
    LUT4 inv_23_i16_1_lut (.A(left_data_reg_i[15]), .Z(n88[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i16_1_lut.init = 16'h5555;
    LUT4 inv_23_i15_1_lut (.A(left_data_reg_i[14]), .Z(n88[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i15_1_lut.init = 16'h5555;
    LUT4 inv_23_i14_1_lut (.A(left_data_reg_i[13]), .Z(n88[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i14_1_lut.init = 16'h5555;
    LUT4 inv_23_i13_1_lut (.A(left_data_reg_i[12]), .Z(n88[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i13_1_lut.init = 16'h5555;
    LUT4 inv_23_i12_1_lut (.A(left_data_reg_i[11]), .Z(n88[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i12_1_lut.init = 16'h5555;
    LUT4 inv_23_i11_1_lut (.A(left_data_reg_i[10]), .Z(n88[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i11_1_lut.init = 16'h5555;
    LUT4 inv_23_i10_1_lut (.A(left_data_reg_i[9]), .Z(n88[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i10_1_lut.init = 16'h5555;
    LUT4 inv_23_i9_1_lut (.A(left_data_reg_i[8]), .Z(n88[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i9_1_lut.init = 16'h5555;
    LUT4 inv_23_i8_1_lut (.A(left_data_reg_i[7]), .Z(n88[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i8_1_lut.init = 16'h5555;
    LUT4 i37_2_lut (.A(left_vld_i), .B(left_vld_reg_i), .Z(left_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(177[23:54])
    defparam i37_2_lut.init = 16'h2222;
    LUT4 i39_2_lut (.A(right_vld_i), .B(right_vld_reg_i), .Z(right_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(178[24:57])
    defparam i39_2_lut.init = 16'h2222;
    LUT4 i137_2_lut_rep_2 (.A(ws_reg_i), .B(ws_i), .Z(n235)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam i137_2_lut_rep_2.init = 16'hdddd;
    LUT4 i8_1_lut (.A(ws_reg_i), .Z(n8)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[16:25])
    defparam i8_1_lut.init = 16'h5555;
    FD1P3AX left_data_reg_i_i0_i0 (.D(sd_i), .SP(n8), .CK(o_sck_c), .Q(left_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i0.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i2 (.D(left_data_reg_i[1]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i2.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i3 (.D(left_data_reg_i[2]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i3.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i4 (.D(left_data_reg_i[3]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i4.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i5 (.D(left_data_reg_i[4]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i5.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i6 (.D(left_data_reg_i[5]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i6.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i7 (.D(left_data_reg_i[6]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i7.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i8 (.D(left_data_reg_i[7]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i8.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i9 (.D(left_data_reg_i[8]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i9.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i10 (.D(left_data_reg_i[9]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i10.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i11 (.D(left_data_reg_i[10]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i11.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i12 (.D(left_data_reg_i[11]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i12.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i13 (.D(left_data_reg_i[12]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i13.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i14 (.D(left_data_reg_i[13]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i14.GSR = "ENABLED";
    FD1P3AX left_data_reg_i_i0_i15 (.D(left_data_reg_i[14]), .SP(n8), .CK(o_sck_c), 
            .Q(left_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i15.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i1 (.D(n88[1]), .CK(o_sck_c), .Q(left_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i1.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i2 (.D(n88[2]), .CK(o_sck_c), .Q(left_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i2.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i3 (.D(n88[3]), .CK(o_sck_c), .Q(left_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i4 (.D(n88[4]), .CK(o_sck_c), .Q(left_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i5 (.D(n88[5]), .CK(o_sck_c), .Q(left_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i5.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i6 (.D(n88[6]), .CK(o_sck_c), .Q(left_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i7 (.D(n88[7]), .CK(o_sck_c), .Q(left_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i8 (.D(n88[8]), .CK(o_sck_c), .Q(left_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i9 (.D(n88[9]), .CK(o_sck_c), .Q(left_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i10 (.D(n88[10]), .CK(o_sck_c), .Q(left_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i11 (.D(n88[11]), .CK(o_sck_c), .Q(left_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i12 (.D(n88[12]), .CK(o_sck_c), .Q(left_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i13 (.D(n88[13]), .CK(o_sck_c), .Q(left_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i14 (.D(n88[14]), .CK(o_sck_c), .Q(left_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i15 (.D(n88[15]), .CK(o_sck_c), .Q(left_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i15.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i1 (.D(n157[1]), .CK(o_sck_c), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i1.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i1 (.D(n123[0]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i1.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i2 (.D(n123[1]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i2.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i3 (.D(n123[2]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i3.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i4 (.D(n123[3]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i4.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i5 (.D(n123[4]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i5.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i6 (.D(n123[5]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i6.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i7 (.D(n123[6]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i7.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i8 (.D(n123[7]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i8.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i9 (.D(n123[8]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i9.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i10 (.D(n123[9]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i10.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i11 (.D(n123[10]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i11.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i12 (.D(n123[11]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i12.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i13 (.D(n123[12]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i13.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i14 (.D(n123[13]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i14.GSR = "ENABLED";
    OFS1P3DX left_data_twos_compl_i_i15 (.D(n123[14]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_left_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i15.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i2 (.D(n157[2]), .CK(o_sck_c), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i2.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i3 (.D(n157[3]), .CK(o_sck_c), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i4 (.D(n157[4]), .CK(o_sck_c), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i5 (.D(n157[5]), .CK(o_sck_c), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i5.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i6 (.D(n157[6]), .CK(o_sck_c), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i7 (.D(n157[7]), .CK(o_sck_c), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i8 (.D(n157[8]), .CK(o_sck_c), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i9 (.D(n157[9]), .CK(o_sck_c), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i10 (.D(n157[10]), .CK(o_sck_c), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i11 (.D(n157[11]), .CK(o_sck_c), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i12 (.D(n157[12]), .CK(o_sck_c), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i13 (.D(n157[13]), .CK(o_sck_c), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i14 (.D(n157[14]), .CK(o_sck_c), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i15 (.D(n157[15]), .CK(o_sck_c), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i15.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i1 (.D(right_data_reg_i[0]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i1.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i1 (.D(n1[0]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i1.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i2 (.D(n1[1]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i2.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i3 (.D(n1[2]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i3.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i4 (.D(n1[3]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i4.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i5 (.D(n1[4]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i5.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i6 (.D(n1[5]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i6.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i7 (.D(n1[6]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i7.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i8 (.D(n1[7]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i8.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i9 (.D(n1[8]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i9.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i10 (.D(n1[9]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i10.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i11 (.D(n1[10]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i11.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i12 (.D(n1[11]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i12.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i13 (.D(n1[12]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i13.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i14 (.D(n1[13]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i14.GSR = "ENABLED";
    OFS1P3DX right_data_twos_compl_i_i15 (.D(n1[14]), .SP(VCC_net), .SCLK(o_sck_c), 
            .CD(GND_net), .Q(o_right_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i15.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i2 (.D(right_data_reg_i[1]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i2.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i3 (.D(right_data_reg_i[2]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i3.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i4 (.D(right_data_reg_i[3]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i4.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i5 (.D(right_data_reg_i[4]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i5.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i6 (.D(right_data_reg_i[5]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i6.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i7 (.D(right_data_reg_i[6]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i7.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i8 (.D(right_data_reg_i[7]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i8.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i9 (.D(right_data_reg_i[8]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i9.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i10 (.D(right_data_reg_i[9]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i10.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i11 (.D(right_data_reg_i[10]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i11.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i12 (.D(right_data_reg_i[11]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i12.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i13 (.D(right_data_reg_i[12]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i13.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i14 (.D(right_data_reg_i[13]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i14.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i15 (.D(right_data_reg_i[14]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i15.GSR = "ENABLED";
    LUT4 inv_23_i2_1_lut (.A(left_data_reg_i[1]), .Z(n88[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i2_1_lut.init = 16'h5555;
    CCU2D add_25_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(left_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n185), .S1(n123[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_1.INIT0 = 16'hF000;
    defparam add_25_1.INIT1 = 16'h5555;
    defparam add_25_1.INJECT1_0 = "NO";
    defparam add_25_1.INJECT1_1 = "NO";
    CCU2D add_25_3 (.A0(left_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n185), .COUT(n186), .S0(n123[1]), 
          .S1(n123[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_3.INIT0 = 16'h5aaa;
    defparam add_25_3.INIT1 = 16'h5aaa;
    defparam add_25_3.INJECT1_0 = "NO";
    defparam add_25_3.INJECT1_1 = "NO";
    LUT4 i55_4_lut_3_lut (.A(ws_reg_i), .B(ws_i), .C(right_vld_i), .Z(n120)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam i55_4_lut_3_lut.init = 16'hb2b2;
    CCU2D add_29_5 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n194), .COUT(n195), .S0(n1[3]), 
          .S1(n1[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_5.INIT0 = 16'h5aaa;
    defparam add_29_5.INIT1 = 16'h5aaa;
    defparam add_29_5.INJECT1_0 = "NO";
    defparam add_29_5.INJECT1_1 = "NO";
    LUT4 inv_23_i1_1_lut (.A(left_data_reg_i[0]), .Z(n88[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i1_1_lut.init = 16'h5555;
    CCU2D add_29_17 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n200), .S0(n1[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_17.INIT0 = 16'h5aaa;
    defparam add_29_17.INIT1 = 16'h0000;
    defparam add_29_17.INJECT1_0 = "NO";
    defparam add_29_17.INJECT1_1 = "NO";
    CCU2D add_29_15 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n199), .COUT(n200), .S0(n1[13]), 
          .S1(n1[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_15.INIT0 = 16'h5aaa;
    defparam add_29_15.INIT1 = 16'h5aaa;
    defparam add_29_15.INJECT1_0 = "NO";
    defparam add_29_15.INJECT1_1 = "NO";
    CCU2D add_29_13 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n198), .COUT(n199), .S0(n1[11]), 
          .S1(n1[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_13.INIT0 = 16'h5aaa;
    defparam add_29_13.INIT1 = 16'h5aaa;
    defparam add_29_13.INJECT1_0 = "NO";
    defparam add_29_13.INJECT1_1 = "NO";
    CCU2D add_29_11 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n197), .COUT(n198), .S0(n1[9]), 
          .S1(n1[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_11.INIT0 = 16'h5aaa;
    defparam add_29_11.INIT1 = 16'h5aaa;
    defparam add_29_11.INJECT1_0 = "NO";
    defparam add_29_11.INJECT1_1 = "NO";
    CCU2D add_25_7 (.A0(left_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n187), .COUT(n188), .S0(n123[5]), 
          .S1(n123[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_7.INIT0 = 16'h5aaa;
    defparam add_25_7.INIT1 = 16'h5aaa;
    defparam add_25_7.INJECT1_0 = "NO";
    defparam add_25_7.INJECT1_1 = "NO";
    CCU2D add_29_9 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n196), .COUT(n197), .S0(n1[7]), 
          .S1(n1[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_9.INIT0 = 16'h5aaa;
    defparam add_29_9.INIT1 = 16'h5aaa;
    defparam add_29_9.INJECT1_0 = "NO";
    defparam add_29_9.INJECT1_1 = "NO";
    CCU2D add_29_3 (.A0(right_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n193), .COUT(n194), .S0(n1[1]), 
          .S1(n1[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_3.INIT0 = 16'h5aaa;
    defparam add_29_3.INIT1 = 16'h5aaa;
    defparam add_29_3.INJECT1_0 = "NO";
    defparam add_29_3.INJECT1_1 = "NO";
    CCU2D add_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(right_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n193), .S1(n1[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_1.INIT0 = 16'hF000;
    defparam add_29_1.INIT1 = 16'h5555;
    defparam add_29_1.INJECT1_0 = "NO";
    defparam add_29_1.INJECT1_1 = "NO";
    CCU2D add_25_15 (.A0(left_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n191), .COUT(n192), .S0(n123[13]), 
          .S1(n123[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_15.INIT0 = 16'h5aaa;
    defparam add_25_15.INIT1 = 16'h5aaa;
    defparam add_25_15.INJECT1_0 = "NO";
    defparam add_25_15.INJECT1_1 = "NO";
    LUT4 inv_27_i1_1_lut (.A(right_data_reg_i[0]), .Z(n157[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i1_1_lut.init = 16'h5555;
    CCU2D add_25_13 (.A0(left_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n190), .COUT(n191), .S0(n123[11]), 
          .S1(n123[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_13.INIT0 = 16'h5aaa;
    defparam add_25_13.INIT1 = 16'h5aaa;
    defparam add_25_13.INJECT1_0 = "NO";
    defparam add_25_13.INJECT1_1 = "NO";
    CCU2D add_25_11 (.A0(left_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n189), .COUT(n190), .S0(n123[9]), 
          .S1(n123[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_11.INIT0 = 16'h5aaa;
    defparam add_25_11.INIT1 = 16'h5aaa;
    defparam add_25_11.INJECT1_0 = "NO";
    defparam add_25_11.INJECT1_1 = "NO";
    CCU2D add_25_9 (.A0(left_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n188), .COUT(n189), .S0(n123[7]), 
          .S1(n123[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_9.INIT0 = 16'h5aaa;
    defparam add_25_9.INIT1 = 16'h5aaa;
    defparam add_25_9.INJECT1_0 = "NO";
    defparam add_25_9.INJECT1_1 = "NO";
    CCU2D add_25_5 (.A0(left_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n186), .COUT(n187), .S0(n123[3]), 
          .S1(n123[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_5.INIT0 = 16'h5aaa;
    defparam add_25_5.INIT1 = 16'h5aaa;
    defparam add_25_5.INJECT1_0 = "NO";
    defparam add_25_5.INJECT1_1 = "NO";
    CCU2D add_29_7 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n195), .COUT(n196), .S0(n1[5]), 
          .S1(n1[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_7.INIT0 = 16'h5aaa;
    defparam add_29_7.INIT1 = 16'h5aaa;
    defparam add_29_7.INJECT1_0 = "NO";
    defparam add_29_7.INJECT1_1 = "NO";
    LUT4 inv_23_i3_1_lut (.A(left_data_reg_i[2]), .Z(n88[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i3_1_lut.init = 16'h5555;
    LUT4 inv_23_i6_1_lut (.A(left_data_reg_i[5]), .Z(n88[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i6_1_lut.init = 16'h5555;
    CCU2D add_25_17 (.A0(left_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n192), .S0(n123[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_17.INIT0 = 16'h5aaa;
    defparam add_25_17.INIT1 = 16'h0000;
    defparam add_25_17.INJECT1_0 = "NO";
    defparam add_25_17.INJECT1_1 = "NO";
    IFS1P3DX sd_i_42 (.D(i_sd_c), .SP(VCC_net), .SCLK(o_sck_c), .CD(GND_net), 
            .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam sd_i_42.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pll1
//

module pll1 (osc_clk_keep, i_sys_reset, o_sck_adj, o_ws_adj, n49, 
            GND_net) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk_keep;
    input i_sys_reset;
    output o_sck_adj;
    output o_ws_adj;
    output n49;
    input GND_net;
    
    wire o_sck_adj /* synthesis SET_AS_NETWORK=o_sck_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(36[32:37])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk_keep), .CLKFB(o_sck_adj), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(i_sys_reset), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(o_sck_adj), .CLKOS(o_ws_adj), .CLKOS2(n49)) /* synthesis FREQUENCY_PIN_CLKOS2="100.000000", FREQUENCY_PIN_CLKOS="1.000000", FREQUENCY_PIN_CLKOP="16.000000", FREQUENCY_PIN_CLKI="16.000000", ICP_CURRENT="7", LPF_RESISTOR="72", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=52, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(52[10] 58[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 25;
    defparam PLLInst_0.CLKOS_DIV = 16;
    defparam PLLInst_0.CLKOS2_DIV = 4;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 24;
    defparam PLLInst_0.CLKOS_CPHASE = 15;
    defparam PLLInst_0.CLKOS2_CPHASE = 3;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 1;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

