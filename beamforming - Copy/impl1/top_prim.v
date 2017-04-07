// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Mon Mar 06 13:53:59 2017
//
// Verilog Description of module top
//

module top (rst, i_sd, o_sck, o_ws, o_left_data, o_right_data, o_left_vld, 
            o_right_vld, i_sd2, o_sck2, o_ws2, o_left_data2, o_right_data2, 
            o_left_vld2, o_right_vld2, zcr_valid_right, zcr_valid_left, 
            ste_left, ste_left_valid, ste_right, ste_right_valid, subMean_right_out, 
            subMean_right_valid, subMean_left_out, subMean_left_valid) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(1[8:11])
    input rst;   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:32])
    input i_sd;   // c:/users/sec29/desktop/i2s_iot/top.v(37[32:36])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/top.v(35[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/top.v(36[32:36])
    output [15:0]o_left_data;   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    output [15:0]o_right_data;   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    output o_left_vld;   // c:/users/sec29/desktop/i2s_iot/top.v(41[32:42])
    output o_right_vld;   // c:/users/sec29/desktop/i2s_iot/top.v(46[30:41])
    input i_sd2;   // c:/users/sec29/desktop/i2s_iot/top.v(58[32:37])
    output o_sck2;   // c:/users/sec29/desktop/i2s_iot/top.v(56[29:35])
    output o_ws2;   // c:/users/sec29/desktop/i2s_iot/top.v(57[32:37])
    output [15:0]o_left_data2;   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    output [15:0]o_right_data2;   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    output o_left_vld2;   // c:/users/sec29/desktop/i2s_iot/top.v(44[33:44])
    output o_right_vld2;   // c:/users/sec29/desktop/i2s_iot/top.v(44[45:57])
    output zcr_valid_right;   // c:/users/sec29/desktop/i2s_iot/top.v(46[42:57])
    output zcr_valid_left;   // c:/users/sec29/desktop/i2s_iot/top.v(46[58:72])
    output ste_left;   // c:/users/sec29/desktop/i2s_iot/top.v(47[30:38])
    output ste_left_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(47[39:53])
    output ste_right;   // c:/users/sec29/desktop/i2s_iot/top.v(48[27:36])
    output ste_right_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(48[37:52])
    output [15:0]subMean_right_out;   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    output subMean_right_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(50[14:33])
    output [15:0]subMean_left_out;   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    output subMean_left_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(52[16:34])
    
    wire o_sck_adj /* synthesis SET_AS_NETWORK=o_sck_c */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(35[32:37])
    wire n5582 /* synthesis nomerge= */ ;
    
    wire GND_net, rst_c, o_ws_c, i_sd_c, o_left_data_c_15, o_left_data_c_14, 
        o_left_data_c_13, o_left_data_c_12, o_left_data_c_11, o_left_data_c_10, 
        o_left_data_c_9, o_left_data_c_8, o_left_data_c_7, o_left_data_c_6, 
        o_left_data_c_5, o_left_data_c_4, o_left_data_c_3, o_left_data_c_2, 
        o_left_data_c_1, o_left_data_c_0, o_right_data_c_15, o_right_data_c_14, 
        o_right_data_c_13, o_right_data_c_12, o_right_data_c_11, o_right_data_c_10, 
        o_right_data_c_9, o_right_data_c_8, o_right_data_c_7, o_right_data_c_6, 
        o_right_data_c_5, o_right_data_c_4, o_right_data_c_3, o_right_data_c_2, 
        o_right_data_c_1, o_right_data_c_0, o_left_vld_c, o_right_vld_c, 
        ste_right_c, ste_right_valid_c, subMean_left_out_c_15, subMean_left_out_c_14, 
        subMean_left_out_c_13, subMean_left_out_c_12, subMean_left_out_c_11, 
        subMean_left_out_c_10, subMean_left_out_c_9, subMean_left_out_c_8, 
        subMean_left_out_c_7, subMean_left_out_c_6, subMean_left_out_c_5, 
        subMean_left_out_c_4, subMean_left_out_c_3, subMean_left_out_c_2, 
        subMean_left_out_c_1, subMean_left_out_c_0, subMean_left_valid_c;
    wire [15:0]left_out;   // c:/users/sec29/desktop/i2s_iot/top.v(61[19:27])
    wire [15:0]right_out;   // c:/users/sec29/desktop/i2s_iot/top.v(61[28:37])
    
    wire zcr_valid_right_c;
    wire [15:0]n358;
    wire [31:0]n100;
    wire [31:0]n171;
    
    wire osc_clk, n4, lock, n256, fifo_read_clk, VCC_net, n10;
    wire [15:0]n340;
    wire [4:0]window_count_adj_46;   // c:/users/sec29/desktop/i2s_iot/submean.v(21[11:23])
    wire [31:0]m;   // c:/users/sec29/desktop/i2s_iot/submean.v(24[9:10])
    
    wire n9, n8, n7, n3216, n3215, n7_adj_23, n8_adj_24, n9_adj_25, 
        n10_adj_26, n3221, n3220, n3219, n3218, n3217, n3214, 
        n3178, n3177, n3175, n3174, n3176, n3173, n3172, n5598, 
        n3171, n4949, n4946;
    
    VHI sub_7_i2 (.Z(VCC_net));
    fifo_left left1 (.n117(n100[15]), .n118(n100[14]), .n119(n100[13]), 
            .n120(n100[12]), .n121(n100[11]), .n122(n100[10]), .n123(n100[9]), 
            .n124(n100[8]), .n125(n100[7]), .n126(n100[6]), .n127(n100[5]), 
            .n128(n100[4]), .n129(n100[3]), .n130(n100[2]), .n131(n100[1]), 
            .n132(n100[0]), .o_sck_c(o_sck_adj), .fifo_read_clk_keep(fifo_read_clk), 
            .o_left_vld_c(o_left_vld_c), .VCC_net(VCC_net), .n4946(n4946), 
            .GND_net(GND_net), .left_out({left_out})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[11] 116[20])
    INV i5036 (.A(o_sck_adj), .Z(n4));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    I2S_Controller port1 (.o_ws_c(o_ws_c), .n4(n4), .o_sck_c(o_sck_adj), 
            .o_left_data_c_0(o_left_data_c_0), .o_right_data_c_0(o_right_data_c_0), 
            .o_left_vld_c(o_left_vld_c), .o_right_vld_c(o_right_vld_c), 
            .VCC_net(VCC_net), .GND_net(GND_net), .i_sd_c(i_sd_c), .o_left_data_c_1(o_left_data_c_1), 
            .o_left_data_c_2(o_left_data_c_2), .o_left_data_c_3(o_left_data_c_3), 
            .o_left_data_c_4(o_left_data_c_4), .o_left_data_c_5(o_left_data_c_5), 
            .o_left_data_c_6(o_left_data_c_6), .o_left_data_c_7(o_left_data_c_7), 
            .o_left_data_c_8(o_left_data_c_8), .o_left_data_c_9(o_left_data_c_9), 
            .o_left_data_c_10(o_left_data_c_10), .o_left_data_c_11(o_left_data_c_11), 
            .o_left_data_c_12(o_left_data_c_12), .o_left_data_c_13(o_left_data_c_13), 
            .o_left_data_c_14(o_left_data_c_14), .o_left_data_c_15(o_left_data_c_15), 
            .o_right_data_c_1(o_right_data_c_1), .o_right_data_c_2(o_right_data_c_2), 
            .o_right_data_c_3(o_right_data_c_3), .o_right_data_c_4(o_right_data_c_4), 
            .o_right_data_c_5(o_right_data_c_5), .o_right_data_c_6(o_right_data_c_6), 
            .o_right_data_c_7(o_right_data_c_7), .o_right_data_c_8(o_right_data_c_8), 
            .o_right_data_c_9(o_right_data_c_9), .o_right_data_c_10(o_right_data_c_10), 
            .o_right_data_c_11(o_right_data_c_11), .o_right_data_c_12(o_right_data_c_12), 
            .o_right_data_c_13(o_right_data_c_13), .o_right_data_c_14(o_right_data_c_14), 
            .o_right_data_c_15(o_right_data_c_15)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(71[18] 81[25])
    LUT4 i1_2_lut_rep_16 (.A(rst_c), .B(lock), .Z(n4949)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_16.init = 16'h4444;
    OB o_left_data_pad_12 (.I(o_left_data_c_12), .O(o_left_data[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_13 (.I(o_left_data_c_13), .O(o_left_data[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    CCU2D add_83_7 (.A0(o_left_data_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3173), .COUT(n3174), .S0(n358[5]), .S1(n358[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_7.INIT0 = 16'h5555;
    defparam add_83_7.INIT1 = 16'h5555;
    defparam add_83_7.INJECT1_0 = "NO";
    defparam add_83_7.INJECT1_1 = "NO";
    LUT4 i1467_1_lut_rep_13_2_lut (.A(rst_c), .B(lock), .Z(n4946)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1467_1_lut_rep_13_2_lut.init = 16'hbbbb;
    CCU2D add_83_17 (.A0(o_left_data_c_15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3178), .S0(n358[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_17.INIT0 = 16'h5555;
    defparam add_83_17.INIT1 = 16'h0000;
    defparam add_83_17.INJECT1_0 = "NO";
    defparam add_83_17.INJECT1_1 = "NO";
    CCU2D add_83_5 (.A0(o_left_data_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3172), .COUT(n3173), .S0(n358[3]), .S1(n358[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_5.INIT0 = 16'h5555;
    defparam add_83_5.INIT1 = 16'h5555;
    defparam add_83_5.INJECT1_0 = "NO";
    defparam add_83_5.INJECT1_1 = "NO";
    LUT4 inv_6_i16_1_lut (.A(n340[15]), .Z(n100[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i16_1_lut.init = 16'h5555;
    OB o_left_data_pad_11 (.I(o_left_data_c_11), .O(o_left_data[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_14 (.I(o_left_data_c_14), .O(o_left_data[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    CCU2D add_83_3 (.A0(o_left_data_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3171), .COUT(n3172), .S0(n358[1]), .S1(n358[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_3.INIT0 = 16'h5555;
    defparam add_83_3.INIT1 = 16'h5555;
    defparam add_83_3.INJECT1_0 = "NO";
    defparam add_83_3.INJECT1_1 = "NO";
    OB o_left_data_pad_15 (.I(o_left_data_c_15), .O(o_left_data[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/top.v(36[32:36])
    OB o_sck_pad (.I(o_sck_adj), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/top.v(35[32:37])
    LUT4 inv_6_i15_1_lut (.A(n340[14]), .Z(n100[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i15_1_lut.init = 16'h5555;
    LUT4 inv_6_i14_1_lut (.A(n340[13]), .Z(n100[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i14_1_lut.init = 16'h5555;
    LUT4 inv_6_i13_1_lut (.A(n340[12]), .Z(n100[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i13_1_lut.init = 16'h5555;
    LUT4 inv_6_i12_1_lut (.A(n340[11]), .Z(n100[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i12_1_lut.init = 16'h5555;
    LUT4 inv_6_i11_1_lut (.A(n340[10]), .Z(n100[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i11_1_lut.init = 16'h5555;
    LUT4 inv_6_i10_1_lut (.A(n340[9]), .Z(n100[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i10_1_lut.init = 16'h5555;
    OB o_left_data_pad_10 (.I(o_left_data_c_10), .O(o_left_data[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_9 (.I(o_left_data_c_9), .O(o_left_data[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_8 (.I(o_left_data_c_8), .O(o_left_data[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_7 (.I(o_left_data_c_7), .O(o_left_data[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_6 (.I(o_left_data_c_6), .O(o_left_data[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_5 (.I(o_left_data_c_5), .O(o_left_data[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_4 (.I(o_left_data_c_4), .O(o_left_data[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_3 (.I(o_left_data_c_3), .O(o_left_data[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_2 (.I(o_left_data_c_2), .O(o_left_data[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_1 (.I(o_left_data_c_1), .O(o_left_data[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_left_data_pad_0 (.I(o_left_data_c_0), .O(o_left_data[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(39[33:44])
    OB o_right_data_pad_15 (.I(o_right_data_c_15), .O(o_right_data[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_14 (.I(o_right_data_c_14), .O(o_right_data[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_13 (.I(o_right_data_c_13), .O(o_right_data[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_12 (.I(o_right_data_c_12), .O(o_right_data[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_11 (.I(o_right_data_c_11), .O(o_right_data[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_10 (.I(o_right_data_c_10), .O(o_right_data[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_9 (.I(o_right_data_c_9), .O(o_right_data[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_8 (.I(o_right_data_c_8), .O(o_right_data[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_7 (.I(o_right_data_c_7), .O(o_right_data[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_6 (.I(o_right_data_c_6), .O(o_right_data[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_5 (.I(o_right_data_c_5), .O(o_right_data[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_4 (.I(o_right_data_c_4), .O(o_right_data[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_3 (.I(o_right_data_c_3), .O(o_right_data[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_2 (.I(o_right_data_c_2), .O(o_right_data[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_1 (.I(o_right_data_c_1), .O(o_right_data[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_right_data_pad_0 (.I(o_right_data_c_0), .O(o_right_data[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(40[33:45])
    OB o_left_vld_pad (.I(o_left_vld_c), .O(o_left_vld));   // c:/users/sec29/desktop/i2s_iot/top.v(41[32:42])
    OB o_right_vld_pad (.I(o_right_vld_c), .O(o_right_vld));   // c:/users/sec29/desktop/i2s_iot/top.v(46[30:41])
    OB o_sck2_pad (.I(GND_net), .O(o_sck2));   // c:/users/sec29/desktop/i2s_iot/top.v(56[29:35])
    OB o_ws2_pad (.I(GND_net), .O(o_ws2));   // c:/users/sec29/desktop/i2s_iot/top.v(57[32:37])
    OB o_left_data2_pad_15 (.I(GND_net), .O(o_left_data2[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_14 (.I(GND_net), .O(o_left_data2[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_13 (.I(GND_net), .O(o_left_data2[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_12 (.I(GND_net), .O(o_left_data2[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_11 (.I(GND_net), .O(o_left_data2[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_10 (.I(GND_net), .O(o_left_data2[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_9 (.I(GND_net), .O(o_left_data2[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_8 (.I(GND_net), .O(o_left_data2[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_7 (.I(GND_net), .O(o_left_data2[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_6 (.I(GND_net), .O(o_left_data2[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_5 (.I(GND_net), .O(o_left_data2[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_4 (.I(GND_net), .O(o_left_data2[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_3 (.I(GND_net), .O(o_left_data2[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_2 (.I(GND_net), .O(o_left_data2[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_1 (.I(GND_net), .O(o_left_data2[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_left_data2_pad_0 (.I(GND_net), .O(o_left_data2[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(42[30:42])
    OB o_right_data2_pad_15 (.I(GND_net), .O(o_right_data2[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_14 (.I(GND_net), .O(o_right_data2[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_13 (.I(GND_net), .O(o_right_data2[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_12 (.I(GND_net), .O(o_right_data2[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_11 (.I(GND_net), .O(o_right_data2[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_10 (.I(GND_net), .O(o_right_data2[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_9 (.I(GND_net), .O(o_right_data2[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_8 (.I(GND_net), .O(o_right_data2[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_7 (.I(GND_net), .O(o_right_data2[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_6 (.I(GND_net), .O(o_right_data2[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_5 (.I(GND_net), .O(o_right_data2[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_4 (.I(GND_net), .O(o_right_data2[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_3 (.I(GND_net), .O(o_right_data2[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_2 (.I(GND_net), .O(o_right_data2[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_1 (.I(GND_net), .O(o_right_data2[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_right_data2_pad_0 (.I(GND_net), .O(o_right_data2[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(43[33:46])
    OB o_left_vld2_pad (.I(GND_net), .O(o_left_vld2));   // c:/users/sec29/desktop/i2s_iot/top.v(44[33:44])
    OB o_right_vld2_pad (.I(GND_net), .O(o_right_vld2));   // c:/users/sec29/desktop/i2s_iot/top.v(44[45:57])
    OB zcr_valid_right_pad (.I(zcr_valid_right_c), .O(zcr_valid_right));   // c:/users/sec29/desktop/i2s_iot/top.v(46[42:57])
    OBZ zcr_valid_left_pad (.I(GND_net), .T(VCC_net), .O(zcr_valid_left));   // c:/users/sec29/desktop/i2s_iot/top.v(46[58:72])
    OBZ ste_left_pad (.I(GND_net), .T(VCC_net), .O(ste_left));   // c:/users/sec29/desktop/i2s_iot/top.v(47[30:38])
    OBZ ste_left_valid_pad (.I(GND_net), .T(VCC_net), .O(ste_left_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(47[39:53])
    OB ste_right_pad (.I(ste_right_c), .O(ste_right));   // c:/users/sec29/desktop/i2s_iot/top.v(48[27:36])
    OB ste_right_valid_pad (.I(ste_right_valid_c), .O(ste_right_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(48[37:52])
    OBZ subMean_right_out_pad_15 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_14 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_13 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_12 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_11 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_10 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_9 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_8 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_7 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_6 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_5 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_4 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_3 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_2 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_1 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_out_pad_0 (.I(GND_net), .T(VCC_net), .O(subMean_right_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(49[28:45])
    OBZ subMean_right_valid_pad (.I(GND_net), .T(VCC_net), .O(subMean_right_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(50[14:33])
    OB subMean_left_out_pad_15 (.I(subMean_left_out_c_15), .O(subMean_left_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_14 (.I(subMean_left_out_c_14), .O(subMean_left_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_13 (.I(subMean_left_out_c_13), .O(subMean_left_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_12 (.I(subMean_left_out_c_12), .O(subMean_left_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_11 (.I(subMean_left_out_c_11), .O(subMean_left_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_10 (.I(subMean_left_out_c_10), .O(subMean_left_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_9 (.I(subMean_left_out_c_9), .O(subMean_left_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_8 (.I(subMean_left_out_c_8), .O(subMean_left_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_7 (.I(subMean_left_out_c_7), .O(subMean_left_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_6 (.I(subMean_left_out_c_6), .O(subMean_left_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_5 (.I(subMean_left_out_c_5), .O(subMean_left_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_4 (.I(subMean_left_out_c_4), .O(subMean_left_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_3 (.I(subMean_left_out_c_3), .O(subMean_left_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_2 (.I(subMean_left_out_c_2), .O(subMean_left_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_1 (.I(subMean_left_out_c_1), .O(subMean_left_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_out_pad_0 (.I(subMean_left_out_c_0), .O(subMean_left_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(51[28:44])
    OB subMean_left_valid_pad (.I(subMean_left_valid_c), .O(subMean_left_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(52[16:34])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:32])
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // c:/users/sec29/desktop/i2s_iot/top.v(37[32:36])
    LUT4 inv_6_i9_1_lut (.A(n340[8]), .Z(n100[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i9_1_lut.init = 16'h5555;
    LUT4 inv_6_i8_1_lut (.A(n340[7]), .Z(n100[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i8_1_lut.init = 16'h5555;
    LUT4 inv_6_i7_1_lut (.A(n340[6]), .Z(n100[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i7_1_lut.init = 16'h5555;
    LUT4 inv_6_i6_1_lut (.A(n340[5]), .Z(n100[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i6_1_lut.init = 16'h5555;
    LUT4 inv_6_i5_1_lut (.A(n340[4]), .Z(n100[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i5_1_lut.init = 16'h5555;
    LUT4 inv_6_i4_1_lut (.A(n340[3]), .Z(n100[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i4_1_lut.init = 16'h5555;
    LUT4 inv_6_i3_1_lut (.A(n340[2]), .Z(n100[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i3_1_lut.init = 16'h5555;
    LUT4 inv_6_i2_1_lut (.A(n340[1]), .Z(n100[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i2_1_lut.init = 16'h5555;
    LUT4 inv_6_i1_1_lut (.A(n340[0]), .Z(n100[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[24:41])
    defparam inv_6_i1_1_lut.init = 16'h5555;
    LUT4 inv_8_i16_1_lut (.A(n358[15]), .Z(n171[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i16_1_lut.init = 16'h5555;
    LUT4 inv_8_i15_1_lut (.A(n358[14]), .Z(n171[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i15_1_lut.init = 16'h5555;
    LUT4 inv_8_i14_1_lut (.A(n358[13]), .Z(n171[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i14_1_lut.init = 16'h5555;
    LUT4 inv_8_i13_1_lut (.A(n358[12]), .Z(n171[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i13_1_lut.init = 16'h5555;
    LUT4 inv_8_i12_1_lut (.A(n358[11]), .Z(n171[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i12_1_lut.init = 16'h5555;
    LUT4 inv_8_i11_1_lut (.A(n358[10]), .Z(n171[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i11_1_lut.init = 16'h5555;
    LUT4 inv_8_i10_1_lut (.A(n358[9]), .Z(n171[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i10_1_lut.init = 16'h5555;
    LUT4 inv_8_i9_1_lut (.A(n358[8]), .Z(n171[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i9_1_lut.init = 16'h5555;
    LUT4 inv_8_i8_1_lut (.A(n358[7]), .Z(n171[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i8_1_lut.init = 16'h5555;
    LUT4 inv_8_i7_1_lut (.A(n358[6]), .Z(n171[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i7_1_lut.init = 16'h5555;
    LUT4 inv_8_i6_1_lut (.A(n358[5]), .Z(n171[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i6_1_lut.init = 16'h5555;
    LUT4 inv_8_i5_1_lut (.A(n358[4]), .Z(n171[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i5_1_lut.init = 16'h5555;
    LUT4 inv_8_i4_1_lut (.A(n358[3]), .Z(n171[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i4_1_lut.init = 16'h5555;
    LUT4 inv_8_i3_1_lut (.A(n358[2]), .Z(n171[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i3_1_lut.init = 16'h5555;
    LUT4 inv_8_i2_1_lut (.A(n358[1]), .Z(n171[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i2_1_lut.init = 16'h5555;
    LUT4 inv_8_i1_1_lut (.A(n358[0]), .Z(n171[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[27:43])
    defparam inv_8_i1_1_lut.init = 16'h5555;
    CCU2D add_83_11 (.A0(o_left_data_c_9), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_10), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3175), .COUT(n3176), .S0(n358[9]), .S1(n358[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_11.INIT0 = 16'h5555;
    defparam add_83_11.INIT1 = 16'h5555;
    defparam add_83_11.INJECT1_0 = "NO";
    defparam add_83_11.INJECT1_1 = "NO";
    CCU2D add_83_15 (.A0(o_left_data_c_13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_14), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3177), .COUT(n3178), .S0(n358[13]), .S1(n358[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_15.INIT0 = 16'h5555;
    defparam add_83_15.INIT1 = 16'h5555;
    defparam add_83_15.INJECT1_0 = "NO";
    defparam add_83_15.INJECT1_1 = "NO";
    CCU2D add_83_13 (.A0(o_left_data_c_11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_12), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3176), .COUT(n3177), .S0(n358[11]), .S1(n358[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_13.INIT0 = 16'h5555;
    defparam add_83_13.INIT1 = 16'h5555;
    defparam add_83_13.INJECT1_0 = "NO";
    defparam add_83_13.INJECT1_1 = "NO";
    CCU2D add_83_9 (.A0(o_left_data_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_8), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3174), .COUT(n3175), .S0(n358[7]), .S1(n358[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_9.INIT0 = 16'h5555;
    defparam add_83_9.INIT1 = 16'h5555;
    defparam add_83_9.INJECT1_0 = "NO";
    defparam add_83_9.INJECT1_1 = "NO";
    LUT4 m1_lut (.Z(n5582)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_82_17 (.A0(o_right_data_c_15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3221), .S0(n340[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_17.INIT0 = 16'h5555;
    defparam add_82_17.INIT1 = 16'h0000;
    defparam add_82_17.INJECT1_0 = "NO";
    defparam add_82_17.INJECT1_1 = "NO";
    CCU2D add_82_15 (.A0(o_right_data_c_13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_14), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3220), .COUT(n3221), .S0(n340[13]), .S1(n340[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_15.INIT0 = 16'h5555;
    defparam add_82_15.INIT1 = 16'h5555;
    defparam add_82_15.INJECT1_0 = "NO";
    defparam add_82_15.INJECT1_1 = "NO";
    CCU2D add_82_13 (.A0(o_right_data_c_11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_12), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3219), .COUT(n3220), .S0(n340[11]), .S1(n340[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_13.INIT0 = 16'h5555;
    defparam add_82_13.INIT1 = 16'h5555;
    defparam add_82_13.INJECT1_0 = "NO";
    defparam add_82_13.INJECT1_1 = "NO";
    CCU2D add_82_11 (.A0(o_right_data_c_9), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_10), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3218), .COUT(n3219), .S0(n340[9]), .S1(n340[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_11.INIT0 = 16'h5555;
    defparam add_82_11.INIT1 = 16'h5555;
    defparam add_82_11.INJECT1_0 = "NO";
    defparam add_82_11.INJECT1_1 = "NO";
    CCU2D add_82_9 (.A0(o_right_data_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_8), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3217), .COUT(n3218), .S0(n340[7]), .S1(n340[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_9.INIT0 = 16'h5555;
    defparam add_82_9.INIT1 = 16'h5555;
    defparam add_82_9.INJECT1_0 = "NO";
    defparam add_82_9.INJECT1_1 = "NO";
    CCU2D add_82_7 (.A0(o_right_data_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3216), .COUT(n3217), .S0(n340[5]), .S1(n340[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_7.INIT0 = 16'h5555;
    defparam add_82_7.INIT1 = 16'h5555;
    defparam add_82_7.INJECT1_0 = "NO";
    defparam add_82_7.INJECT1_1 = "NO";
    CCU2D add_82_5 (.A0(o_right_data_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3215), .COUT(n3216), .S0(n340[3]), .S1(n340[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_5.INIT0 = 16'h5555;
    defparam add_82_5.INIT1 = 16'h5555;
    defparam add_82_5.INJECT1_0 = "NO";
    defparam add_82_5.INJECT1_1 = "NO";
    CCU2D add_82_3 (.A0(o_right_data_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3214), .COUT(n3215), .S0(n340[1]), .S1(n340[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_3.INIT0 = 16'h5555;
    defparam add_82_3.INIT1 = 16'h5555;
    defparam add_82_3.INJECT1_0 = "NO";
    defparam add_82_3.INJECT1_1 = "NO";
    CCU2D add_82_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_right_data_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3214), .S1(n340[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(114[25:41])
    defparam add_82_1.INIT0 = 16'hF000;
    defparam add_82_1.INIT1 = 16'h5555;
    defparam add_82_1.INJECT1_0 = "NO";
    defparam add_82_1.INJECT1_1 = "NO";
    CCU2D add_83_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_left_data_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3171), .S1(n358[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(117[28:43])
    defparam add_83_1.INIT0 = 16'hF000;
    defparam add_83_1.INIT1 = 16'h5555;
    defparam add_83_1.INJECT1_0 = "NO";
    defparam add_83_1.INJECT1_1 = "NO";
    subMean subMean1 (.fifo_read_clk_keep(fifo_read_clk), .window_count({window_count_adj_46[4], 
            Open_0, Open_1, window_count_adj_46[1], Open_2}), .GND_net(GND_net), 
            .\m[0] (m[0]), .n5598(n5598), .subMean_left_valid_c(subMean_left_valid_c), 
            .n4949(n4949), .left_out({left_out}), .\window_count[0] (window_count_adj_46[0]), 
            .subMean_left_out_c_15(subMean_left_out_c_15), .VCC_net(VCC_net), 
            .subMean_left_out_c_0(subMean_left_out_c_0), .subMean_left_out_c_1(subMean_left_out_c_1), 
            .subMean_left_out_c_2(subMean_left_out_c_2), .subMean_left_out_c_3(subMean_left_out_c_3), 
            .subMean_left_out_c_4(subMean_left_out_c_4), .subMean_left_out_c_5(subMean_left_out_c_5), 
            .subMean_left_out_c_6(subMean_left_out_c_6), .subMean_left_out_c_7(subMean_left_out_c_7), 
            .subMean_left_out_c_8(subMean_left_out_c_8), .subMean_left_out_c_9(subMean_left_out_c_9), 
            .subMean_left_out_c_10(subMean_left_out_c_10), .subMean_left_out_c_11(subMean_left_out_c_11), 
            .subMean_left_out_c_12(subMean_left_out_c_12), .subMean_left_out_c_13(subMean_left_out_c_13), 
            .subMean_left_out_c_14(subMean_left_out_c_14), .n8(n8), .n8_adj_5(n8_adj_24), 
            .n10(n10), .n10_adj_6(n10_adj_26), .n7(n7), .n7_adj_7(n7_adj_23), 
            .n9(n9), .n9_adj_8(n9_adj_25), .n5582(n5582)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(156[9] 162[2])
    VLO i1 (.Z(GND_net));
    zcr zcr1 (.zcr_valid_right_c(zcr_valid_right_c), .fifo_read_clk_keep(fifo_read_clk), 
        .n4949(n4949), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(123[5] 129[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    fifo_right right1 (.n188(n171[15]), .n189(n171[14]), .n190(n171[13]), 
            .n191(n171[12]), .n192(n171[11]), .n193(n171[10]), .n194(n171[9]), 
            .n195(n171[8]), .n196(n171[7]), .n197(n171[6]), .n198(n171[5]), 
            .n199(n171[4]), .n200(n171[3]), .n201(n171[2]), .n202(n171[1]), 
            .n203(n171[0]), .o_sck_c(o_sck_adj), .fifo_read_clk_keep(fifo_read_clk), 
            .o_right_vld_c(o_right_vld_c), .VCC_net(VCC_net), .n4946(n4946), 
            .GND_net(GND_net), .\right_out[14] (right_out[14]), .\right_out[13] (right_out[13]), 
            .\right_out[12] (right_out[12]), .\right_out[11] (right_out[11]), 
            .\right_out[10] (right_out[10]), .\right_out[9] (right_out[9]), 
            .\right_out[8] (right_out[8])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[13] 119[20])
    pll1 my_pll (.osc_clk_keep(osc_clk), .rst_keep(rst_c), .o_sck_adj(o_sck_adj), 
         .fifo_read_clk(fifo_read_clk), .n256(n256), .lock(lock), .GND_net(GND_net)) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(88[10] 95[3])
    GSR GSR_INST (.GSR(n4949));
    ste ste1 (.ste_right_valid_c(ste_right_valid_c), .fifo_read_clk_keep(fifo_read_clk), 
        .n4949(n4949), .GND_net(GND_net), .\window_count[4] (window_count_adj_46[4]), 
        .\window_count[1] (window_count_adj_46[1]), .\window_count[0] (window_count_adj_46[0]), 
        .n10(n10), .n9(n9), .n7(n7), .n8(n8), .\m[0] (m[0]), .n5598(n5598), 
        .n9_adj_1(n9_adj_25), .n7_adj_2(n7_adj_23), .n10_adj_3(n10_adj_26), 
        .n8_adj_4(n8_adj_24), .ste_right_c(ste_right_c), .VCC_net(VCC_net), 
        .\right_out[14] (right_out[14]), .\right_out[13] (right_out[13]), 
        .\right_out[12] (right_out[12]), .\right_out[11] (right_out[11]), 
        .\right_out[10] (right_out[10]), .\right_out[9] (right_out[9]), 
        .\right_out[8] (right_out[8])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(140[5] 146[2])
    
endmodule
//
// Verilog Description of module fifo_left
//

module fifo_left (n117, n118, n119, n120, n121, n122, n123, n124, 
            n125, n126, n127, n128, n129, n130, n131, n132, 
            o_sck_c, fifo_read_clk_keep, o_left_vld_c, VCC_net, n4946, 
            GND_net, left_out) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input n117;
    input n118;
    input n119;
    input n120;
    input n121;
    input n122;
    input n123;
    input n124;
    input n125;
    input n126;
    input n127;
    input n128;
    input n129;
    input n130;
    input n131;
    input n132;
    input o_sck_c;
    input fifo_read_clk_keep;
    input o_left_vld_c;
    input VCC_net;
    input n4946;
    input GND_net;
    output [15:0]left_out;
    
    
    wire Empty, Full;
    
    FIFO8KB fifo_left_0_0 (.DI0(n132), .DI1(n131), .DI2(n130), .DI3(n129), 
            .DI4(n128), .DI5(n127), .DI6(n126), .DI7(n125), .DI8(n124), 
            .DI9(n123), .DI10(n122), .DI11(n121), .DI12(n120), .DI13(n119), 
            .DI14(n118), .DI15(n117), .DI16(GND_net), .DI17(GND_net), 
            .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), .CSW0(VCC_net), 
            .CSR1(VCC_net), .CSR0(VCC_net), .WE(o_left_vld_c), .RE(VCC_net), 
            .ORE(VCC_net), .CLKW(o_sck_c), .CLKR(fifo_read_clk_keep), 
            .RST(n4946), .RPRST(GND_net), .DO0(left_out[9]), .DO1(left_out[10]), 
            .DO2(left_out[11]), .DO3(left_out[12]), .DO4(left_out[13]), 
            .DO5(left_out[14]), .DO6(left_out[15]), .DO9(left_out[0]), 
            .DO10(left_out[1]), .DO11(left_out[2]), .DO12(left_out[3]), 
            .DO13(left_out[4]), .DO14(left_out[5]), .DO15(left_out[6]), 
            .DO16(left_out[7]), .DO17(left_out[8]), .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=114, LSE_RLINE=116 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(114[11] 116[20])
    defparam fifo_left_0_0.DATA_WIDTH_W = 18;
    defparam fifo_left_0_0.DATA_WIDTH_R = 18;
    defparam fifo_left_0_0.REGMODE = "NOREG";
    defparam fifo_left_0_0.RESETMODE = "ASYNC";
    defparam fifo_left_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam fifo_left_0_0.CSDECODE_W = "0b11";
    defparam fifo_left_0_0.CSDECODE_R = "0b11";
    defparam fifo_left_0_0.AEPOINTER = "0b00000010100000";
    defparam fifo_left_0_0.AEPOINTER1 = "0b00000010110000";
    defparam fifo_left_0_0.AFPOINTER = "0b01111111000000";
    defparam fifo_left_0_0.AFPOINTER1 = "0b01111110110000";
    defparam fifo_left_0_0.FULLPOINTER = "0b10000000000000";
    defparam fifo_left_0_0.FULLPOINTER1 = "0b01111111110000";
    defparam fifo_left_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module I2S_Controller
//

module I2S_Controller (o_ws_c, n4, o_sck_c, o_left_data_c_0, o_right_data_c_0, 
            o_left_vld_c, o_right_vld_c, VCC_net, GND_net, i_sd_c, 
            o_left_data_c_1, o_left_data_c_2, o_left_data_c_3, o_left_data_c_4, 
            o_left_data_c_5, o_left_data_c_6, o_left_data_c_7, o_left_data_c_8, 
            o_left_data_c_9, o_left_data_c_10, o_left_data_c_11, o_left_data_c_12, 
            o_left_data_c_13, o_left_data_c_14, o_left_data_c_15, o_right_data_c_1, 
            o_right_data_c_2, o_right_data_c_3, o_right_data_c_4, o_right_data_c_5, 
            o_right_data_c_6, o_right_data_c_7, o_right_data_c_8, o_right_data_c_9, 
            o_right_data_c_10, o_right_data_c_11, o_right_data_c_12, o_right_data_c_13, 
            o_right_data_c_14, o_right_data_c_15) /* synthesis syn_module_defined=1 */ ;
    output o_ws_c;
    input n4;
    input o_sck_c;
    output o_left_data_c_0;
    output o_right_data_c_0;
    output o_left_vld_c;
    output o_right_vld_c;
    input VCC_net;
    input GND_net;
    input i_sd_c;
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
    output o_left_data_c_15;
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
    output o_right_data_c_15;
    
    
    wire n952;
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire [3:0]n22;
    
    wire n1921;
    
    FD1S3AX o_ws_13 (.D(n952), .CK(n4), .Q(o_ws_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=25, LSE_LLINE=71, LSE_RLINE=81 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(55[3] 63[7])
    defparam o_ws_13.GSR = "DISABLED";
    LUT4 i2445_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[3]), .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2445_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2438_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2438_2_lut_3_lut.init = 16'h7878;
    FD1S3IX count_131_132__i4 (.D(n22[3]), .CK(n4), .CD(n1921), .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(57[10:17])
    defparam count_131_132__i4.GSR = "DISABLED";
    FD1S3IX count_131_132__i3 (.D(n22[2]), .CK(n4), .CD(n1921), .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(57[10:17])
    defparam count_131_132__i3.GSR = "DISABLED";
    FD1S3IX count_131_132__i2 (.D(n22[1]), .CK(n4), .CD(n1921), .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(57[10:17])
    defparam count_131_132__i2.GSR = "DISABLED";
    LUT4 i2429_1_lut (.A(count[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i2429_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(o_ws_c), .B(n1921), .Z(n952)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(count[0]), .B(count[1]), .C(count[2]), .D(count[3]), 
         .Z(n1921)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2431_2_lut (.A(count[1]), .B(count[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2431_2_lut.init = 16'h6666;
    FD1S3IX count_131_132__i1 (.D(n22[0]), .CK(n4), .CD(n1921), .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(57[10:17])
    defparam count_131_132__i1.GSR = "DISABLED";
    i2s_rx i2s_rx_inst (.o_sck_c(o_sck_c), .o_left_data_c_0(o_left_data_c_0), 
           .o_right_data_c_0(o_right_data_c_0), .o_left_vld_c(o_left_vld_c), 
           .o_right_vld_c(o_right_vld_c), .o_ws_c(o_ws_c), .VCC_net(VCC_net), 
           .GND_net(GND_net), .i_sd_c(i_sd_c), .o_left_data_c_1(o_left_data_c_1), 
           .o_left_data_c_2(o_left_data_c_2), .o_left_data_c_3(o_left_data_c_3), 
           .o_left_data_c_4(o_left_data_c_4), .o_left_data_c_5(o_left_data_c_5), 
           .o_left_data_c_6(o_left_data_c_6), .o_left_data_c_7(o_left_data_c_7), 
           .o_left_data_c_8(o_left_data_c_8), .o_left_data_c_9(o_left_data_c_9), 
           .o_left_data_c_10(o_left_data_c_10), .o_left_data_c_11(o_left_data_c_11), 
           .o_left_data_c_12(o_left_data_c_12), .o_left_data_c_13(o_left_data_c_13), 
           .o_left_data_c_14(o_left_data_c_14), .o_left_data_c_15(o_left_data_c_15), 
           .o_right_data_c_1(o_right_data_c_1), .o_right_data_c_2(o_right_data_c_2), 
           .o_right_data_c_3(o_right_data_c_3), .o_right_data_c_4(o_right_data_c_4), 
           .o_right_data_c_5(o_right_data_c_5), .o_right_data_c_6(o_right_data_c_6), 
           .o_right_data_c_7(o_right_data_c_7), .o_right_data_c_8(o_right_data_c_8), 
           .o_right_data_c_9(o_right_data_c_9), .o_right_data_c_10(o_right_data_c_10), 
           .o_right_data_c_11(o_right_data_c_11), .o_right_data_c_12(o_right_data_c_12), 
           .o_right_data_c_13(o_right_data_c_13), .o_right_data_c_14(o_right_data_c_14), 
           .o_right_data_c_15(o_right_data_c_15)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(68[13] 78[19])
    
endmodule
//
// Verilog Description of module i2s_rx
//

module i2s_rx (o_sck_c, o_left_data_c_0, o_right_data_c_0, o_left_vld_c, 
            o_right_vld_c, o_ws_c, VCC_net, GND_net, i_sd_c, o_left_data_c_1, 
            o_left_data_c_2, o_left_data_c_3, o_left_data_c_4, o_left_data_c_5, 
            o_left_data_c_6, o_left_data_c_7, o_left_data_c_8, o_left_data_c_9, 
            o_left_data_c_10, o_left_data_c_11, o_left_data_c_12, o_left_data_c_13, 
            o_left_data_c_14, o_left_data_c_15, o_right_data_c_1, o_right_data_c_2, 
            o_right_data_c_3, o_right_data_c_4, o_right_data_c_5, o_right_data_c_6, 
            o_right_data_c_7, o_right_data_c_8, o_right_data_c_9, o_right_data_c_10, 
            o_right_data_c_11, o_right_data_c_12, o_right_data_c_13, o_right_data_c_14, 
            o_right_data_c_15) /* synthesis syn_module_defined=1 */ ;
    input o_sck_c;
    output o_left_data_c_0;
    output o_right_data_c_0;
    output o_left_vld_c;
    output o_right_vld_c;
    input o_ws_c;
    input VCC_net;
    input GND_net;
    input i_sd_c;
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
    output o_left_data_c_15;
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
    output o_right_data_c_15;
    
    wire [15:0]right_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(44[33:49])
    
    wire ws_reg_i;
    wire [15:0]left_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(43[33:48])
    
    wire n4952, sd_i, ws_i, n4951;
    wire [15:0]left_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(56[33:55])
    wire [15:0]n88;
    
    wire right_vld_i, n1860, left_vld_reg_i, left_vld_i, right_vld_reg_i;
    wire [15:0]n123;
    wire [15:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(57[33:56])
    wire [15:0]n157;
    wire [15:0]n192;
    
    wire d1_left_vld, left_vld, d1_right_vld, right_vld, n3432, n3284, 
        n3283, n3282, n3281, n3280, n3279, n3278, n3277, n3276, 
        n3275, n3274, n3273, n3272, n3271, n3270, n3269;
    
    FD1P3AX right_data_reg_i_i0_i15 (.D(right_data_reg_i[14]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i15.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i14 (.D(right_data_reg_i[13]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i14.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i0 (.D(sd_i), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i0.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i13 (.D(right_data_reg_i[12]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i13.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i12 (.D(right_data_reg_i[11]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i12.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i11 (.D(right_data_reg_i[10]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i11.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i10 (.D(right_data_reg_i[9]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i10.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i0 (.D(sd_i), .SP(ws_reg_i), .CK(o_sck_c), 
            .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i0.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i9 (.D(right_data_reg_i[8]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i9.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i8 (.D(right_data_reg_i[7]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i8.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i7 (.D(right_data_reg_i[6]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i7.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i6 (.D(right_data_reg_i[5]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i6.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i5 (.D(right_data_reg_i[4]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i5.GSR = "DISABLED";
    LUT4 i3696_2_lut_rep_18 (.A(ws_reg_i), .B(ws_i), .Z(n4951)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[16:38])
    defparam i3696_2_lut_rep_18.init = 16'hdddd;
    FD1S3AX ws_reg_i_41 (.D(ws_i), .CK(o_sck_c), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_41.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i4 (.D(right_data_reg_i[3]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i4.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i3 (.D(right_data_reg_i[2]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i3.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i0 (.D(n88[0]), .CK(o_sck_c), .Q(left_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i0.GSR = "DISABLED";
    FD1S3AX right_vld_i_46 (.D(n1860), .CK(o_sck_c), .Q(right_vld_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam right_vld_i_46.GSR = "DISABLED";
    FD1S3AX left_vld_reg_i_47 (.D(left_vld_i), .CK(o_sck_c), .Q(left_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam left_vld_reg_i_47.GSR = "DISABLED";
    FD1S3AX right_vld_reg_i_48 (.D(right_vld_i), .CK(o_sck_c), .Q(right_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam right_vld_reg_i_48.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i1 (.D(n123[0]), .CK(o_sck_c), .Q(o_left_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i1.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i0 (.D(n157[0]), .CK(o_sck_c), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i0.GSR = "DISABLED";
    LUT4 i8_1_lut_rep_19 (.A(ws_reg_i), .Z(n4952)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[16:25])
    defparam i8_1_lut_rep_19.init = 16'h5555;
    FD1S3AX right_data_twos_compl_i_i1 (.D(n192[0]), .CK(o_sck_c), .Q(o_right_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i1.GSR = "DISABLED";
    FD1S3AX d1_left_vld_53 (.D(left_vld), .CK(o_sck_c), .Q(d1_left_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d1_left_vld_53.GSR = "DISABLED";
    FD1S3AX d2_left_vld_54 (.D(d1_left_vld), .CK(o_sck_c), .Q(o_left_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d2_left_vld_54.GSR = "DISABLED";
    FD1S3AX d1_right_vld_55 (.D(right_vld), .CK(o_sck_c), .Q(d1_right_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d1_right_vld_55.GSR = "DISABLED";
    FD1S3AX d2_right_vld_56 (.D(d1_right_vld), .CK(o_sck_c), .Q(o_right_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d2_right_vld_56.GSR = "DISABLED";
    FD1S3AX ws_i_40 (.D(o_ws_c), .CK(o_sck_c), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_i_40.GSR = "DISABLED";
    LUT4 i1133_4_lut_4_lut_3_lut (.A(ws_reg_i), .B(right_vld_i), .C(ws_i), 
         .Z(n1860)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[16:25])
    defparam i1133_4_lut_4_lut_3_lut.init = 16'h8e8e;
    FD1P3AX right_data_reg_i_i0_i2 (.D(right_data_reg_i[1]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i2.GSR = "DISABLED";
    FD1P3AX right_data_reg_i_i0_i1 (.D(right_data_reg_i[0]), .SP(ws_reg_i), 
            .CK(o_sck_c), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i1.GSR = "DISABLED";
    FD1P3AX left_vld_i_45 (.D(n4951), .SP(n3432), .CK(o_sck_c), .Q(left_vld_i));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam left_vld_i_45.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i15 (.D(left_data_reg_i[14]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i15.GSR = "DISABLED";
    IFS1P3DX sd_i_42 (.D(i_sd_c), .SP(VCC_net), .SCLK(o_sck_c), .CD(GND_net), 
            .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam sd_i_42.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i14 (.D(left_data_reg_i[13]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i14.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i13 (.D(left_data_reg_i[12]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i13.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i12 (.D(left_data_reg_i[11]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i12.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i11 (.D(left_data_reg_i[10]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i11.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i10 (.D(left_data_reg_i[9]), .SP(n4952), 
            .CK(o_sck_c), .Q(left_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i10.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i9 (.D(left_data_reg_i[8]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i9.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i8 (.D(left_data_reg_i[7]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i8.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i7 (.D(left_data_reg_i[6]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i7.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i6 (.D(left_data_reg_i[5]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i6.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i5 (.D(left_data_reg_i[4]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i5.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i4 (.D(left_data_reg_i[3]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i4.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i3 (.D(left_data_reg_i[2]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i3.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i2 (.D(left_data_reg_i[1]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i2.GSR = "DISABLED";
    FD1P3AX left_data_reg_i_i0_i1 (.D(left_data_reg_i[0]), .SP(n4952), .CK(o_sck_c), 
            .Q(left_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i1.GSR = "DISABLED";
    CCU2D add_29_17 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3284), .S0(n192[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_17.INIT0 = 16'h5aaa;
    defparam add_29_17.INIT1 = 16'h0000;
    defparam add_29_17.INJECT1_0 = "NO";
    defparam add_29_17.INJECT1_1 = "NO";
    CCU2D add_29_15 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3283), .COUT(n3284), .S0(n192[13]), 
          .S1(n192[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_15.INIT0 = 16'h5aaa;
    defparam add_29_15.INIT1 = 16'h5aaa;
    defparam add_29_15.INJECT1_0 = "NO";
    defparam add_29_15.INJECT1_1 = "NO";
    CCU2D add_29_13 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3282), .COUT(n3283), .S0(n192[11]), 
          .S1(n192[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_13.INIT0 = 16'h5aaa;
    defparam add_29_13.INIT1 = 16'h5aaa;
    defparam add_29_13.INJECT1_0 = "NO";
    defparam add_29_13.INJECT1_1 = "NO";
    CCU2D add_29_11 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3281), .COUT(n3282), .S0(n192[9]), 
          .S1(n192[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_11.INIT0 = 16'h5aaa;
    defparam add_29_11.INIT1 = 16'h5aaa;
    defparam add_29_11.INJECT1_0 = "NO";
    defparam add_29_11.INJECT1_1 = "NO";
    CCU2D add_29_9 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3280), .COUT(n3281), .S0(n192[7]), 
          .S1(n192[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_9.INIT0 = 16'h5aaa;
    defparam add_29_9.INIT1 = 16'h5aaa;
    defparam add_29_9.INJECT1_0 = "NO";
    defparam add_29_9.INJECT1_1 = "NO";
    CCU2D add_29_7 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3279), .COUT(n3280), .S0(n192[5]), 
          .S1(n192[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_7.INIT0 = 16'h5aaa;
    defparam add_29_7.INIT1 = 16'h5aaa;
    defparam add_29_7.INJECT1_0 = "NO";
    defparam add_29_7.INJECT1_1 = "NO";
    CCU2D add_29_5 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3278), .COUT(n3279), .S0(n192[3]), 
          .S1(n192[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_5.INIT0 = 16'h5aaa;
    defparam add_29_5.INIT1 = 16'h5aaa;
    defparam add_29_5.INJECT1_0 = "NO";
    defparam add_29_5.INJECT1_1 = "NO";
    CCU2D add_29_3 (.A0(right_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3277), .COUT(n3278), .S0(n192[1]), 
          .S1(n192[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_3.INIT0 = 16'h5aaa;
    defparam add_29_3.INIT1 = 16'h5aaa;
    defparam add_29_3.INJECT1_0 = "NO";
    defparam add_29_3.INJECT1_1 = "NO";
    CCU2D add_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(right_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3277), .S1(n192[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_29_1.INIT0 = 16'hF000;
    defparam add_29_1.INIT1 = 16'h5555;
    defparam add_29_1.INJECT1_0 = "NO";
    defparam add_29_1.INJECT1_1 = "NO";
    CCU2D add_25_17 (.A0(left_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3276), .S0(n123[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_17.INIT0 = 16'h5aaa;
    defparam add_25_17.INIT1 = 16'h0000;
    defparam add_25_17.INJECT1_0 = "NO";
    defparam add_25_17.INJECT1_1 = "NO";
    CCU2D add_25_15 (.A0(left_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3275), .COUT(n3276), .S0(n123[13]), 
          .S1(n123[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_15.INIT0 = 16'h5aaa;
    defparam add_25_15.INIT1 = 16'h5aaa;
    defparam add_25_15.INJECT1_0 = "NO";
    defparam add_25_15.INJECT1_1 = "NO";
    CCU2D add_25_13 (.A0(left_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3274), .COUT(n3275), .S0(n123[11]), 
          .S1(n123[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_13.INIT0 = 16'h5aaa;
    defparam add_25_13.INIT1 = 16'h5aaa;
    defparam add_25_13.INJECT1_0 = "NO";
    defparam add_25_13.INJECT1_1 = "NO";
    CCU2D add_25_11 (.A0(left_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3273), .COUT(n3274), .S0(n123[9]), 
          .S1(n123[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_11.INIT0 = 16'h5aaa;
    defparam add_25_11.INIT1 = 16'h5aaa;
    defparam add_25_11.INJECT1_0 = "NO";
    defparam add_25_11.INJECT1_1 = "NO";
    CCU2D add_25_9 (.A0(left_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3272), .COUT(n3273), .S0(n123[7]), 
          .S1(n123[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_9.INIT0 = 16'h5aaa;
    defparam add_25_9.INIT1 = 16'h5aaa;
    defparam add_25_9.INJECT1_0 = "NO";
    defparam add_25_9.INJECT1_1 = "NO";
    CCU2D add_25_7 (.A0(left_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3271), .COUT(n3272), .S0(n123[5]), 
          .S1(n123[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_7.INIT0 = 16'h5aaa;
    defparam add_25_7.INIT1 = 16'h5aaa;
    defparam add_25_7.INJECT1_0 = "NO";
    defparam add_25_7.INJECT1_1 = "NO";
    CCU2D add_25_5 (.A0(left_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3270), .COUT(n3271), .S0(n123[3]), 
          .S1(n123[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_5.INIT0 = 16'h5aaa;
    defparam add_25_5.INIT1 = 16'h5aaa;
    defparam add_25_5.INJECT1_0 = "NO";
    defparam add_25_5.INJECT1_1 = "NO";
    CCU2D add_25_3 (.A0(left_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3269), .COUT(n3270), .S0(n123[1]), 
          .S1(n123[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_3.INIT0 = 16'h5aaa;
    defparam add_25_3.INIT1 = 16'h5aaa;
    defparam add_25_3.INJECT1_0 = "NO";
    defparam add_25_3.INJECT1_1 = "NO";
    CCU2D add_25_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(left_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3269), .S1(n123[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_25_1.INIT0 = 16'hF000;
    defparam add_25_1.INIT1 = 16'h5555;
    defparam add_25_1.INJECT1_0 = "NO";
    defparam add_25_1.INJECT1_1 = "NO";
    LUT4 inv_23_i1_1_lut (.A(left_data_reg_i[0]), .Z(n88[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i1_1_lut.init = 16'h5555;
    LUT4 inv_27_i1_1_lut (.A(right_data_reg_i[0]), .Z(n157[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i1_1_lut.init = 16'h5555;
    LUT4 i37_2_lut (.A(left_vld_i), .B(left_vld_reg_i), .Z(left_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(177[23:54])
    defparam i37_2_lut.init = 16'h2222;
    LUT4 i39_2_lut (.A(right_vld_i), .B(right_vld_reg_i), .Z(right_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(178[24:57])
    defparam i39_2_lut.init = 16'h2222;
    LUT4 i15_2_lut (.A(ws_reg_i), .B(ws_i), .Z(n3432)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    FD1S3AX left_data_ones_compl_i_i1 (.D(n88[1]), .CK(o_sck_c), .Q(left_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i1.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i2 (.D(n88[2]), .CK(o_sck_c), .Q(left_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i2.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i3 (.D(n88[3]), .CK(o_sck_c), .Q(left_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i3.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i4 (.D(n88[4]), .CK(o_sck_c), .Q(left_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i4.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i5 (.D(n88[5]), .CK(o_sck_c), .Q(left_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i5.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i6 (.D(n88[6]), .CK(o_sck_c), .Q(left_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i6.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i7 (.D(n88[7]), .CK(o_sck_c), .Q(left_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i7.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i8 (.D(n88[8]), .CK(o_sck_c), .Q(left_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i8.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i9 (.D(n88[9]), .CK(o_sck_c), .Q(left_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i9.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i10 (.D(n88[10]), .CK(o_sck_c), .Q(left_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i10.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i11 (.D(n88[11]), .CK(o_sck_c), .Q(left_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i11.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i12 (.D(n88[12]), .CK(o_sck_c), .Q(left_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i12.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i13 (.D(n88[13]), .CK(o_sck_c), .Q(left_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i13.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i14 (.D(n88[14]), .CK(o_sck_c), .Q(left_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i14.GSR = "DISABLED";
    FD1S3AX left_data_ones_compl_i_i15 (.D(n88[15]), .CK(o_sck_c), .Q(left_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i15.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i2 (.D(n123[1]), .CK(o_sck_c), .Q(o_left_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i2.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i3 (.D(n123[2]), .CK(o_sck_c), .Q(o_left_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i3.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i4 (.D(n123[3]), .CK(o_sck_c), .Q(o_left_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i4.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i5 (.D(n123[4]), .CK(o_sck_c), .Q(o_left_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i5.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i6 (.D(n123[5]), .CK(o_sck_c), .Q(o_left_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i6.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i7 (.D(n123[6]), .CK(o_sck_c), .Q(o_left_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i7.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i8 (.D(n123[7]), .CK(o_sck_c), .Q(o_left_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i8.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i9 (.D(n123[8]), .CK(o_sck_c), .Q(o_left_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i9.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i10 (.D(n123[9]), .CK(o_sck_c), .Q(o_left_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i10.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i11 (.D(n123[10]), .CK(o_sck_c), .Q(o_left_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i11.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i12 (.D(n123[11]), .CK(o_sck_c), .Q(o_left_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i12.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i13 (.D(n123[12]), .CK(o_sck_c), .Q(o_left_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i13.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i14 (.D(n123[13]), .CK(o_sck_c), .Q(o_left_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i14.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i15 (.D(n123[14]), .CK(o_sck_c), .Q(o_left_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i15.GSR = "DISABLED";
    FD1S3AX left_data_twos_compl_i_i16 (.D(n123[15]), .CK(o_sck_c), .Q(o_left_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i16.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i1 (.D(n157[1]), .CK(o_sck_c), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i1.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i2 (.D(n157[2]), .CK(o_sck_c), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i2.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i3 (.D(n157[3]), .CK(o_sck_c), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i3.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i4 (.D(n157[4]), .CK(o_sck_c), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i4.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i5 (.D(n157[5]), .CK(o_sck_c), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i5.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i6 (.D(n157[6]), .CK(o_sck_c), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i6.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i7 (.D(n157[7]), .CK(o_sck_c), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i7.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i8 (.D(n157[8]), .CK(o_sck_c), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i8.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i9 (.D(n157[9]), .CK(o_sck_c), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i9.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i10 (.D(n157[10]), .CK(o_sck_c), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i10.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i11 (.D(n157[11]), .CK(o_sck_c), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i11.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i12 (.D(n157[12]), .CK(o_sck_c), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i12.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i13 (.D(n157[13]), .CK(o_sck_c), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i13.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i14 (.D(n157[14]), .CK(o_sck_c), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i14.GSR = "DISABLED";
    FD1S3AX right_data_ones_compl_i_i15 (.D(n157[15]), .CK(o_sck_c), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i15.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i2 (.D(n192[1]), .CK(o_sck_c), .Q(o_right_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i2.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i3 (.D(n192[2]), .CK(o_sck_c), .Q(o_right_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i3.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i4 (.D(n192[3]), .CK(o_sck_c), .Q(o_right_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i4.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i5 (.D(n192[4]), .CK(o_sck_c), .Q(o_right_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i5.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i6 (.D(n192[5]), .CK(o_sck_c), .Q(o_right_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i6.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i7 (.D(n192[6]), .CK(o_sck_c), .Q(o_right_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i7.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i8 (.D(n192[7]), .CK(o_sck_c), .Q(o_right_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i8.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i9 (.D(n192[8]), .CK(o_sck_c), .Q(o_right_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i9.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i10 (.D(n192[9]), .CK(o_sck_c), .Q(o_right_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i10.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i11 (.D(n192[10]), .CK(o_sck_c), .Q(o_right_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i11.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i12 (.D(n192[11]), .CK(o_sck_c), .Q(o_right_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i12.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i13 (.D(n192[12]), .CK(o_sck_c), .Q(o_right_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i13.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i14 (.D(n192[13]), .CK(o_sck_c), .Q(o_right_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i14.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i15 (.D(n192[14]), .CK(o_sck_c), .Q(o_right_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i15.GSR = "DISABLED";
    FD1S3AX right_data_twos_compl_i_i16 (.D(n192[15]), .CK(o_sck_c), .Q(o_right_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i16.GSR = "DISABLED";
    LUT4 inv_23_i2_1_lut (.A(left_data_reg_i[1]), .Z(n88[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i2_1_lut.init = 16'h5555;
    LUT4 inv_23_i3_1_lut (.A(left_data_reg_i[2]), .Z(n88[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i3_1_lut.init = 16'h5555;
    LUT4 inv_23_i4_1_lut (.A(left_data_reg_i[3]), .Z(n88[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i4_1_lut.init = 16'h5555;
    LUT4 inv_23_i5_1_lut (.A(left_data_reg_i[4]), .Z(n88[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i5_1_lut.init = 16'h5555;
    LUT4 inv_23_i6_1_lut (.A(left_data_reg_i[5]), .Z(n88[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i6_1_lut.init = 16'h5555;
    LUT4 inv_23_i7_1_lut (.A(left_data_reg_i[6]), .Z(n88[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i7_1_lut.init = 16'h5555;
    LUT4 inv_23_i8_1_lut (.A(left_data_reg_i[7]), .Z(n88[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i8_1_lut.init = 16'h5555;
    LUT4 inv_23_i9_1_lut (.A(left_data_reg_i[8]), .Z(n88[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i9_1_lut.init = 16'h5555;
    LUT4 inv_23_i10_1_lut (.A(left_data_reg_i[9]), .Z(n88[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i10_1_lut.init = 16'h5555;
    LUT4 inv_23_i11_1_lut (.A(left_data_reg_i[10]), .Z(n88[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i11_1_lut.init = 16'h5555;
    LUT4 inv_23_i12_1_lut (.A(left_data_reg_i[11]), .Z(n88[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i12_1_lut.init = 16'h5555;
    LUT4 inv_23_i13_1_lut (.A(left_data_reg_i[12]), .Z(n88[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i13_1_lut.init = 16'h5555;
    LUT4 inv_23_i14_1_lut (.A(left_data_reg_i[13]), .Z(n88[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i14_1_lut.init = 16'h5555;
    LUT4 inv_23_i15_1_lut (.A(left_data_reg_i[14]), .Z(n88[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i15_1_lut.init = 16'h5555;
    LUT4 inv_23_i16_1_lut (.A(left_data_reg_i[15]), .Z(n88[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam inv_23_i16_1_lut.init = 16'h5555;
    LUT4 inv_27_i2_1_lut (.A(right_data_reg_i[1]), .Z(n157[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i2_1_lut.init = 16'h5555;
    LUT4 inv_27_i3_1_lut (.A(right_data_reg_i[2]), .Z(n157[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i3_1_lut.init = 16'h5555;
    LUT4 inv_27_i4_1_lut (.A(right_data_reg_i[3]), .Z(n157[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i4_1_lut.init = 16'h5555;
    LUT4 inv_27_i5_1_lut (.A(right_data_reg_i[4]), .Z(n157[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i5_1_lut.init = 16'h5555;
    LUT4 inv_27_i6_1_lut (.A(right_data_reg_i[5]), .Z(n157[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i6_1_lut.init = 16'h5555;
    LUT4 inv_27_i7_1_lut (.A(right_data_reg_i[6]), .Z(n157[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i7_1_lut.init = 16'h5555;
    LUT4 inv_27_i8_1_lut (.A(right_data_reg_i[7]), .Z(n157[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i8_1_lut.init = 16'h5555;
    LUT4 inv_27_i9_1_lut (.A(right_data_reg_i[8]), .Z(n157[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i9_1_lut.init = 16'h5555;
    LUT4 inv_27_i10_1_lut (.A(right_data_reg_i[9]), .Z(n157[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i10_1_lut.init = 16'h5555;
    LUT4 inv_27_i11_1_lut (.A(right_data_reg_i[10]), .Z(n157[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i11_1_lut.init = 16'h5555;
    LUT4 inv_27_i12_1_lut (.A(right_data_reg_i[11]), .Z(n157[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i12_1_lut.init = 16'h5555;
    LUT4 inv_27_i13_1_lut (.A(right_data_reg_i[12]), .Z(n157[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i13_1_lut.init = 16'h5555;
    LUT4 inv_27_i14_1_lut (.A(right_data_reg_i[13]), .Z(n157[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i14_1_lut.init = 16'h5555;
    LUT4 inv_27_i15_1_lut (.A(right_data_reg_i[14]), .Z(n157[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i15_1_lut.init = 16'h5555;
    LUT4 inv_27_i16_1_lut (.A(right_data_reg_i[15]), .Z(n157[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam inv_27_i16_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module subMean
//

module subMean (fifo_read_clk_keep, window_count, GND_net, \m[0] , n5598, 
            subMean_left_valid_c, n4949, left_out, \window_count[0] , 
            subMean_left_out_c_15, VCC_net, subMean_left_out_c_0, subMean_left_out_c_1, 
            subMean_left_out_c_2, subMean_left_out_c_3, subMean_left_out_c_4, 
            subMean_left_out_c_5, subMean_left_out_c_6, subMean_left_out_c_7, 
            subMean_left_out_c_8, subMean_left_out_c_9, subMean_left_out_c_10, 
            subMean_left_out_c_11, subMean_left_out_c_12, subMean_left_out_c_13, 
            subMean_left_out_c_14, n8, n8_adj_5, n10, n10_adj_6, n7, 
            n7_adj_7, n9, n9_adj_8, n5582) /* synthesis syn_module_defined=1 */ ;
    input fifo_read_clk_keep;
    output [4:0]window_count;
    input GND_net;
    output \m[0] ;
    output n5598;
    output subMean_left_valid_c;
    input n4949;
    input [15:0]left_out;
    output \window_count[0] ;
    output subMean_left_out_c_15;
    input VCC_net;
    output subMean_left_out_c_0;
    output subMean_left_out_c_1;
    output subMean_left_out_c_2;
    output subMean_left_out_c_3;
    output subMean_left_out_c_4;
    output subMean_left_out_c_5;
    output subMean_left_out_c_6;
    output subMean_left_out_c_7;
    output subMean_left_out_c_8;
    output subMean_left_out_c_9;
    output subMean_left_out_c_10;
    output subMean_left_out_c_11;
    output subMean_left_out_c_12;
    output subMean_left_out_c_13;
    output subMean_left_out_c_14;
    input n8;
    input n8_adj_5;
    input n10;
    input n10_adj_6;
    input n7;
    input n7_adj_7;
    input n9;
    input n9_adj_8;
    input n5582;
    
    wire n5582 /* synthesis nomerge= */ ;
    
    wire n3703, n3704;
    wire [31:0]m;   // c:/users/sec29/desktop/i2s_iot/submean.v(24[9:10])
    
    wire n3710, n3705, n3706, n3711;
    wire [19:0]n3;
    wire [19:0]n86;
    
    wire n3707, n3708, n3712;
    wire [15:0]avg;   // c:/users/sec29/desktop/i2s_iot/submean.v(20[12:15])
    wire [19:0]sum;   // c:/users/sec29/desktop/i2s_iot/submean.v(19[12:15])
    
    wire n4050, n4051;
    wire [31:0]n;   // c:/users/sec29/desktop/i2s_iot/submean.v(25[9:10])
    
    wire n4056, n4052, n4053, n4057, n3493, n3494, n3500, n3495, 
        n3496, n3501, n3497, n3498, n3502, n3617, n3618, n3622, 
        n3566, n3567, n3574, n3581, n3582, n3589, n3568, n3569, 
        n3575, n3198, n4596, n4704;
    wire [15:0]n5;
    
    wire n3199, n4106, n4107, n4114, n3716, n3717, n3724, n4127, 
        n4128, n4132, n4108, n4109, n4115, n3718, n3719, n3725, 
        n3765, n3766, n3771, n4533, n3695, n3694, n4536, n3696, 
        n3697, n3720, n3721, n3726, n3197, n4518, n4620, n3195, 
        n4680, n4698, n3196, n4539, n4542, n3576, n3577;
    wire [4:0]window_count_c;   // c:/users/sec29/desktop/i2s_iot/submean.v(21[11:23])
    
    wire n4950;
    wire [4:0]n26;
    
    wire subMean_window_4_8, subMean_window_5_8, n3686, n3687, n4110, 
        n4111, n4116, n4545, n3965, n3964, n4548, subMean_window_6_8, 
        subMean_window_7_8, n3722, n3723, n3727, subMean_window_8_8, 
        subMean_window_9_8, n3941, n3942, n3949, subMean_window_10_8, 
        subMean_window_11_8, n4692, n3943, n3944, n3950, n3966, 
        n3967, n3194;
    wire [31:0]n134;
    
    wire n4419, n3890, n3889, n4422, n3193, subMean_window_0_0, 
        n1191, n3891, n3892, n4112, n4113, n4117, n3945, n3946, 
        n3951, n3947, n3948, n3952, n3731, n3732, n3739, n3733, 
        n3734, n3740, n3735, n3736, n3741, n3737, n3738, n3742, 
        n4061, n4062, n4069, n4063, n4064, n4070, n4065, n4066, 
        n4071, n4067, n4068, n4072, n3746, n3747, n3754, n3748, 
        n3749, n3755, n3192, n4425, n3650, n3649, n4428, n3651, 
        n3652, n4431, n3530, n3529, n4434, n3531, n3532, n3191, 
        subMean_window_6_0, subMean_window_7_0, n4169, n4437, n4190, 
        n4189, n4440, n4191, n4192, n4443, n4130, n4129, n4446, 
        n4131, n4449, n3875, n3874, n4452, n3876, n3877, subMean_window_0_1, 
        subMean_window_0_2, subMean_window_0_3, subMean_window_0_4, subMean_window_0_5, 
        subMean_window_0_6, subMean_window_0_7, subMean_window_0_8, subMean_window_0_9, 
        subMean_window_0_10, subMean_window_0_11, subMean_window_0_12, 
        subMean_window_0_13, subMean_window_0_14, subMean_window_0_15, 
        subMean_window_1_0, n1203, subMean_window_1_1, subMean_window_1_2, 
        subMean_window_1_3, subMean_window_1_4, subMean_window_1_5, subMean_window_1_6, 
        subMean_window_1_7, subMean_window_1_8, subMean_window_1_9, subMean_window_1_10, 
        subMean_window_1_11, subMean_window_1_12, subMean_window_1_13, 
        subMean_window_1_14, subMean_window_1_15, subMean_window_2_0, 
        n1243, subMean_window_2_1, subMean_window_2_2, subMean_window_2_3, 
        subMean_window_2_4, subMean_window_2_5, subMean_window_2_6, subMean_window_2_7, 
        subMean_window_2_8, subMean_window_2_9, subMean_window_2_10, subMean_window_2_11, 
        subMean_window_2_12, subMean_window_2_13, subMean_window_2_14, 
        subMean_window_2_15, subMean_window_3_0, n1265, subMean_window_3_1, 
        subMean_window_3_2, subMean_window_3_3, subMean_window_3_4, subMean_window_3_5, 
        subMean_window_3_6, subMean_window_3_7, subMean_window_3_8, subMean_window_3_9, 
        subMean_window_3_10, subMean_window_3_11, subMean_window_3_12, 
        subMean_window_3_13, subMean_window_3_14, subMean_window_3_15, 
        subMean_window_4_0, n1297, subMean_window_4_1, subMean_window_4_2, 
        subMean_window_4_3, subMean_window_4_4, subMean_window_4_5, subMean_window_4_6, 
        subMean_window_4_7, subMean_window_4_9, subMean_window_4_10, subMean_window_4_11, 
        subMean_window_4_12, subMean_window_4_13, subMean_window_4_14, 
        subMean_window_4_15, subMean_window_5_0, n1329, subMean_window_5_1, 
        subMean_window_5_2, subMean_window_5_3, subMean_window_5_4, subMean_window_5_5, 
        subMean_window_5_6, subMean_window_5_7, subMean_window_5_9, subMean_window_5_10, 
        subMean_window_5_11, subMean_window_5_12, subMean_window_5_13, 
        subMean_window_5_14, subMean_window_5_15, n1361, subMean_window_6_1, 
        subMean_window_6_2, subMean_window_6_3, subMean_window_6_4, subMean_window_6_5, 
        subMean_window_6_6, subMean_window_6_7, subMean_window_6_9, subMean_window_6_10, 
        subMean_window_6_11, subMean_window_6_12, subMean_window_6_13, 
        subMean_window_6_14, subMean_window_6_15, n1393, subMean_window_7_1, 
        subMean_window_7_2, subMean_window_7_3, subMean_window_7_4, subMean_window_7_5, 
        subMean_window_7_6, subMean_window_7_7, subMean_window_7_9, subMean_window_7_10, 
        subMean_window_7_11, subMean_window_7_12, subMean_window_7_13, 
        subMean_window_7_14, subMean_window_7_15, subMean_window_8_0, 
        n1425, subMean_window_8_1, subMean_window_8_2, subMean_window_8_3, 
        subMean_window_8_4, subMean_window_8_5, subMean_window_8_6, subMean_window_8_7, 
        subMean_window_8_9, subMean_window_8_10, subMean_window_8_11, 
        subMean_window_8_12, subMean_window_8_13, subMean_window_8_14, 
        subMean_window_8_15, subMean_window_9_0, n1457, subMean_window_9_1, 
        subMean_window_9_2, subMean_window_9_3, subMean_window_9_4, subMean_window_9_5, 
        subMean_window_9_6, subMean_window_9_7, subMean_window_9_9, subMean_window_9_10, 
        subMean_window_9_11, subMean_window_9_12, subMean_window_9_13, 
        subMean_window_9_14, subMean_window_9_15, subMean_window_10_0, 
        n1489, subMean_window_10_1, subMean_window_10_2, subMean_window_10_3, 
        subMean_window_10_4, subMean_window_10_5, subMean_window_10_6, 
        subMean_window_10_7, subMean_window_10_9, subMean_window_10_10, 
        subMean_window_10_11, subMean_window_10_12, subMean_window_10_13, 
        subMean_window_10_14, subMean_window_10_15, subMean_window_11_0, 
        n1521, subMean_window_11_1, subMean_window_11_2, subMean_window_11_3, 
        subMean_window_11_4, subMean_window_11_5, subMean_window_11_6, 
        subMean_window_11_7, subMean_window_11_9, subMean_window_11_10, 
        subMean_window_11_11, subMean_window_11_12, subMean_window_11_13, 
        subMean_window_11_14, subMean_window_11_15, subMean_window_12_0, 
        n1553, subMean_window_12_1, subMean_window_12_2, subMean_window_12_3, 
        subMean_window_12_4, subMean_window_12_5, subMean_window_12_6, 
        subMean_window_12_7, subMean_window_12_8, subMean_window_12_9, 
        subMean_window_12_10, subMean_window_12_11, subMean_window_12_12, 
        subMean_window_12_13, subMean_window_12_14, subMean_window_12_15, 
        subMean_window_13_0, n1585, subMean_window_13_1, subMean_window_13_2, 
        subMean_window_13_3, subMean_window_13_4, subMean_window_13_5, 
        subMean_window_13_6, subMean_window_13_7, subMean_window_13_8, 
        subMean_window_13_9, subMean_window_13_10, subMean_window_13_11, 
        subMean_window_13_12, subMean_window_13_13, subMean_window_13_14, 
        subMean_window_13_15, subMean_window_14_0, n1617, subMean_window_14_1, 
        subMean_window_14_2, subMean_window_14_3, subMean_window_14_4, 
        subMean_window_14_5, subMean_window_14_6, subMean_window_14_7, 
        subMean_window_14_8, subMean_window_14_9, subMean_window_14_10, 
        subMean_window_14_11, subMean_window_14_12, subMean_window_14_13, 
        subMean_window_14_14, subMean_window_14_15, subMean_window_15_0, 
        n1649, subMean_window_15_1, subMean_window_15_2, subMean_window_15_3, 
        n4455, n3590, n4458, subMean_window_15_4, subMean_window_15_5, 
        subMean_window_15_6, n3591, n3592, subMean_window_15_7, subMean_window_15_8, 
        subMean_window_15_9, subMean_window_15_10, subMean_window_15_11, 
        n4461, n3770, n3769, n4464, subMean_window_15_12, subMean_window_15_13, 
        n4, n1, subMean_window_15_14, subMean_window_15_15, n3772, 
        n4467, n3635, n3634, n4470, n4098, n3636, n3637, n4587, 
        n4590, n3821, n3822, n4593, n3510, n3511, n3516, n3583, 
        n3584, n4125, n4599, n4602, n4479, n4010, n4009, n4482, 
        n509;
    wire [31:0]n67;
    
    wire n4515, n3995, n3994, n4605, n4608, n3823, n4611, n4055, 
        n4054, n4614, n4617, n3499, n4623, n3935, n3934, n4626, 
        n3936, n3937, n4629, n3709, n4632, n4635, n3680, n3679, 
        n4638, n3681, n3682, n4641, n3980, n3979, n4644, n3981, 
        n3982, n4647, n3560, n3559, n4650, n3561, n3562, n4653, 
        n3920, n3919, n4656, n3921, n3922, n4659, n4040, n4039, 
        n4662, n4041, n4042, n4665, n4100, n4099, n4668, n4101, 
        n4102;
    wire [19:0]n2;
    
    wire n4551, n4145, n4144, n4554, n3750, n3751, n3756, n3956, 
        n3957, n4671, n3485, n3484, n4674, n3824, n3486, n3487, 
        n4677, n3605, n3604, n3606, n3607, n4683, n3905, n3904, 
        n4686, n3825, n4011, n4012, n3996, n3997, n3826, n3906, 
        n3907, n4170, n4689, n3665, n3664, n4171, n3883, n4563, 
        n3785, n3784, n4566, n4146, n4147, n3666, n3667, n4095, 
        n3903, n3902, n3663, n3603, n3662, n4695, n3545, n3544, 
        n3546, n3547, n4701, n4025, n4024, n3991, n4557, n3620, 
        n3619, n4560, n3621, n3791, n4473, n3860, n3859, n4476, 
        n3792, n3861, n3862, n3992, n3993, n3793, n3794, n3795, 
        n3796, n3797, n3798, n3806, n3807, n3808, n3809, n3810, 
        n3811, n4485, n3845, n3844, n4488, n3827, n3812, n4126, 
        n3828, n4172, n3813, n4173, n4001, n3761, n4002, n4097, 
        n4168, n3911, n4581, n4085, n4084, n4584, n4003, n4004, 
        n4005, n4096, n4006, n3836, n3837, n3602, n4086, n4087, 
        n3912, n3555, n3556, n3884, n3557, n3558, n3913, n3914, 
        n3671, n3885, n3672, n3915, n3916, n4521, n3800, n3799, 
        n4524, n3917, n3918, n3673, n3674, n3675, n3801, n3802, 
        n3676, n3677, n3678, n3886, n3491, n3492, n3611, n3612, 
        n3926, n3762, n3927, n3613, n3614, n3763, n4046, n4047, 
        n3928, n3929, n3615, n3616, n3764, n3930, n3931, n3701, 
        n3702, n4048, n4076, n4049, n3932, n3887, n3933, n3973, 
        n3974, n4007, n3888, n4008, n3596, n3838, n3597, n4077, 
        n3839, n3840, n3841, n3842, n3536, n3537, n3988, n3843, 
        n3632, n3986, n3633, n3538, n3851, n3539, n3852, n3476, 
        n3971, n3972, n3190, n3853, n3975, n3854, n3477, n3767, 
        n3768, n3540, n3855, n3541, n3512, n3513, n3517, n3189, 
        n3856, n3976, n4026, n4027, n3188, n3478, n3786, n3787, 
        n3846, n3847, n3977, n4491, n3515, n3514, n4494, n3187, 
        n4569, n4572, n3978, n4497, n4175, n4174, n4500, n3757, 
        n4176, n4177, n4078, n3186, n3989, n3185, n4079, n4080, 
        n3184, n3183, n4081, n3182, n4082, n3181, n4527, n4160, 
        n4159, n4530, n4083, n3180, n3319, n543, n3318, n3179, 
        n3317, n3316, n3315, n3314, n4161, n4162, n3990, n3313, 
        n3312, n3311, n2899, n2897, n3310, n3309, n3308, n3307, 
        n4503, n3830, n3829, n4506, n3306, n3305, n3831, n3832, 
        n3304, n3303, n3302, n3301, n3479, n3300, n3299, n3298, 
        n3297, n3296, n3295, n3294, n3776, n3293, n3292, n3291, 
        n3290, n3289, n4512, n3288, n3598, n3287, n3286, n4578, 
        n3285, n3599, n3777, n3585, n3586, n3542, n3857, n3858, 
        n1105, n1127, n3752, n3753, n3268;
    wire [31:0]n242;
    
    wire n3267, n3958, n3959, n3266, n3265, n3264, n3263, n3778, 
        n3262, n3261, n3260, n3688, n3689, n3259, n3258, n3257, 
        n3256, n3255, n3254, n3253, n3543, n3960, n3961, n3570, 
        n3571, n1090, n1080, n3962, n3963, n4181, n3572, n3573, 
        n3656, n3690, n3691, n3657, n1095, n1085, n4182, n3692, 
        n3693, n3480, n4136, n4137, n3212, n3211, n3210, n3209, 
        n3208, n3207, n4138, n4139, n3206, n3205, n3204, n4183, 
        n3481, n3202, n3201, n4140, n4141, n3200, n4091, n4184, 
        n3779, n4142, n4143, n4185, n4092, n3482, n4121, n4122, 
        n4186, n3780, n3866, n3483, n4151, n4152, n3867, n3781, 
        n4123, n4124, n3868, n4155, n4166, n4167, n4156, n3869, 
        n4157, n4158, n3600, n3870, n3601, n4031, n4032, n3896, 
        n4033, n4034, n4035, n3626, n4036, n3551, n3552, n3553, 
        n3554, n4037, n4038, n3627, n3897, n3658, n3871, n4187, 
        n3628, n4188, n4153, n4154, n3506, n3507, n3872, n3659, 
        n3508, n3509, n3873, n3521, n3629, n3522, n3523, n3524, 
        n4016, n4017, n3525, n3782, n3526, n3783, n3527, n3528, 
        n3641, n3898, n3642, n4018, n3587, n4019, n3588, n3630, 
        n3899, n3643, n3644, n3645, n3660, n3646, n4020, n4021, 
        n3661, n3631, n3647, n3987, n3648, n3814, n3815, n3816, 
        n3817, n3881, n3882, n4022, n4023, n4093, n4094, n3900, 
        n3901, n4575, n4509;
    
    PFUMX i2852 (.BLUT(n3703), .ALUT(n3704), .C0(m[1]), .Z(n3710));
    PFUMX i2853 (.BLUT(n3705), .ALUT(n3706), .C0(m[1]), .Z(n3711));
    FD1S3AX sum_138__i0 (.D(n86[0]), .CK(fifo_read_clk_keep), .Q(n3[0]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i0.GSR = "ENABLED";
    PFUMX i2854 (.BLUT(n3707), .ALUT(n3708), .C0(m[1]), .Z(n3712));
    FD1P3AX avg_i0_i0 (.D(sum[4]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i0.GSR = "ENABLED";
    PFUMX i3198 (.BLUT(n4050), .ALUT(n4051), .C0(n[1]), .Z(n4056));
    PFUMX i3199 (.BLUT(n4052), .ALUT(n4053), .C0(n[1]), .Z(n4057));
    PFUMX i2642 (.BLUT(n3493), .ALUT(n3494), .C0(n[1]), .Z(n3500));
    PFUMX i2643 (.BLUT(n3495), .ALUT(n3496), .C0(n[1]), .Z(n3501));
    PFUMX i2644 (.BLUT(n3497), .ALUT(n3498), .C0(n[1]), .Z(n3502));
    PFUMX i2764 (.BLUT(n3617), .ALUT(n3618), .C0(n[1]), .Z(n3622));
    PFUMX i2716 (.BLUT(n3566), .ALUT(n3567), .C0(m[1]), .Z(n3574));
    PFUMX i2731 (.BLUT(n3581), .ALUT(n3582), .C0(m[1]), .Z(n3589));
    PFUMX i2717 (.BLUT(n3568), .ALUT(n3569), .C0(m[1]), .Z(n3575));
    CCU2D sub_33_add_2_9 (.A0(n4596), .B0(avg[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n4704), .B1(avg[8]), .C1(GND_net), .D1(GND_net), .CIN(n3198), 
          .COUT(n3199), .S0(n5[7]), .S1(n5[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_9.INIT0 = 16'h5999;
    defparam sub_33_add_2_9.INIT1 = 16'h5999;
    defparam sub_33_add_2_9.INJECT1_0 = "NO";
    defparam sub_33_add_2_9.INJECT1_1 = "NO";
    PFUMX i3256 (.BLUT(n4106), .ALUT(n4107), .C0(window_count[1]), .Z(n4114));
    PFUMX i2866 (.BLUT(n3716), .ALUT(n3717), .C0(window_count[1]), .Z(n3724));
    PFUMX i3274 (.BLUT(n4127), .ALUT(n4128), .C0(n[1]), .Z(n4132));
    PFUMX i3257 (.BLUT(n4108), .ALUT(n4109), .C0(window_count[1]), .Z(n4115));
    PFUMX i2867 (.BLUT(n3718), .ALUT(n3719), .C0(window_count[1]), .Z(n3725));
    PFUMX i2913 (.BLUT(n3765), .ALUT(n3766), .C0(n[1]), .Z(n3771));
    LUT4 n4533_bdd_4_lut (.A(n4533), .B(n3695), .C(n3694), .D(m[3]), 
         .Z(n4536)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4533_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4061 (.A(m[2]), .B(n3696), .C(n3697), .D(m[3]), 
         .Z(n4533)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4061.init = 16'he4aa;
    PFUMX i2868 (.BLUT(n3720), .ALUT(n3721), .C0(window_count[1]), .Z(n3726));
    CCU2D sub_33_add_2_7 (.A0(n4518), .B0(avg[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n4620), .B1(avg[6]), .C1(GND_net), .D1(GND_net), .CIN(n3197), 
          .COUT(n3198), .S0(n5[5]), .S1(n5[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_7.INIT0 = 16'h5999;
    defparam sub_33_add_2_7.INIT1 = 16'h5999;
    defparam sub_33_add_2_7.INJECT1_0 = "NO";
    defparam sub_33_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_3 (.A0(n4680), .B0(avg[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n4698), .B1(avg[2]), .C1(GND_net), .D1(GND_net), .CIN(n3195), 
          .COUT(n3196), .S0(n5[1]), .S1(n5[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_3.INIT0 = 16'h5999;
    defparam sub_33_add_2_3.INIT1 = 16'h5999;
    defparam sub_33_add_2_3.INJECT1_0 = "NO";
    defparam sub_33_add_2_3.INJECT1_1 = "NO";
    LUT4 n4539_bdd_4_lut (.A(n4539), .B(n3575), .C(n3574), .D(m[3]), 
         .Z(n4542)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4539_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4066 (.A(m[2]), .B(n3576), .C(n3577), .D(m[3]), 
         .Z(n4539)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4066.init = 16'he4aa;
    LUT4 i2416_3_lut_4_lut (.A(window_count_c[2]), .B(n4950), .C(window_count_c[3]), 
         .D(window_count[4]), .Z(n26[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2416_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2845_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(\m[0] ), 
         .Z(n3703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2845_3_lut.init = 16'hcaca;
    PFUMX i2836 (.BLUT(n3686), .ALUT(n3687), .C0(n5598), .Z(n3694));
    PFUMX i3258 (.BLUT(n4110), .ALUT(n4111), .C0(window_count[1]), .Z(n4116));
    LUT4 n4545_bdd_4_lut (.A(n4545), .B(n3965), .C(n3964), .D(m[3]), 
         .Z(n4548)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4545_bdd_4_lut.init = 16'haad8;
    LUT4 i2846_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(\m[0] ), 
         .Z(n3704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2846_3_lut.init = 16'hcaca;
    PFUMX i2869 (.BLUT(n3722), .ALUT(n3723), .C0(window_count[1]), .Z(n3727));
    LUT4 i2847_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(\m[0] ), 
         .Z(n3705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2847_3_lut.init = 16'hcaca;
    PFUMX i3091 (.BLUT(n3941), .ALUT(n3942), .C0(window_count[1]), .Z(n3949));
    LUT4 i2848_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(\m[0] ), .Z(n3706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2848_3_lut.init = 16'hcaca;
    CCU2D sub_33_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4692), .B1(avg[0]), .C1(GND_net), .D1(GND_net), .COUT(n3195), 
          .S1(n5[0]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_1.INIT0 = 16'h0000;
    defparam sub_33_add_2_1.INIT1 = 16'h5999;
    defparam sub_33_add_2_1.INJECT1_0 = "NO";
    defparam sub_33_add_2_1.INJECT1_1 = "NO";
    PFUMX i3092 (.BLUT(n3943), .ALUT(n3944), .C0(window_count[1]), .Z(n3950));
    LUT4 m_2__bdd_4_lut_4071 (.A(m[2]), .B(n3966), .C(n3967), .D(m[3]), 
         .Z(n4545)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4071.init = 16'he4aa;
    CCU2D m_142_add_4_33 (.A0(m[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3194), 
          .S0(n134[31]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_33.INIT0 = 16'hfaaa;
    defparam m_142_add_4_33.INIT1 = 16'h0000;
    defparam m_142_add_4_33.INJECT1_0 = "NO";
    defparam m_142_add_4_33.INJECT1_1 = "NO";
    LUT4 n4419_bdd_4_lut (.A(n4419), .B(n3890), .C(n3889), .D(window_count_c[3]), 
         .Z(n4422)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4419_bdd_4_lut.init = 16'haad8;
    CCU2D m_142_add_4_31 (.A0(m[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3193), 
          .COUT(n3194), .S0(n134[29]), .S1(n134[30]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_31.INIT0 = 16'hfaaa;
    defparam m_142_add_4_31.INIT1 = 16'hfaaa;
    defparam m_142_add_4_31.INJECT1_0 = "NO";
    defparam m_142_add_4_31.INJECT1_1 = "NO";
    OFS1P3DX subMean_valid_39 (.D(window_count[4]), .SP(n4949), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_valid_c));   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam subMean_valid_39.GSR = "DISABLED";
    FD1P3AX subMean_window_0_0_c (.D(left_out[0]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_0_c.GSR = "DISABLED";
    LUT4 window_count_2__bdd_4_lut_3986 (.A(window_count_c[2]), .B(n3891), 
         .C(n3892), .D(window_count_c[3]), .Z(n4419)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_3986.init = 16'he4aa;
    PFUMX i3259 (.BLUT(n4112), .ALUT(n4113), .C0(window_count[1]), .Z(n4117));
    PFUMX i3093 (.BLUT(n3945), .ALUT(n3946), .C0(window_count[1]), .Z(n3951));
    PFUMX i3094 (.BLUT(n3947), .ALUT(n3948), .C0(window_count[1]), .Z(n3952));
    PFUMX i2881 (.BLUT(n3731), .ALUT(n3732), .C0(n[1]), .Z(n3739));
    PFUMX i2882 (.BLUT(n3733), .ALUT(n3734), .C0(n[1]), .Z(n3740));
    PFUMX i2883 (.BLUT(n3735), .ALUT(n3736), .C0(n[1]), .Z(n3741));
    PFUMX i2884 (.BLUT(n3737), .ALUT(n3738), .C0(n[1]), .Z(n3742));
    PFUMX i3211 (.BLUT(n4061), .ALUT(n4062), .C0(n5598), .Z(n4069));
    PFUMX i3212 (.BLUT(n4063), .ALUT(n4064), .C0(m[1]), .Z(n4070));
    PFUMX i3213 (.BLUT(n4065), .ALUT(n4066), .C0(m[1]), .Z(n4071));
    PFUMX i3214 (.BLUT(n4067), .ALUT(n4068), .C0(m[1]), .Z(n4072));
    PFUMX i2896 (.BLUT(n3746), .ALUT(n3747), .C0(window_count[1]), .Z(n3754));
    PFUMX i2897 (.BLUT(n3748), .ALUT(n3749), .C0(window_count[1]), .Z(n3755));
    CCU2D m_142_add_4_29 (.A0(m[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3192), 
          .COUT(n3193), .S0(n134[27]), .S1(n134[28]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_29.INIT0 = 16'hfaaa;
    defparam m_142_add_4_29.INIT1 = 16'hfaaa;
    defparam m_142_add_4_29.INJECT1_0 = "NO";
    defparam m_142_add_4_29.INJECT1_1 = "NO";
    LUT4 n4425_bdd_4_lut (.A(n4425), .B(n3650), .C(n3649), .D(m[3]), 
         .Z(n4428)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4425_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_3972 (.A(m[2]), .B(n3651), .C(n3652), .D(m[3]), 
         .Z(n4425)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_3972.init = 16'he4aa;
    LUT4 n4431_bdd_4_lut (.A(n4431), .B(n3530), .C(n3529), .D(m[3]), 
         .Z(n4434)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4431_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_3991 (.A(m[2]), .B(n3531), .C(n3532), .D(m[3]), 
         .Z(n4431)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_3991.init = 16'he4aa;
    CCU2D m_142_add_4_27 (.A0(m[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3191), 
          .COUT(n3192), .S0(n134[25]), .S1(n134[26]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_27.INIT0 = 16'hfaaa;
    defparam m_142_add_4_27.INIT1 = 16'hfaaa;
    defparam m_142_add_4_27.INJECT1_0 = "NO";
    defparam m_142_add_4_27.INJECT1_1 = "NO";
    LUT4 i2398_2_lut_rep_17 (.A(window_count[1]), .B(\window_count[0] ), 
         .Z(n4950)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2398_2_lut_rep_17.init = 16'h8888;
    LUT4 i3311_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(\window_count[0] ), 
         .Z(n4169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3311_3_lut.init = 16'hcaca;
    LUT4 n4437_bdd_4_lut (.A(n4437), .B(n4190), .C(n4189), .D(n[3]), 
         .Z(n4440)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4437_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_3981 (.A(n[2]), .B(n4191), .C(n4192), .D(n[3]), 
         .Z(n4437)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_3981.init = 16'he4aa;
    LUT4 i2402_2_lut_3_lut (.A(window_count[1]), .B(\window_count[0] ), 
         .C(window_count_c[2]), .Z(n26[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2402_2_lut_3_lut.init = 16'h7878;
    LUT4 n4443_bdd_4_lut (.A(n4443), .B(n4130), .C(n4129), .D(n[3]), 
         .Z(n4446)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4443_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_3996 (.A(n[2]), .B(n4131), .C(n4132), .D(n[3]), 
         .Z(n4443)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_3996.init = 16'he4aa;
    LUT4 i2409_2_lut_3_lut_4_lut (.A(window_count[1]), .B(\window_count[0] ), 
         .C(window_count_c[3]), .D(window_count_c[2]), .Z(n26[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i2409_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n4449_bdd_4_lut (.A(n4449), .B(n3875), .C(n3874), .D(window_count_c[3]), 
         .Z(n4452)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4449_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4016 (.A(window_count_c[2]), .B(n3876), 
         .C(n3877), .D(window_count_c[3]), .Z(n4449)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4016.init = 16'he4aa;
    FD1P3AX subMean_window_0_1_c (.D(left_out[1]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_2_c (.D(left_out[2]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_3_c (.D(left_out[3]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_4_c (.D(left_out[4]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_5_c (.D(left_out[5]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_6_c (.D(left_out[6]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_7_c (.D(left_out[7]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_8_c (.D(left_out[8]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_9_c (.D(left_out[9]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_10_c (.D(left_out[10]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_11_c (.D(left_out[11]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_12_c (.D(left_out[12]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_13_c (.D(left_out[13]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_14_c (.D(left_out[14]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_15_c (.D(left_out[15]), .SP(n1191), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_0_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_0_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_0_c (.D(left_out[0]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_1_c (.D(left_out[1]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_2_c (.D(left_out[2]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_3_c (.D(left_out[3]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_4_c (.D(left_out[4]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_5_c (.D(left_out[5]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_6_c (.D(left_out[6]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_7_c (.D(left_out[7]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_8_c (.D(left_out[8]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_9_c (.D(left_out[9]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_10_c (.D(left_out[10]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_11_c (.D(left_out[11]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_12_c (.D(left_out[12]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_13_c (.D(left_out[13]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_14_c (.D(left_out[14]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_15_c (.D(left_out[15]), .SP(n1203), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_1_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_1_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_0_c (.D(left_out[0]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_1_c (.D(left_out[1]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_2_c (.D(left_out[2]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_3_c (.D(left_out[3]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_4_c (.D(left_out[4]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_5_c (.D(left_out[5]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_6_c (.D(left_out[6]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_7_c (.D(left_out[7]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_8_c (.D(left_out[8]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_9_c (.D(left_out[9]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_10_c (.D(left_out[10]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_11_c (.D(left_out[11]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_12_c (.D(left_out[12]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_13_c (.D(left_out[13]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_14_c (.D(left_out[14]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_15_c (.D(left_out[15]), .SP(n1243), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_2_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_2_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_0_c (.D(left_out[0]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_1_c (.D(left_out[1]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_2_c (.D(left_out[2]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_3_c (.D(left_out[3]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_4_c (.D(left_out[4]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_5_c (.D(left_out[5]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_6_c (.D(left_out[6]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_7_c (.D(left_out[7]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_8_c (.D(left_out[8]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_9_c (.D(left_out[9]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_10_c (.D(left_out[10]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_11_c (.D(left_out[11]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_12_c (.D(left_out[12]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_13_c (.D(left_out[13]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_14_c (.D(left_out[14]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_15_c (.D(left_out[15]), .SP(n1265), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_3_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_3_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_0_c (.D(left_out[0]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_1_c (.D(left_out[1]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_2_c (.D(left_out[2]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_3_c (.D(left_out[3]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_4_c (.D(left_out[4]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_5_c (.D(left_out[5]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_6_c (.D(left_out[6]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_7_c (.D(left_out[7]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_8_c (.D(left_out[8]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_9_c (.D(left_out[9]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_10_c (.D(left_out[10]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_11_c (.D(left_out[11]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_12_c (.D(left_out[12]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_13_c (.D(left_out[13]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_14_c (.D(left_out[14]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_15_c (.D(left_out[15]), .SP(n1297), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_4_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_4_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_0_c (.D(left_out[0]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_1_c (.D(left_out[1]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_2_c (.D(left_out[2]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_3_c (.D(left_out[3]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_4_c (.D(left_out[4]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_5_c (.D(left_out[5]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_6_c (.D(left_out[6]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_7_c (.D(left_out[7]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_8_c (.D(left_out[8]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_9_c (.D(left_out[9]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_10_c (.D(left_out[10]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_11_c (.D(left_out[11]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_12_c (.D(left_out[12]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_13_c (.D(left_out[13]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_14_c (.D(left_out[14]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_15_c (.D(left_out[15]), .SP(n1329), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_5_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_5_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_0_c (.D(left_out[0]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_1_c (.D(left_out[1]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_2_c (.D(left_out[2]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_3_c (.D(left_out[3]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_4_c (.D(left_out[4]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_5_c (.D(left_out[5]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_6_c (.D(left_out[6]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_7_c (.D(left_out[7]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_8_c (.D(left_out[8]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_9_c (.D(left_out[9]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_10_c (.D(left_out[10]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_11_c (.D(left_out[11]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_12_c (.D(left_out[12]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_13_c (.D(left_out[13]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_14_c (.D(left_out[14]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_15_c (.D(left_out[15]), .SP(n1361), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_6_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_6_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_0_c (.D(left_out[0]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_1_c (.D(left_out[1]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_2_c (.D(left_out[2]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_3_c (.D(left_out[3]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_4_c (.D(left_out[4]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_5_c (.D(left_out[5]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_6_c (.D(left_out[6]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_7_c (.D(left_out[7]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_8_c (.D(left_out[8]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_9_c (.D(left_out[9]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_10_c (.D(left_out[10]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_11_c (.D(left_out[11]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_12_c (.D(left_out[12]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_13_c (.D(left_out[13]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_14_c (.D(left_out[14]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_15_c (.D(left_out[15]), .SP(n1393), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_7_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_7_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_0_c (.D(left_out[0]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_1_c (.D(left_out[1]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_2_c (.D(left_out[2]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_3_c (.D(left_out[3]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_4_c (.D(left_out[4]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_5_c (.D(left_out[5]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_6_c (.D(left_out[6]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_7_c (.D(left_out[7]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_8_c (.D(left_out[8]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_9_c (.D(left_out[9]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_10_c (.D(left_out[10]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_11_c (.D(left_out[11]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_12_c (.D(left_out[12]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_13_c (.D(left_out[13]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_14_c (.D(left_out[14]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_15_c (.D(left_out[15]), .SP(n1425), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_8_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_8_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_0_c (.D(left_out[0]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_1_c (.D(left_out[1]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_2_c (.D(left_out[2]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_3_c (.D(left_out[3]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_4_c (.D(left_out[4]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_5_c (.D(left_out[5]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_6_c (.D(left_out[6]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_7_c (.D(left_out[7]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_8_c (.D(left_out[8]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_9_c (.D(left_out[9]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_10_c (.D(left_out[10]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_11_c (.D(left_out[11]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_12_c (.D(left_out[12]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_13_c (.D(left_out[13]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_14_c (.D(left_out[14]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_15_c (.D(left_out[15]), .SP(n1457), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_9_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_9_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_0_c (.D(left_out[0]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_1_c (.D(left_out[1]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_2_c (.D(left_out[2]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_3_c (.D(left_out[3]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_4_c (.D(left_out[4]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_5_c (.D(left_out[5]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_6_c (.D(left_out[6]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_7_c (.D(left_out[7]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_8_c (.D(left_out[8]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_9_c (.D(left_out[9]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_10_c (.D(left_out[10]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_11_c (.D(left_out[11]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_12_c (.D(left_out[12]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_13_c (.D(left_out[13]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_14_c (.D(left_out[14]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_15_c (.D(left_out[15]), .SP(n1489), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_10_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_10_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_0_c (.D(left_out[0]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_1_c (.D(left_out[1]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_2_c (.D(left_out[2]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_3_c (.D(left_out[3]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_4_c (.D(left_out[4]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_5_c (.D(left_out[5]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_6_c (.D(left_out[6]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_7_c (.D(left_out[7]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_8_c (.D(left_out[8]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_9_c (.D(left_out[9]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_10_c (.D(left_out[10]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_11_c (.D(left_out[11]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_12_c (.D(left_out[12]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_13_c (.D(left_out[13]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_14_c (.D(left_out[14]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_15_c (.D(left_out[15]), .SP(n1521), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_11_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_11_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_0_c (.D(left_out[0]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_1_c (.D(left_out[1]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_2_c (.D(left_out[2]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_3_c (.D(left_out[3]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_4_c (.D(left_out[4]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_5_c (.D(left_out[5]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_6_c (.D(left_out[6]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_7_c (.D(left_out[7]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_8_c (.D(left_out[8]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_9_c (.D(left_out[9]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_10_c (.D(left_out[10]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_11_c (.D(left_out[11]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_12_c (.D(left_out[12]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_13_c (.D(left_out[13]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_14_c (.D(left_out[14]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_15_c (.D(left_out[15]), .SP(n1553), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_12_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_12_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_0_c (.D(left_out[0]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_1_c (.D(left_out[1]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_2_c (.D(left_out[2]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_3_c (.D(left_out[3]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_4_c (.D(left_out[4]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_5_c (.D(left_out[5]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_6_c (.D(left_out[6]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_7_c (.D(left_out[7]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_8_c (.D(left_out[8]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_9_c (.D(left_out[9]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_10_c (.D(left_out[10]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_11_c (.D(left_out[11]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_12_c (.D(left_out[12]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_13_c (.D(left_out[13]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_14_c (.D(left_out[14]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_15_c (.D(left_out[15]), .SP(n1585), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_13_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_13_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_0_c (.D(left_out[0]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_1_c (.D(left_out[1]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_2_c (.D(left_out[2]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_3_c (.D(left_out[3]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_4_c (.D(left_out[4]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_5_c (.D(left_out[5]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_6_c (.D(left_out[6]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_7_c (.D(left_out[7]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_8_c (.D(left_out[8]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_9_c (.D(left_out[9]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_10_c (.D(left_out[10]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_11_c (.D(left_out[11]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_12_c (.D(left_out[12]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_13_c (.D(left_out[13]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_14_c (.D(left_out[14]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_15_c (.D(left_out[15]), .SP(n1617), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_14_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_14_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_0_c (.D(left_out[0]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_1_c (.D(left_out[1]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_2_c (.D(left_out[2]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_3_c (.D(left_out[3]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_3_c.GSR = "DISABLED";
    LUT4 n4455_bdd_4_lut (.A(n4455), .B(n3590), .C(n3589), .D(m[3]), 
         .Z(n4458)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4455_bdd_4_lut.init = 16'haad8;
    FD1P3AX subMean_window_15_4_c (.D(left_out[4]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_5_c (.D(left_out[5]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_6_c (.D(left_out[6]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_6_c.GSR = "DISABLED";
    LUT4 m_2__bdd_4_lut_4001 (.A(m[2]), .B(n3591), .C(n3592), .D(m[3]), 
         .Z(n4455)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4001.init = 16'he4aa;
    FD1P3AX subMean_window_15_7_c (.D(left_out[7]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_8_c (.D(left_out[8]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_9_c (.D(left_out[9]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_10_c (.D(left_out[10]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_11_c (.D(left_out[11]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_11_c.GSR = "DISABLED";
    LUT4 n4461_bdd_4_lut (.A(n4461), .B(n3770), .C(n3769), .D(n[3]), 
         .Z(n4464)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4461_bdd_4_lut.init = 16'haad8;
    FD1P3AX subMean_window_15_12_c (.D(left_out[12]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_13_c (.D(left_out[13]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_13_c.GSR = "DISABLED";
    FD1P3AX window_count_141__i0 (.D(n1), .SP(n4), .CK(fifo_read_clk_keep), 
            .Q(\window_count[0] ));   // c:/users/sec29/desktop/i2s_iot/submean.v(44[21:35])
    defparam window_count_141__i0.GSR = "ENABLED";
    FD1P3AX subMean_window_15_14_c (.D(left_out[14]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_15_c (.D(left_out[15]), .SP(n1649), .CK(fifo_read_clk_keep), 
            .Q(subMean_window_15_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(18[12:26])
    defparam subMean_window_15_15_c.GSR = "DISABLED";
    LUT4 n_2__bdd_4_lut_4021 (.A(n[2]), .B(n3771), .C(n3772), .D(n[3]), 
         .Z(n4461)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4021.init = 16'he4aa;
    LUT4 n4467_bdd_4_lut (.A(n4467), .B(n3635), .C(n3634), .D(m[3]), 
         .Z(n4470)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4467_bdd_4_lut.init = 16'haad8;
    LUT4 i3240_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(\window_count[0] ), .Z(n4098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3240_3_lut.init = 16'hcaca;
    LUT4 m_2__bdd_4_lut_4006 (.A(m[2]), .B(n3636), .C(n3637), .D(m[3]), 
         .Z(n4467)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4006.init = 16'he4aa;
    LUT4 n4587_bdd_4_lut (.A(n4587), .B(n4115), .C(n4114), .D(window_count_c[3]), 
         .Z(n4590)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4587_bdd_4_lut.init = 16'haad8;
    LUT4 i2963_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(n[0]), 
         .Z(n3821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2963_3_lut.init = 16'hcaca;
    LUT4 window_count_2__bdd_4_lut_4111 (.A(window_count_c[2]), .B(n4116), 
         .C(n4117), .D(window_count_c[3]), .Z(n4587)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4111.init = 16'he4aa;
    LUT4 i2964_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(n[0]), 
         .Z(n3822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2964_3_lut.init = 16'hcaca;
    LUT4 n4593_bdd_4_lut (.A(n4593), .B(n3740), .C(n3739), .D(n[3]), 
         .Z(n4596)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4593_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4121 (.A(n[2]), .B(n3741), .C(n3742), .D(n[3]), 
         .Z(n4593)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4121.init = 16'he4aa;
    PFUMX i2658 (.BLUT(n3510), .ALUT(n3511), .C0(n[1]), .Z(n3516));
    PFUMX i2732 (.BLUT(n3583), .ALUT(n3584), .C0(m[1]), .Z(n3590));
    LUT4 i3267_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(n[0]), .Z(n4125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3267_3_lut.init = 16'hcaca;
    LUT4 n4599_bdd_4_lut (.A(n4599), .B(n3950), .C(n3949), .D(window_count_c[3]), 
         .Z(n4602)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4599_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4116 (.A(window_count_c[2]), .B(n3951), 
         .C(n3952), .D(window_count_c[3]), .Z(n4599)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4116.init = 16'he4aa;
    LUT4 n4479_bdd_4_lut (.A(n4479), .B(n4010), .C(n4009), .D(m[3]), 
         .Z(n4482)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4479_bdd_4_lut.init = 16'haad8;
    FD1S3IX m_142__i0 (.D(n134[0]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(\m[0] ));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i0.GSR = "ENABLED";
    FD1S3AY n__i0 (.D(n67[0]), .CK(fifo_read_clk_keep), .Q(n[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i0.GSR = "ENABLED";
    LUT4 n4515_bdd_4_lut (.A(n4515), .B(n3995), .C(n3994), .D(n[3]), 
         .Z(n4518)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4515_bdd_4_lut.init = 16'haad8;
    LUT4 n4605_bdd_4_lut (.A(n4605), .B(n3725), .C(n3724), .D(window_count_c[3]), 
         .Z(n4608)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4605_bdd_4_lut.init = 16'haad8;
    LUT4 i2965_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(n[0]), 
         .Z(n3823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2965_3_lut.init = 16'hcaca;
    OFS1P3DX subMean_out_i16 (.D(n5[15]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i16.GSR = "ENABLED";
    LUT4 window_count_2__bdd_4_lut_4131 (.A(window_count_c[2]), .B(n3726), 
         .C(n3727), .D(window_count_c[3]), .Z(n4605)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4131.init = 16'he4aa;
    LUT4 n4611_bdd_4_lut (.A(n4611), .B(n4055), .C(n4054), .D(n[3]), 
         .Z(n4614)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4611_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4126 (.A(n[2]), .B(n4056), .C(n4057), .D(n[3]), 
         .Z(n4611)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4126.init = 16'he4aa;
    LUT4 n4617_bdd_4_lut (.A(n4617), .B(n3500), .C(n3499), .D(n[3]), 
         .Z(n4620)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4617_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4146 (.A(n[2]), .B(n3501), .C(n3502), .D(n[3]), 
         .Z(n4617)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4146.init = 16'he4aa;
    LUT4 n4623_bdd_4_lut (.A(n4623), .B(n3935), .C(n3934), .D(window_count_c[3]), 
         .Z(n4626)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4623_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4156 (.A(window_count_c[2]), .B(n3936), 
         .C(n3937), .D(window_count_c[3]), .Z(n4623)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4156.init = 16'he4aa;
    LUT4 n4629_bdd_4_lut (.A(n4629), .B(n3710), .C(n3709), .D(m[3]), 
         .Z(n4632)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4629_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4141 (.A(m[2]), .B(n3711), .C(n3712), .D(m[3]), 
         .Z(n4629)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4141.init = 16'he4aa;
    LUT4 n4635_bdd_4_lut (.A(n4635), .B(n3680), .C(n3679), .D(m[3]), 
         .Z(n4638)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4635_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4161 (.A(m[2]), .B(n3681), .C(n3682), .D(m[3]), 
         .Z(n4635)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4161.init = 16'he4aa;
    LUT4 n4641_bdd_4_lut (.A(n4641), .B(n3980), .C(n3979), .D(n[3]), 
         .Z(n4644)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4641_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4151 (.A(n[2]), .B(n3981), .C(n3982), .D(n[3]), 
         .Z(n4641)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4151.init = 16'he4aa;
    LUT4 n4647_bdd_4_lut (.A(n4647), .B(n3560), .C(n3559), .D(n[3]), 
         .Z(n4650)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4647_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4176 (.A(n[2]), .B(n3561), .C(n3562), .D(n[3]), 
         .Z(n4647)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4176.init = 16'he4aa;
    LUT4 n4653_bdd_4_lut (.A(n4653), .B(n3920), .C(n3919), .D(window_count_c[3]), 
         .Z(n4656)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4653_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4166 (.A(window_count_c[2]), .B(n3921), 
         .C(n3922), .D(window_count_c[3]), .Z(n4653)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4166.init = 16'he4aa;
    LUT4 n4659_bdd_4_lut (.A(n4659), .B(n4040), .C(n4039), .D(m[3]), 
         .Z(n4662)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4659_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4171 (.A(m[2]), .B(n4041), .C(n4042), .D(m[3]), 
         .Z(n4659)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4171.init = 16'he4aa;
    LUT4 n4665_bdd_4_lut (.A(n4665), .B(n4100), .C(n4099), .D(window_count_c[3]), 
         .Z(n4668)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4665_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4181 (.A(window_count_c[2]), .B(n4101), 
         .C(n4102), .D(window_count_c[3]), .Z(n4665)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4181.init = 16'he4aa;
    LUT4 i2480_2_lut (.A(n2[0]), .B(n3[0]), .Z(n86[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2480_2_lut.init = 16'h6666;
    LUT4 i2849_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(\m[0] ), .Z(n3707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2849_3_lut.init = 16'hcaca;
    LUT4 i2850_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(\m[0] ), .Z(n3708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2850_3_lut.init = 16'hcaca;
    LUT4 n4551_bdd_4_lut (.A(n4551), .B(n4145), .C(n4144), .D(m[3]), 
         .Z(n4554)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4551_bdd_4_lut.init = 16'haad8;
    PFUMX i2898 (.BLUT(n3750), .ALUT(n3751), .C0(window_count[1]), .Z(n3756));
    PFUMX i3106 (.BLUT(n3956), .ALUT(n3957), .C0(n5598), .Z(n3964));
    LUT4 n4671_bdd_4_lut (.A(n4671), .B(n3485), .C(n3484), .D(m[3]), 
         .Z(n4674)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4671_bdd_4_lut.init = 16'haad8;
    LUT4 i2966_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(n[0]), 
         .Z(n3824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2966_3_lut.init = 16'hcaca;
    LUT4 m_2__bdd_4_lut (.A(m[2]), .B(n3486), .C(n3487), .D(m[3]), .Z(n4671)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut.init = 16'he4aa;
    LUT4 n4677_bdd_4_lut (.A(n4677), .B(n3605), .C(n3604), .D(n[3]), 
         .Z(n4680)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4677_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4186 (.A(n[2]), .B(n3606), .C(n3607), .D(n[3]), 
         .Z(n4677)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4186.init = 16'he4aa;
    LUT4 n4683_bdd_4_lut (.A(n4683), .B(n3905), .C(n3904), .D(window_count_c[3]), 
         .Z(n4686)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4683_bdd_4_lut.init = 16'haad8;
    LUT4 i2967_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(n[0]), 
         .Z(n3825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2967_3_lut.init = 16'hcaca;
    LUT4 m_2__bdd_4_lut_4046 (.A(m[2]), .B(n4011), .C(n4012), .D(m[3]), 
         .Z(n4479)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4046.init = 16'he4aa;
    LUT4 n_2__bdd_4_lut_4076 (.A(n[2]), .B(n3996), .C(n3997), .D(n[3]), 
         .Z(n4515)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4076.init = 16'he4aa;
    LUT4 i2968_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(n[0]), .Z(n3826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2968_3_lut.init = 16'hcaca;
    LUT4 window_count_2__bdd_4_lut (.A(window_count_c[2]), .B(n3906), .C(n3907), 
         .D(window_count_c[3]), .Z(n4683)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut.init = 16'he4aa;
    LUT4 i3312_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(\window_count[0] ), 
         .Z(n4170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3312_3_lut.init = 16'hcaca;
    LUT4 n4689_bdd_4_lut (.A(n4689), .B(n3665), .C(n3664), .D(n[3]), 
         .Z(n4692)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4689_bdd_4_lut.init = 16'haad8;
    LUT4 i3313_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(\window_count[0] ), .Z(n4171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3313_3_lut.init = 16'hcaca;
    LUT4 i3025_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(\window_count[0] ), 
         .Z(n3883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3025_3_lut.init = 16'hcaca;
    LUT4 n4563_bdd_4_lut (.A(n4563), .B(n3785), .C(n3784), .D(window_count_c[3]), 
         .Z(n4566)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4563_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4091 (.A(m[2]), .B(n4146), .C(n4147), .D(m[3]), 
         .Z(n4551)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4091.init = 16'he4aa;
    LUT4 n_2__bdd_4_lut_4191 (.A(n[2]), .B(n3666), .C(n3667), .D(n[3]), 
         .Z(n4689)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4191.init = 16'he4aa;
    LUT4 i3237_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(\window_count[0] ), .Z(n4095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3237_3_lut.init = 16'hcaca;
    LUT4 i3045_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(\window_count[0] ), .Z(n3903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3045_3_lut.init = 16'hcaca;
    LUT4 i3044_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(\window_count[0] ), .Z(n3902)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3044_3_lut.init = 16'hcaca;
    LUT4 i2805_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(n[0]), .Z(n3663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2805_3_lut.init = 16'hcaca;
    LUT4 i2745_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(n[0]), .Z(n3603)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2745_3_lut.init = 16'hcaca;
    LUT4 i2804_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(n[0]), .Z(n3662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2804_3_lut.init = 16'hcaca;
    LUT4 n4695_bdd_4_lut (.A(n4695), .B(n3545), .C(n3544), .D(n[3]), 
         .Z(n4698)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4695_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4196 (.A(n[2]), .B(n3546), .C(n3547), .D(n[3]), 
         .Z(n4695)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4196.init = 16'he4aa;
    LUT4 n4701_bdd_4_lut (.A(n4701), .B(n4025), .C(n4024), .D(n[3]), 
         .Z(n4704)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4701_bdd_4_lut.init = 16'haad8;
    LUT4 i3133_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(n[0]), .Z(n3991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3133_3_lut.init = 16'hcaca;
    LUT4 n4557_bdd_4_lut (.A(n4557), .B(n3620), .C(n3619), .D(n[3]), 
         .Z(n4560)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4557_bdd_4_lut.init = 16'haad8;
    LUT4 n_2__bdd_4_lut_4106 (.A(n[2]), .B(n3621), .C(n3622), .D(n[3]), 
         .Z(n4557)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4106.init = 16'he4aa;
    LUT4 i2933_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(\m[0] ), .Z(n3791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2933_3_lut.init = 16'hcaca;
    LUT4 n4473_bdd_4_lut (.A(n4473), .B(n3860), .C(n3859), .D(m[3]), 
         .Z(n4476)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4473_bdd_4_lut.init = 16'haad8;
    LUT4 i2934_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(\m[0] ), .Z(n3792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2934_3_lut.init = 16'hcaca;
    LUT4 m_2__bdd_4_lut_4011 (.A(m[2]), .B(n3861), .C(n3862), .D(m[3]), 
         .Z(n4473)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4011.init = 16'he4aa;
    LUT4 i3134_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(n[0]), .Z(n3992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3134_3_lut.init = 16'hcaca;
    LUT4 i3135_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(n[0]), .Z(n3993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3135_3_lut.init = 16'hcaca;
    LUT4 i2935_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(\m[0] ), .Z(n3793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2935_3_lut.init = 16'hcaca;
    LUT4 i2936_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(\m[0] ), .Z(n3794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2936_3_lut.init = 16'hcaca;
    LUT4 i2937_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(\m[0] ), .Z(n3795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2937_3_lut.init = 16'hcaca;
    LUT4 i2938_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(\m[0] ), .Z(n3796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2938_3_lut.init = 16'hcaca;
    LUT4 i2939_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(\m[0] ), .Z(n3797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2939_3_lut.init = 16'hcaca;
    LUT4 i2940_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(\m[0] ), .Z(n3798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2940_3_lut.init = 16'hcaca;
    LUT4 i2948_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(\window_count[0] ), 
         .Z(n3806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2948_3_lut.init = 16'hcaca;
    LUT4 i2949_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(\window_count[0] ), 
         .Z(n3807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2949_3_lut.init = 16'hcaca;
    LUT4 i2950_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(\window_count[0] ), 
         .Z(n3808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2950_3_lut.init = 16'hcaca;
    LUT4 i2951_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(\window_count[0] ), 
         .Z(n3809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2951_3_lut.init = 16'hcaca;
    LUT4 i2952_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(\window_count[0] ), 
         .Z(n3810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2952_3_lut.init = 16'hcaca;
    LUT4 i2953_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(\window_count[0] ), .Z(n3811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2953_3_lut.init = 16'hcaca;
    LUT4 n4485_bdd_4_lut (.A(n4485), .B(n3845), .C(n3844), .D(window_count_c[3]), 
         .Z(n4488)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4485_bdd_4_lut.init = 16'haad8;
    FD1P3AX avg_i0_i15 (.D(sum[19]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i15.GSR = "ENABLED";
    LUT4 i2969_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(n[0]), .Z(n3827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2969_3_lut.init = 16'hcaca;
    LUT4 i2954_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(\window_count[0] ), .Z(n3812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2954_3_lut.init = 16'hcaca;
    LUT4 i3268_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(n[0]), .Z(n4126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3268_3_lut.init = 16'hcaca;
    LUT4 i2970_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(n[0]), .Z(n3828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2970_3_lut.init = 16'hcaca;
    LUT4 i3314_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(\window_count[0] ), .Z(n4172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3314_3_lut.init = 16'hcaca;
    LUT4 i2955_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(\window_count[0] ), .Z(n3813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2955_3_lut.init = 16'hcaca;
    LUT4 i3315_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(\window_count[0] ), .Z(n4173)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3315_3_lut.init = 16'hcaca;
    LUT4 i3143_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(\m[0] ), 
         .Z(n4001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3143_3_lut.init = 16'hcaca;
    LUT4 i2903_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(n[0]), .Z(n3761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2903_3_lut.init = 16'hcaca;
    LUT4 i3144_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(\m[0] ), 
         .Z(n4002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3144_3_lut.init = 16'hcaca;
    LUT4 i3239_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(\window_count[0] ), .Z(n4097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3239_3_lut.init = 16'hcaca;
    LUT4 i3310_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(\window_count[0] ), 
         .Z(n4168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3310_3_lut.init = 16'hcaca;
    LUT4 i3053_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(\window_count[0] ), 
         .Z(n3911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3053_3_lut.init = 16'hcaca;
    LUT4 n4581_bdd_4_lut (.A(n4581), .B(n4085), .C(n4084), .D(window_count_c[3]), 
         .Z(n4584)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4581_bdd_4_lut.init = 16'haad8;
    LUT4 i3145_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(\m[0] ), 
         .Z(n4003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3145_3_lut.init = 16'hcaca;
    LUT4 i3146_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(\m[0] ), 
         .Z(n4004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3146_3_lut.init = 16'hcaca;
    LUT4 i3147_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(\m[0] ), 
         .Z(n4005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3147_3_lut.init = 16'hcaca;
    LUT4 i3238_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(\window_count[0] ), .Z(n4096)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3238_3_lut.init = 16'hcaca;
    FD1P3AX avg_i0_i14 (.D(sum[18]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i14.GSR = "ENABLED";
    FD1P3AX avg_i0_i13 (.D(sum[17]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i13.GSR = "ENABLED";
    FD1P3AX avg_i0_i12 (.D(sum[16]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i12.GSR = "ENABLED";
    FD1P3AX avg_i0_i11 (.D(sum[15]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i11.GSR = "ENABLED";
    FD1P3AX avg_i0_i10 (.D(sum[14]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i10.GSR = "ENABLED";
    FD1P3AX avg_i0_i9 (.D(sum[13]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i9.GSR = "ENABLED";
    FD1P3AX avg_i0_i8 (.D(sum[12]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i8.GSR = "ENABLED";
    FD1P3AX avg_i0_i7 (.D(sum[11]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i7.GSR = "ENABLED";
    FD1P3AX avg_i0_i6 (.D(sum[10]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i6.GSR = "ENABLED";
    FD1P3AX avg_i0_i5 (.D(sum[9]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i5.GSR = "ENABLED";
    FD1P3AX avg_i0_i4 (.D(sum[8]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i4.GSR = "ENABLED";
    FD1P3AX avg_i0_i3 (.D(sum[7]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i3.GSR = "ENABLED";
    FD1P3AX avg_i0_i2 (.D(sum[6]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i2.GSR = "ENABLED";
    FD1P3AX avg_i0_i1 (.D(sum[5]), .SP(window_count[4]), .CK(fifo_read_clk_keep), 
            .Q(avg[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(39[3] 54[6])
    defparam avg_i0_i1.GSR = "ENABLED";
    FD1S3AX sum_138__i19 (.D(n86[19]), .CK(fifo_read_clk_keep), .Q(sum[19]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i19.GSR = "ENABLED";
    FD1S3AX sum_138__i18 (.D(n86[18]), .CK(fifo_read_clk_keep), .Q(sum[18]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i18.GSR = "ENABLED";
    FD1S3AX sum_138__i17 (.D(n86[17]), .CK(fifo_read_clk_keep), .Q(sum[17]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i17.GSR = "ENABLED";
    FD1S3AX sum_138__i16 (.D(n86[16]), .CK(fifo_read_clk_keep), .Q(sum[16]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i16.GSR = "ENABLED";
    FD1S3AX sum_138__i15 (.D(n86[15]), .CK(fifo_read_clk_keep), .Q(sum[15]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i15.GSR = "ENABLED";
    FD1S3AX sum_138__i14 (.D(n86[14]), .CK(fifo_read_clk_keep), .Q(sum[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i14.GSR = "ENABLED";
    FD1S3AX sum_138__i13 (.D(n86[13]), .CK(fifo_read_clk_keep), .Q(sum[13]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i13.GSR = "ENABLED";
    FD1S3AX sum_138__i12 (.D(n86[12]), .CK(fifo_read_clk_keep), .Q(sum[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i12.GSR = "ENABLED";
    FD1S3AX sum_138__i11 (.D(n86[11]), .CK(fifo_read_clk_keep), .Q(sum[11]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i11.GSR = "ENABLED";
    FD1S3AX sum_138__i10 (.D(n86[10]), .CK(fifo_read_clk_keep), .Q(sum[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i10.GSR = "ENABLED";
    FD1S3AX sum_138__i9 (.D(n86[9]), .CK(fifo_read_clk_keep), .Q(sum[9]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i9.GSR = "ENABLED";
    FD1S3AX sum_138__i8 (.D(n86[8]), .CK(fifo_read_clk_keep), .Q(sum[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i8.GSR = "ENABLED";
    FD1S3AX sum_138__i7 (.D(n86[7]), .CK(fifo_read_clk_keep), .Q(sum[7]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i7.GSR = "ENABLED";
    FD1S3AX sum_138__i6 (.D(n86[6]), .CK(fifo_read_clk_keep), .Q(sum[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i6.GSR = "ENABLED";
    FD1S3AX sum_138__i5 (.D(n86[5]), .CK(fifo_read_clk_keep), .Q(sum[5]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i5.GSR = "ENABLED";
    FD1S3AX sum_138__i4 (.D(n86[4]), .CK(fifo_read_clk_keep), .Q(sum[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i4.GSR = "ENABLED";
    FD1S3AX sum_138__i3 (.D(n86[3]), .CK(fifo_read_clk_keep), .Q(n3[3]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i3.GSR = "ENABLED";
    FD1S3AX sum_138__i2 (.D(n86[2]), .CK(fifo_read_clk_keep), .Q(n3[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i2.GSR = "ENABLED";
    FD1S3AX sum_138__i1 (.D(n86[1]), .CK(fifo_read_clk_keep), .Q(n3[1]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138__i1.GSR = "ENABLED";
    FD1P3AX window_count_141__i1 (.D(n26[1]), .SP(n4), .CK(fifo_read_clk_keep), 
            .Q(window_count[1]));   // c:/users/sec29/desktop/i2s_iot/submean.v(44[21:35])
    defparam window_count_141__i1.GSR = "ENABLED";
    OFS1P3DX subMean_out_i1 (.D(n5[0]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i1.GSR = "ENABLED";
    OFS1P3DX subMean_out_i2 (.D(n5[1]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i2.GSR = "ENABLED";
    OFS1P3DX subMean_out_i3 (.D(n5[2]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i3.GSR = "ENABLED";
    OFS1P3DX subMean_out_i4 (.D(n5[3]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i4.GSR = "ENABLED";
    OFS1P3DX subMean_out_i5 (.D(n5[4]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i5.GSR = "ENABLED";
    OFS1P3DX subMean_out_i6 (.D(n5[5]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i6.GSR = "ENABLED";
    OFS1P3DX subMean_out_i7 (.D(n5[6]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i7.GSR = "ENABLED";
    OFS1P3DX subMean_out_i8 (.D(n5[7]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i8.GSR = "ENABLED";
    OFS1P3DX subMean_out_i9 (.D(n5[8]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i9.GSR = "ENABLED";
    OFS1P3DX subMean_out_i10 (.D(n5[9]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i10.GSR = "ENABLED";
    OFS1P3DX subMean_out_i11 (.D(n5[10]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i11.GSR = "ENABLED";
    OFS1P3DX subMean_out_i12 (.D(n5[11]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i12.GSR = "ENABLED";
    OFS1P3DX subMean_out_i13 (.D(n5[12]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i13.GSR = "ENABLED";
    OFS1P3DX subMean_out_i14 (.D(n5[13]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i14.GSR = "ENABLED";
    OFS1P3DX subMean_out_i15 (.D(n5[14]), .SP(VCC_net), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(subMean_left_out_c_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(82[4:43])
    defparam subMean_out_i15.GSR = "ENABLED";
    LUT4 i3148_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(\m[0] ), .Z(n4006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3148_3_lut.init = 16'hcaca;
    LUT4 i2978_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(\window_count[0] ), 
         .Z(n3836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2978_3_lut.init = 16'hcaca;
    LUT4 i2979_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(\window_count[0] ), 
         .Z(n3837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2979_3_lut.init = 16'hcaca;
    LUT4 i2744_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(n[0]), .Z(n3602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2744_3_lut.init = 16'hcaca;
    LUT4 window_count_2__bdd_4_lut_4101 (.A(window_count_c[2]), .B(n4086), 
         .C(n4087), .D(window_count_c[3]), .Z(n4581)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4101.init = 16'he4aa;
    LUT4 i3054_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(\window_count[0] ), 
         .Z(n3912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3054_3_lut.init = 16'hcaca;
    LUT4 i2697_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(n[0]), .Z(n3555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2697_3_lut.init = 16'hcaca;
    LUT4 i2698_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(n[0]), .Z(n3556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2698_3_lut.init = 16'hcaca;
    LUT4 i3026_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(\window_count[0] ), 
         .Z(n3884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3026_3_lut.init = 16'hcaca;
    LUT4 i2699_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(n[0]), .Z(n3557)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2699_3_lut.init = 16'hcaca;
    LUT4 i2700_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(n[0]), .Z(n3558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2700_3_lut.init = 16'hcaca;
    LUT4 i3055_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(\window_count[0] ), 
         .Z(n3913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3055_3_lut.init = 16'hcaca;
    LUT4 i3056_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(\window_count[0] ), 
         .Z(n3914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3056_3_lut.init = 16'hcaca;
    LUT4 i2813_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(\m[0] ), .Z(n3671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2813_3_lut.init = 16'hcaca;
    LUT4 i3027_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(\window_count[0] ), 
         .Z(n3885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3027_3_lut.init = 16'hcaca;
    LUT4 i2814_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(\m[0] ), .Z(n3672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2814_3_lut.init = 16'hcaca;
    LUT4 i3057_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(\window_count[0] ), 
         .Z(n3915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3057_3_lut.init = 16'hcaca;
    LUT4 i3058_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(\window_count[0] ), .Z(n3916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3058_3_lut.init = 16'hcaca;
    LUT4 n4521_bdd_4_lut (.A(n4521), .B(n3800), .C(n3799), .D(m[3]), 
         .Z(n4524)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4521_bdd_4_lut.init = 16'haad8;
    LUT4 i3059_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(\window_count[0] ), .Z(n3917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3059_3_lut.init = 16'hcaca;
    LUT4 i3060_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(\window_count[0] ), .Z(n3918)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3060_3_lut.init = 16'hcaca;
    LUT4 i2815_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(\m[0] ), .Z(n3673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2815_3_lut.init = 16'hcaca;
    LUT4 i2816_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(\m[0] ), .Z(n3674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2816_3_lut.init = 16'hcaca;
    LUT4 i2817_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(\m[0] ), .Z(n3675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2817_3_lut.init = 16'hcaca;
    LUT4 m_2__bdd_4_lut_4056 (.A(m[2]), .B(n3801), .C(n3802), .D(m[3]), 
         .Z(n4521)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4056.init = 16'he4aa;
    LUT4 i2818_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(\m[0] ), .Z(n3676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2818_3_lut.init = 16'hcaca;
    LUT4 i2819_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(\m[0] ), .Z(n3677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2819_3_lut.init = 16'hcaca;
    LUT4 i2820_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(\m[0] ), .Z(n3678)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2820_3_lut.init = 16'hcaca;
    LUT4 i3028_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(\window_count[0] ), .Z(n3886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3028_3_lut.init = 16'hcaca;
    LUT4 i2633_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(n[0]), 
         .Z(n3491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2633_3_lut.init = 16'hcaca;
    LUT4 i2634_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(n[0]), 
         .Z(n3492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2634_3_lut.init = 16'hcaca;
    LUT4 i2753_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(n[0]), .Z(n3611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2753_3_lut.init = 16'hcaca;
    LUT4 i2754_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(n[0]), .Z(n3612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2754_3_lut.init = 16'hcaca;
    LUT4 i3068_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(\window_count[0] ), 
         .Z(n3926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3068_3_lut.init = 16'hcaca;
    LUT4 i2904_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(n[0]), .Z(n3762)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2904_3_lut.init = 16'hcaca;
    LUT4 i3069_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(\window_count[0] ), 
         .Z(n3927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3069_3_lut.init = 16'hcaca;
    LUT4 i2755_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(n[0]), .Z(n3613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2755_3_lut.init = 16'hcaca;
    LUT4 i2756_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(n[0]), .Z(n3614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2756_3_lut.init = 16'hcaca;
    LUT4 i2905_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(n[0]), .Z(n3763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2905_3_lut.init = 16'hcaca;
    LUT4 i3188_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(n[0]), 
         .Z(n4046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3188_3_lut.init = 16'hcaca;
    LUT4 i3189_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(n[0]), 
         .Z(n4047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3189_3_lut.init = 16'hcaca;
    LUT4 i3070_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(\window_count[0] ), 
         .Z(n3928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3070_3_lut.init = 16'hcaca;
    LUT4 i3071_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(\window_count[0] ), 
         .Z(n3929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3071_3_lut.init = 16'hcaca;
    LUT4 i2757_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(n[0]), .Z(n3615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2757_3_lut.init = 16'hcaca;
    LUT4 i2758_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(n[0]), .Z(n3616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2758_3_lut.init = 16'hcaca;
    LUT4 i2906_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(n[0]), .Z(n3764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2906_3_lut.init = 16'hcaca;
    LUT4 i3072_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(\window_count[0] ), 
         .Z(n3930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3072_3_lut.init = 16'hcaca;
    LUT4 i3073_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(\window_count[0] ), .Z(n3931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3073_3_lut.init = 16'hcaca;
    LUT4 i2843_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(\m[0] ), 
         .Z(n3701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2843_3_lut.init = 16'hcaca;
    LUT4 i2844_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(\m[0] ), 
         .Z(n3702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2844_3_lut.init = 16'hcaca;
    LUT4 i3190_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(n[0]), 
         .Z(n4048)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3190_3_lut.init = 16'hcaca;
    LUT4 i3218_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(\window_count[0] ), .Z(n4076)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3218_3_lut.init = 16'hcaca;
    LUT4 i3191_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(n[0]), 
         .Z(n4049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3191_3_lut.init = 16'hcaca;
    LUT4 i3074_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(\window_count[0] ), .Z(n3932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3074_3_lut.init = 16'hcaca;
    LUT4 i3029_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(\window_count[0] ), .Z(n3887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3029_3_lut.init = 16'hcaca;
    LUT4 i3075_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(\window_count[0] ), .Z(n3933)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3075_3_lut.init = 16'hcaca;
    LUT4 i3115_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(n[0]), 
         .Z(n3973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3115_3_lut.init = 16'hcaca;
    LUT4 i3116_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(n[0]), 
         .Z(n3974)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3116_3_lut.init = 16'hcaca;
    LUT4 i3149_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(\m[0] ), .Z(n4007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3149_3_lut.init = 16'hcaca;
    LUT4 i3030_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(\window_count[0] ), .Z(n3888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3030_3_lut.init = 16'hcaca;
    LUT4 i3150_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(\m[0] ), .Z(n4008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3150_3_lut.init = 16'hcaca;
    LUT4 i2738_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(n[0]), 
         .Z(n3596)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2738_3_lut.init = 16'hcaca;
    LUT4 i2980_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(\window_count[0] ), 
         .Z(n3838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2980_3_lut.init = 16'hcaca;
    LUT4 i2739_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(n[0]), 
         .Z(n3597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2739_3_lut.init = 16'hcaca;
    LUT4 i3192_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(n[0]), 
         .Z(n4050)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3192_3_lut.init = 16'hcaca;
    LUT4 i3219_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(\window_count[0] ), .Z(n4077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3219_3_lut.init = 16'hcaca;
    LUT4 i2981_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(\window_count[0] ), 
         .Z(n3839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2981_3_lut.init = 16'hcaca;
    LUT4 i3193_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(n[0]), .Z(n4051)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3193_3_lut.init = 16'hcaca;
    LUT4 i2982_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(\window_count[0] ), 
         .Z(n3840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2982_3_lut.init = 16'hcaca;
    LUT4 i3194_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(n[0]), .Z(n4052)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3194_3_lut.init = 16'hcaca;
    LUT4 i2983_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(\window_count[0] ), .Z(n3841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2983_3_lut.init = 16'hcaca;
    LUT4 i3195_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(n[0]), .Z(n4053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3195_3_lut.init = 16'hcaca;
    LUT4 i2635_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(n[0]), 
         .Z(n3493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2635_3_lut.init = 16'hcaca;
    LUT4 i2984_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(\window_count[0] ), .Z(n3842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2984_3_lut.init = 16'hcaca;
    LUT4 i2636_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(n[0]), 
         .Z(n3494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2636_3_lut.init = 16'hcaca;
    LUT4 i2678_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(n[0]), 
         .Z(n3536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2678_3_lut.init = 16'hcaca;
    LUT4 i2679_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(n[0]), 
         .Z(n3537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2679_3_lut.init = 16'hcaca;
    LUT4 i3130_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(n[0]), 
         .Z(n3988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3130_3_lut.init = 16'hcaca;
    LUT4 i2637_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(n[0]), 
         .Z(n3495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2637_3_lut.init = 16'hcaca;
    LUT4 i2638_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(n[0]), .Z(n3496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2638_3_lut.init = 16'hcaca;
    LUT4 i2985_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(\window_count[0] ), .Z(n3843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2985_3_lut.init = 16'hcaca;
    LUT4 i2774_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(\m[0] ), .Z(n3632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2774_3_lut.init = 16'hcaca;
    LUT4 i3128_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(n[0]), 
         .Z(n3986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3128_3_lut.init = 16'hcaca;
    LUT4 i2775_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(\m[0] ), .Z(n3633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2775_3_lut.init = 16'hcaca;
    LUT4 i2680_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(n[0]), 
         .Z(n3538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2680_3_lut.init = 16'hcaca;
    LUT4 i2993_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(\m[0] ), 
         .Z(n3851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2993_3_lut.init = 16'hcaca;
    LUT4 i2681_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(n[0]), 
         .Z(n3539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2681_3_lut.init = 16'hcaca;
    LUT4 i2994_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(\m[0] ), 
         .Z(n3852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2994_3_lut.init = 16'hcaca;
    LUT4 i2618_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(\m[0] ), 
         .Z(n3476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2618_3_lut.init = 16'hcaca;
    PFUMX i3121 (.BLUT(n3971), .ALUT(n3972), .C0(n[1]), .Z(n3979));
    CCU2D m_142_add_4_25 (.A0(m[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3190), 
          .COUT(n3191), .S0(n134[23]), .S1(n134[24]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_25.INIT0 = 16'hfaaa;
    defparam m_142_add_4_25.INIT1 = 16'hfaaa;
    defparam m_142_add_4_25.INJECT1_0 = "NO";
    defparam m_142_add_4_25.INJECT1_1 = "NO";
    LUT4 i2995_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(\m[0] ), 
         .Z(n3853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2995_3_lut.init = 16'hcaca;
    LUT4 i3117_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(n[0]), 
         .Z(n3975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3117_3_lut.init = 16'hcaca;
    LUT4 i2996_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(\m[0] ), 
         .Z(n3854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2996_3_lut.init = 16'hcaca;
    LUT4 i2619_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(\m[0] ), 
         .Z(n3477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2619_3_lut.init = 16'hcaca;
    PFUMX i2914 (.BLUT(n3767), .ALUT(n3768), .C0(n[1]), .Z(n3772));
    LUT4 i2682_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(n[0]), 
         .Z(n3540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2682_3_lut.init = 16'hcaca;
    LUT4 i2639_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(n[0]), .Z(n3497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2639_3_lut.init = 16'hcaca;
    LUT4 i2997_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(\m[0] ), 
         .Z(n3855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2997_3_lut.init = 16'hcaca;
    LUT4 i2640_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(n[0]), .Z(n3498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2640_3_lut.init = 16'hcaca;
    LUT4 i2759_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(n[0]), .Z(n3617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2759_3_lut.init = 16'hcaca;
    LUT4 i2683_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(n[0]), .Z(n3541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2683_3_lut.init = 16'hcaca;
    PFUMX i2659 (.BLUT(n3512), .ALUT(n3513), .C0(n[1]), .Z(n3517));
    LUT4 i2760_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(n[0]), .Z(n3618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2760_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_23 (.A0(m[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3189), 
          .COUT(n3190), .S0(n134[21]), .S1(n134[22]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_23.INIT0 = 16'hfaaa;
    defparam m_142_add_4_23.INIT1 = 16'hfaaa;
    defparam m_142_add_4_23.INJECT1_0 = "NO";
    defparam m_142_add_4_23.INJECT1_1 = "NO";
    LUT4 i2998_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(\m[0] ), .Z(n3856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2998_3_lut.init = 16'hcaca;
    LUT4 i2708_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(\m[0] ), 
         .Z(n3566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2708_3_lut.init = 16'hcaca;
    LUT4 i3118_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(n[0]), .Z(n3976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3118_3_lut.init = 16'hcaca;
    LUT4 i2709_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(\m[0] ), 
         .Z(n3567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2709_3_lut.init = 16'hcaca;
    LUT4 i2723_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(\m[0] ), .Z(n3581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2723_3_lut.init = 16'hcaca;
    LUT4 i2724_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(\m[0] ), .Z(n3582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2724_3_lut.init = 16'hcaca;
    LUT4 n_2__bdd_4_lut (.A(n[2]), .B(n4026), .C(n4027), .D(n[3]), .Z(n4701)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut.init = 16'he4aa;
    CCU2D m_142_add_4_21 (.A0(m[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3188), 
          .COUT(n3189), .S0(n134[19]), .S1(n134[20]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_21.INIT0 = 16'hfaaa;
    defparam m_142_add_4_21.INIT1 = 16'hfaaa;
    defparam m_142_add_4_21.INJECT1_0 = "NO";
    defparam m_142_add_4_21.INJECT1_1 = "NO";
    LUT4 i2620_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(\m[0] ), 
         .Z(n3478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2620_3_lut.init = 16'hcaca;
    LUT4 window_count_2__bdd_4_lut_4086 (.A(window_count_c[2]), .B(n3786), 
         .C(n3787), .D(window_count_c[3]), .Z(n4563)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4086.init = 16'he4aa;
    LUT4 window_count_2__bdd_4_lut_4026 (.A(window_count_c[2]), .B(n3846), 
         .C(n3847), .D(window_count_c[3]), .Z(n4485)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4026.init = 16'he4aa;
    LUT4 i3119_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(n[0]), .Z(n3977)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3119_3_lut.init = 16'hcaca;
    LUT4 n4491_bdd_4_lut (.A(n4491), .B(n3515), .C(n3514), .D(n[3]), 
         .Z(n4494)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4491_bdd_4_lut.init = 16'haad8;
    LUT4 i2710_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(\m[0] ), 
         .Z(n3568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2710_3_lut.init = 16'hcaca;
    LUT4 i2711_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(\m[0] ), 
         .Z(n3569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2711_3_lut.init = 16'hcaca;
    LUT4 i3248_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(\window_count[0] ), .Z(n4106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3248_3_lut.init = 16'hcaca;
    LUT4 n_2__bdd_4_lut_4031 (.A(n[2]), .B(n3516), .C(n3517), .D(n[3]), 
         .Z(n4491)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4031.init = 16'he4aa;
    CCU2D m_142_add_4_19 (.A0(m[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3187), 
          .COUT(n3188), .S0(n134[17]), .S1(n134[18]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_19.INIT0 = 16'hfaaa;
    defparam m_142_add_4_19.INIT1 = 16'hfaaa;
    defparam m_142_add_4_19.INJECT1_0 = "NO";
    defparam m_142_add_4_19.INJECT1_1 = "NO";
    LUT4 n4569_bdd_4_lut (.A(n4569), .B(n3755), .C(n3754), .D(window_count_c[3]), 
         .Z(n4572)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4569_bdd_4_lut.init = 16'haad8;
    LUT4 i3120_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(n[0]), .Z(n3978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3120_3_lut.init = 16'hcaca;
    CCU2D sub_33_add_2_5 (.A0(n4614), .B0(avg[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n4644), .B1(avg[4]), .C1(GND_net), .D1(GND_net), .CIN(n3196), 
          .COUT(n3197), .S0(n5[3]), .S1(n5[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_5.INIT0 = 16'h5999;
    defparam sub_33_add_2_5.INIT1 = 16'h5999;
    defparam sub_33_add_2_5.INJECT1_0 = "NO";
    defparam sub_33_add_2_5.INJECT1_1 = "NO";
    LUT4 n4497_bdd_4_lut (.A(n4497), .B(n4175), .C(n4174), .D(window_count_c[3]), 
         .Z(n4500)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4497_bdd_4_lut.init = 16'haad8;
    LUT4 window_count_2__bdd_4_lut_4096 (.A(window_count_c[2]), .B(n3756), 
         .C(n3757), .D(window_count_c[3]), .Z(n4569)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4096.init = 16'he4aa;
    LUT4 window_count_2__bdd_4_lut_4036 (.A(window_count_c[2]), .B(n4176), 
         .C(n4177), .D(window_count_c[3]), .Z(n4497)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4036.init = 16'he4aa;
    LUT4 i3249_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(\window_count[0] ), .Z(n4107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3249_3_lut.init = 16'hcaca;
    LUT4 i2858_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(\window_count[0] ), .Z(n3716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2858_3_lut.init = 16'hcaca;
    LUT4 i2859_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(\window_count[0] ), .Z(n3717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2859_3_lut.init = 16'hcaca;
    LUT4 i3269_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(n[0]), .Z(n4127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3269_3_lut.init = 16'hcaca;
    LUT4 i3270_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(n[0]), .Z(n4128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3270_3_lut.init = 16'hcaca;
    LUT4 i3220_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(\window_count[0] ), .Z(n4078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3220_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_17 (.A0(m[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3186), 
          .COUT(n3187), .S0(n134[15]), .S1(n134[16]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_17.INIT0 = 16'hfaaa;
    defparam m_142_add_4_17.INIT1 = 16'hfaaa;
    defparam m_142_add_4_17.INJECT1_0 = "NO";
    defparam m_142_add_4_17.INJECT1_1 = "NO";
    LUT4 i3250_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(\window_count[0] ), .Z(n4108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3250_3_lut.init = 16'hcaca;
    LUT4 i3131_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(n[0]), 
         .Z(n3989)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3131_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_15 (.A0(m[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3185), 
          .COUT(n3186), .S0(n134[13]), .S1(n134[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_15.INIT0 = 16'hfaaa;
    defparam m_142_add_4_15.INIT1 = 16'hfaaa;
    defparam m_142_add_4_15.INJECT1_0 = "NO";
    defparam m_142_add_4_15.INJECT1_1 = "NO";
    LUT4 i3251_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(\window_count[0] ), .Z(n4109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3251_3_lut.init = 16'hcaca;
    LUT4 i2860_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(\window_count[0] ), .Z(n3718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2860_3_lut.init = 16'hcaca;
    LUT4 i3221_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(\window_count[0] ), .Z(n4079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3221_3_lut.init = 16'hcaca;
    LUT4 i3222_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(\window_count[0] ), .Z(n4080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3222_3_lut.init = 16'hcaca;
    LUT4 i2861_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(\window_count[0] ), .Z(n3719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2861_3_lut.init = 16'hcaca;
    LUT4 i2907_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(n[0]), .Z(n3765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2907_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_13 (.A0(m[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3184), 
          .COUT(n3185), .S0(n134[11]), .S1(n134[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_13.INIT0 = 16'hfaaa;
    defparam m_142_add_4_13.INIT1 = 16'hfaaa;
    defparam m_142_add_4_13.INJECT1_0 = "NO";
    defparam m_142_add_4_13.INJECT1_1 = "NO";
    LUT4 i2908_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(n[0]), .Z(n3766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2908_3_lut.init = 16'hcaca;
    LUT4 i2862_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(\window_count[0] ), .Z(n3720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2862_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_11 (.A0(m[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3183), 
          .COUT(n3184), .S0(n134[9]), .S1(n134[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_11.INIT0 = 16'hfaaa;
    defparam m_142_add_4_11.INIT1 = 16'hfaaa;
    defparam m_142_add_4_11.INJECT1_0 = "NO";
    defparam m_142_add_4_11.INJECT1_1 = "NO";
    LUT4 i2863_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(\window_count[0] ), .Z(n3721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2863_3_lut.init = 16'hcaca;
    LUT4 i3223_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(\window_count[0] ), .Z(n4081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3223_3_lut.init = 16'hcaca;
    LUT4 i2828_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(\m[0] ), 
         .Z(n3686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2828_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_9 (.A0(m[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3182), 
          .COUT(n3183), .S0(n134[7]), .S1(n134[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_9.INIT0 = 16'hfaaa;
    defparam m_142_add_4_9.INIT1 = 16'hfaaa;
    defparam m_142_add_4_9.INJECT1_0 = "NO";
    defparam m_142_add_4_9.INJECT1_1 = "NO";
    LUT4 i3224_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(\window_count[0] ), .Z(n4082)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3224_3_lut.init = 16'hcaca;
    LUT4 i2829_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(\m[0] ), 
         .Z(n3687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2829_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_7 (.A0(m[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3181), 
          .COUT(n3182), .S0(n134[5]), .S1(n134[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_7.INIT0 = 16'hfaaa;
    defparam m_142_add_4_7.INIT1 = 16'hfaaa;
    defparam m_142_add_4_7.INJECT1_0 = "NO";
    defparam m_142_add_4_7.INJECT1_1 = "NO";
    LUT4 i3252_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(\window_count[0] ), .Z(n4110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3252_3_lut.init = 16'hcaca;
    LUT4 i3253_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(\window_count[0] ), .Z(n4111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3253_3_lut.init = 16'hcaca;
    LUT4 i2864_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(\window_count[0] ), .Z(n3722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2864_3_lut.init = 16'hcaca;
    LUT4 n4527_bdd_4_lut (.A(n4527), .B(n4160), .C(n4159), .D(window_count_c[3]), 
         .Z(n4530)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4527_bdd_4_lut.init = 16'haad8;
    LUT4 i2865_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(\window_count[0] ), .Z(n3723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2865_3_lut.init = 16'hcaca;
    LUT4 i3225_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(\window_count[0] ), .Z(n4083)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3225_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_5 (.A0(m[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3180), 
          .COUT(n3181), .S0(n134[3]), .S1(n134[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_5.INIT0 = 16'hfaaa;
    defparam m_142_add_4_5.INIT1 = 16'hfaaa;
    defparam m_142_add_4_5.INJECT1_0 = "NO";
    defparam m_142_add_4_5.INJECT1_1 = "NO";
    CCU2D add_2344_28 (.A0(n[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3319), 
          .S1(n543));
    defparam add_2344_28.INIT0 = 16'hf555;
    defparam add_2344_28.INIT1 = 16'h0000;
    defparam add_2344_28.INJECT1_0 = "NO";
    defparam add_2344_28.INJECT1_1 = "NO";
    CCU2D add_2344_26 (.A0(n[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3318), 
          .COUT(n3319));
    defparam add_2344_26.INIT0 = 16'h5555;
    defparam add_2344_26.INIT1 = 16'h5555;
    defparam add_2344_26.INJECT1_0 = "NO";
    defparam add_2344_26.INJECT1_1 = "NO";
    LUT4 i3083_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(\window_count[0] ), 
         .Z(n3941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3083_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_3 (.A0(m[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3179), 
          .COUT(n3180), .S0(n134[1]), .S1(n134[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_3.INIT0 = 16'hfaaa;
    defparam m_142_add_4_3.INIT1 = 16'hfaaa;
    defparam m_142_add_4_3.INJECT1_0 = "NO";
    defparam m_142_add_4_3.INJECT1_1 = "NO";
    CCU2D add_2344_24 (.A0(n[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3317), 
          .COUT(n3318));
    defparam add_2344_24.INIT0 = 16'h5555;
    defparam add_2344_24.INIT1 = 16'h5555;
    defparam add_2344_24.INJECT1_0 = "NO";
    defparam add_2344_24.INJECT1_1 = "NO";
    CCU2D add_2344_22 (.A0(n[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3316), 
          .COUT(n3317));
    defparam add_2344_22.INIT0 = 16'h5555;
    defparam add_2344_22.INIT1 = 16'h5555;
    defparam add_2344_22.INJECT1_0 = "NO";
    defparam add_2344_22.INJECT1_1 = "NO";
    LUT4 i3084_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(\window_count[0] ), 
         .Z(n3942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3084_3_lut.init = 16'hcaca;
    CCU2D add_2344_20 (.A0(n[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3315), 
          .COUT(n3316));
    defparam add_2344_20.INIT0 = 16'h5555;
    defparam add_2344_20.INIT1 = 16'h5555;
    defparam add_2344_20.INJECT1_0 = "NO";
    defparam add_2344_20.INJECT1_1 = "NO";
    CCU2D add_2344_18 (.A0(n[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3314), 
          .COUT(n3315));
    defparam add_2344_18.INIT0 = 16'h5555;
    defparam add_2344_18.INIT1 = 16'h5555;
    defparam add_2344_18.INJECT1_0 = "NO";
    defparam add_2344_18.INJECT1_1 = "NO";
    LUT4 i3085_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(\window_count[0] ), 
         .Z(n3943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3085_3_lut.init = 16'hcaca;
    LUT4 window_count_2__bdd_4_lut_4081 (.A(window_count_c[2]), .B(n4161), 
         .C(n4162), .D(window_count_c[3]), .Z(n4527)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4081.init = 16'he4aa;
    LUT4 i3132_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(n[0]), 
         .Z(n3990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3132_3_lut.init = 16'hcaca;
    CCU2D add_2344_16 (.A0(n[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3313), 
          .COUT(n3314));
    defparam add_2344_16.INIT0 = 16'h5555;
    defparam add_2344_16.INIT1 = 16'h5555;
    defparam add_2344_16.INJECT1_0 = "NO";
    defparam add_2344_16.INJECT1_1 = "NO";
    CCU2D add_2344_14 (.A0(n[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3312), 
          .COUT(n3313));
    defparam add_2344_14.INIT0 = 16'h5555;
    defparam add_2344_14.INIT1 = 16'h5555;
    defparam add_2344_14.INJECT1_0 = "NO";
    defparam add_2344_14.INJECT1_1 = "NO";
    CCU2D add_2344_12 (.A0(n[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3311), 
          .COUT(n3312));
    defparam add_2344_12.INIT0 = 16'h5555;
    defparam add_2344_12.INIT1 = 16'h5555;
    defparam add_2344_12.INJECT1_0 = "NO";
    defparam add_2344_12.INJECT1_1 = "NO";
    LUT4 i3086_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(\window_count[0] ), 
         .Z(n3944)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3086_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n8), .B(n8_adj_5), .C(n2899), .D(n2897), .Z(n1191)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut.init = 16'h0ace;
    CCU2D add_2344_10 (.A0(n[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3310), 
          .COUT(n3311));
    defparam add_2344_10.INIT0 = 16'h5555;
    defparam add_2344_10.INIT1 = 16'h5555;
    defparam add_2344_10.INJECT1_0 = "NO";
    defparam add_2344_10.INJECT1_1 = "NO";
    CCU2D add_2344_8 (.A0(n[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3309), 
          .COUT(n3310));
    defparam add_2344_8.INIT0 = 16'h5555;
    defparam add_2344_8.INIT1 = 16'h5555;
    defparam add_2344_8.INJECT1_0 = "NO";
    defparam add_2344_8.INJECT1_1 = "NO";
    CCU2D add_2344_6 (.A0(n[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3308), 
          .COUT(n3309));
    defparam add_2344_6.INIT0 = 16'h5555;
    defparam add_2344_6.INIT1 = 16'h5555;
    defparam add_2344_6.INJECT1_0 = "NO";
    defparam add_2344_6.INJECT1_1 = "NO";
    CCU2D add_2344_4 (.A0(n[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3307), 
          .COUT(n3308));
    defparam add_2344_4.INIT0 = 16'h5555;
    defparam add_2344_4.INIT1 = 16'h5555;
    defparam add_2344_4.INJECT1_0 = "NO";
    defparam add_2344_4.INJECT1_1 = "NO";
    LUT4 i2180_2_lut (.A(window_count_c[2]), .B(window_count_c[3]), .Z(n2899)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2180_2_lut.init = 16'heeee;
    LUT4 i2178_2_lut (.A(m[2]), .B(m[3]), .Z(n2897)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2178_2_lut.init = 16'heeee;
    CCU2D add_2344_2 (.A0(n[5]), .B0(n[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3307));
    defparam add_2344_2.INIT0 = 16'h1000;
    defparam add_2344_2.INIT1 = 16'h5555;
    defparam add_2344_2.INJECT1_0 = "NO";
    defparam add_2344_2.INJECT1_1 = "NO";
    LUT4 n4503_bdd_4_lut (.A(n4503), .B(n3830), .C(n3829), .D(n[3]), 
         .Z(n4506)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4503_bdd_4_lut.init = 16'haad8;
    CCU2D add_2345_28 (.A0(m[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3306), 
          .S1(n509));
    defparam add_2345_28.INIT0 = 16'hf555;
    defparam add_2345_28.INIT1 = 16'h0000;
    defparam add_2345_28.INJECT1_0 = "NO";
    defparam add_2345_28.INJECT1_1 = "NO";
    CCU2D add_2345_26 (.A0(m[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3305), 
          .COUT(n3306));
    defparam add_2345_26.INIT0 = 16'h5555;
    defparam add_2345_26.INIT1 = 16'h5555;
    defparam add_2345_26.INJECT1_0 = "NO";
    defparam add_2345_26.INJECT1_1 = "NO";
    LUT4 n_2__bdd_4_lut_4041 (.A(n[2]), .B(n3831), .C(n3832), .D(n[3]), 
         .Z(n4503)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam n_2__bdd_4_lut_4041.init = 16'he4aa;
    CCU2D add_2345_24 (.A0(m[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3304), 
          .COUT(n3305));
    defparam add_2345_24.INIT0 = 16'h5555;
    defparam add_2345_24.INIT1 = 16'h5555;
    defparam add_2345_24.INJECT1_0 = "NO";
    defparam add_2345_24.INJECT1_1 = "NO";
    CCU2D add_2345_22 (.A0(m[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3303), 
          .COUT(n3304));
    defparam add_2345_22.INIT0 = 16'h5555;
    defparam add_2345_22.INIT1 = 16'h5555;
    defparam add_2345_22.INJECT1_0 = "NO";
    defparam add_2345_22.INJECT1_1 = "NO";
    CCU2D add_2345_20 (.A0(m[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3302), 
          .COUT(n3303));
    defparam add_2345_20.INIT0 = 16'h5555;
    defparam add_2345_20.INIT1 = 16'h5555;
    defparam add_2345_20.INJECT1_0 = "NO";
    defparam add_2345_20.INJECT1_1 = "NO";
    CCU2D add_2345_18 (.A0(m[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3301), 
          .COUT(n3302));
    defparam add_2345_18.INIT0 = 16'h5555;
    defparam add_2345_18.INIT1 = 16'h5555;
    defparam add_2345_18.INJECT1_0 = "NO";
    defparam add_2345_18.INJECT1_1 = "NO";
    LUT4 i2621_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(\m[0] ), 
         .Z(n3479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2621_3_lut.init = 16'hcaca;
    LUT4 i3254_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(\window_count[0] ), .Z(n4112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3254_3_lut.init = 16'hcaca;
    CCU2D add_2345_16 (.A0(m[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3300), 
          .COUT(n3301));
    defparam add_2345_16.INIT0 = 16'h5555;
    defparam add_2345_16.INIT1 = 16'h5555;
    defparam add_2345_16.INJECT1_0 = "NO";
    defparam add_2345_16.INJECT1_1 = "NO";
    CCU2D add_2345_14 (.A0(m[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3299), 
          .COUT(n3300));
    defparam add_2345_14.INIT0 = 16'h5555;
    defparam add_2345_14.INIT1 = 16'h5555;
    defparam add_2345_14.INJECT1_0 = "NO";
    defparam add_2345_14.INJECT1_1 = "NO";
    CCU2D add_2345_12 (.A0(m[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3298), 
          .COUT(n3299));
    defparam add_2345_12.INIT0 = 16'h5555;
    defparam add_2345_12.INIT1 = 16'h5555;
    defparam add_2345_12.INJECT1_0 = "NO";
    defparam add_2345_12.INJECT1_1 = "NO";
    LUT4 i3255_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(\window_count[0] ), .Z(n4113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3255_3_lut.init = 16'hcaca;
    CCU2D add_2345_10 (.A0(m[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3297), 
          .COUT(n3298));
    defparam add_2345_10.INIT0 = 16'h5555;
    defparam add_2345_10.INIT1 = 16'h5555;
    defparam add_2345_10.INJECT1_0 = "NO";
    defparam add_2345_10.INJECT1_1 = "NO";
    CCU2D add_2345_8 (.A0(m[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3296), 
          .COUT(n3297));
    defparam add_2345_8.INIT0 = 16'h5555;
    defparam add_2345_8.INIT1 = 16'h5555;
    defparam add_2345_8.INJECT1_0 = "NO";
    defparam add_2345_8.INJECT1_1 = "NO";
    CCU2D add_2345_6 (.A0(m[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3295), 
          .COUT(n3296));
    defparam add_2345_6.INIT0 = 16'h5555;
    defparam add_2345_6.INIT1 = 16'h5555;
    defparam add_2345_6.INJECT1_0 = "NO";
    defparam add_2345_6.INJECT1_1 = "NO";
    CCU2D add_2345_4 (.A0(m[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3294), 
          .COUT(n3295));
    defparam add_2345_4.INIT0 = 16'h5555;
    defparam add_2345_4.INIT1 = 16'h5555;
    defparam add_2345_4.INJECT1_0 = "NO";
    defparam add_2345_4.INJECT1_1 = "NO";
    LUT4 i3087_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(\window_count[0] ), 
         .Z(n3945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3087_3_lut.init = 16'hcaca;
    LUT4 i2918_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(\window_count[0] ), .Z(n3776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2918_3_lut.init = 16'hcaca;
    LUT4 i3088_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(\window_count[0] ), .Z(n3946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3088_3_lut.init = 16'hcaca;
    CCU2D add_2345_2 (.A0(m[5]), .B0(m[4]), .C0(GND_net), .D0(GND_net), 
          .A1(m[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3294));
    defparam add_2345_2.INIT0 = 16'h1000;
    defparam add_2345_2.INIT1 = 16'h5555;
    defparam add_2345_2.INJECT1_0 = "NO";
    defparam add_2345_2.INJECT1_1 = "NO";
    CCU2D add_129_19 (.A0(window_count[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3293), .S0(n2[17]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_19.INIT0 = 16'hfaaa;
    defparam add_129_19.INIT1 = 16'h0000;
    defparam add_129_19.INJECT1_0 = "NO";
    defparam add_129_19.INJECT1_1 = "NO";
    CCU2D add_129_17 (.A0(window_count[4]), .B0(n4434), .C0(left_out[15]), 
          .D0(n4590), .A1(window_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3292), .COUT(n3293), .S0(n2[15]), .S1(n2[16]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_17.INIT0 = 16'hd782;
    defparam add_129_17.INIT1 = 16'hfaaa;
    defparam add_129_17.INJECT1_0 = "NO";
    defparam add_129_17.INJECT1_1 = "NO";
    LUT4 i3089_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(\window_count[0] ), .Z(n3947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3089_3_lut.init = 16'hcaca;
    LUT4 i3090_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(\window_count[0] ), .Z(n3948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3090_3_lut.init = 16'hcaca;
    CCU2D add_129_15 (.A0(window_count[4]), .B0(n4428), .C0(left_out[13]), 
          .D0(n4668), .A1(window_count[4]), .B1(n4458), .C1(left_out[14]), 
          .D1(n4584), .CIN(n3291), .COUT(n3292), .S0(n2[13]), .S1(n2[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_15.INIT0 = 16'hd782;
    defparam add_129_15.INIT1 = 16'hd782;
    defparam add_129_15.INJECT1_0 = "NO";
    defparam add_129_15.INJECT1_1 = "NO";
    CCU2D add_129_13 (.A0(window_count[4]), .B0(n4638), .C0(left_out[11]), 
          .D0(n4572), .A1(window_count[4]), .B1(n4554), .C1(left_out[12]), 
          .D1(n4608), .CIN(n3290), .COUT(n3291), .S0(n2[11]), .S1(n2[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_13.INIT0 = 16'hd782;
    defparam add_129_13.INIT1 = 16'hd782;
    defparam add_129_13.INJECT1_0 = "NO";
    defparam add_129_13.INJECT1_1 = "NO";
    LUT4 i2873_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(n[0]), 
         .Z(n3731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2873_3_lut.init = 16'hcaca;
    CCU2D add_129_11 (.A0(window_count[4]), .B0(n4476), .C0(left_out[9]), 
          .D0(n4512), .A1(window_count[4]), .B1(n4524), .C1(left_out[10]), 
          .D1(n4566), .CIN(n3289), .COUT(n3290), .S0(n2[9]), .S1(n2[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_11.INIT0 = 16'hd782;
    defparam add_129_11.INIT1 = 16'hd782;
    defparam add_129_11.INJECT1_0 = "NO";
    defparam add_129_11.INJECT1_1 = "NO";
    CCU2D add_129_9 (.A0(window_count[4]), .B0(n4674), .C0(left_out[7]), 
          .D0(n4452), .A1(window_count[4]), .B1(n4632), .C1(left_out[8]), 
          .D1(n4488), .CIN(n3288), .COUT(n3289), .S0(n2[7]), .S1(n2[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_9.INIT0 = 16'hd782;
    defparam add_129_9.INIT1 = 16'hd782;
    defparam add_129_9.INJECT1_0 = "NO";
    defparam add_129_9.INJECT1_1 = "NO";
    LUT4 i2874_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(n[0]), 
         .Z(n3732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2874_3_lut.init = 16'hcaca;
    LUT4 i2740_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(n[0]), 
         .Z(n3598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2740_3_lut.init = 16'hcaca;
    CCU2D add_129_7 (.A0(window_count[4]), .B0(n4662), .C0(left_out[5]), 
          .D0(n4686), .A1(window_count[4]), .B1(n4548), .C1(left_out[6]), 
          .D1(n4422), .CIN(n3287), .COUT(n3288), .S0(n2[5]), .S1(n2[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_7.INIT0 = 16'hd782;
    defparam add_129_7.INIT1 = 16'hd782;
    defparam add_129_7.INJECT1_0 = "NO";
    defparam add_129_7.INJECT1_1 = "NO";
    LUT4 i2875_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(n[0]), 
         .Z(n3733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2875_3_lut.init = 16'hcaca;
    CCU2D add_129_5 (.A0(window_count[4]), .B0(n4578), .C0(left_out[3]), 
          .D0(n4626), .A1(window_count[4]), .B1(n4482), .C1(left_out[4]), 
          .D1(n4656), .CIN(n3286), .COUT(n3287), .S0(n2[3]), .S1(n2[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_5.INIT0 = 16'hd782;
    defparam add_129_5.INIT1 = 16'hd782;
    defparam add_129_5.INJECT1_0 = "NO";
    defparam add_129_5.INJECT1_1 = "NO";
    CCU2D add_129_3 (.A0(window_count[4]), .B0(n4470), .C0(left_out[1]), 
          .D0(n4530), .A1(window_count[4]), .B1(n4542), .C1(left_out[2]), 
          .D1(n4602), .CIN(n3285), .COUT(n3286), .S0(n2[1]), .S1(n2[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_3.INIT0 = 16'hd782;
    defparam add_129_3.INIT1 = 16'hd782;
    defparam add_129_3.INJECT1_0 = "NO";
    defparam add_129_3.INJECT1_1 = "NO";
    LUT4 i2876_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(n[0]), 
         .Z(n3734)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2876_3_lut.init = 16'hcaca;
    LUT4 i2877_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(n[0]), 
         .Z(n3735)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2877_3_lut.init = 16'hcaca;
    CCU2D add_129_1 (.A0(window_count[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(window_count[4]), .B1(n4536), .C1(left_out[0]), 
          .D1(n4500), .COUT(n3285), .S1(n2[0]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam add_129_1.INIT0 = 16'h5000;
    defparam add_129_1.INIT1 = 16'hd782;
    defparam add_129_1.INJECT1_0 = "NO";
    defparam add_129_1.INJECT1_1 = "NO";
    LUT4 i2878_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(n[0]), .Z(n3736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2878_3_lut.init = 16'hcaca;
    LUT4 i2741_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(n[0]), 
         .Z(n3599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2741_3_lut.init = 16'hcaca;
    LUT4 i2879_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(n[0]), .Z(n3737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2879_3_lut.init = 16'hcaca;
    LUT4 i2880_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(n[0]), .Z(n3738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2880_3_lut.init = 16'hcaca;
    LUT4 i3203_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(\m[0] ), 
         .Z(n4061)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3203_3_lut.init = 16'hcaca;
    LUT4 i3204_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(\m[0] ), 
         .Z(n4062)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3204_3_lut.init = 16'hcaca;
    LUT4 i3205_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(\m[0] ), 
         .Z(n4063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3205_3_lut.init = 16'hcaca;
    LUT4 i3206_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(\m[0] ), 
         .Z(n4064)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3206_3_lut.init = 16'hcaca;
    LUT4 i2919_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(\window_count[0] ), .Z(n3777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2919_3_lut.init = 16'hcaca;
    LUT4 i3207_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(\m[0] ), 
         .Z(n4065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3207_3_lut.init = 16'hcaca;
    LUT4 i3208_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(\m[0] ), .Z(n4066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3208_3_lut.init = 16'hcaca;
    LUT4 i3209_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(\m[0] ), .Z(n4067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3209_3_lut.init = 16'hcaca;
    LUT4 i2727_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(\m[0] ), .Z(n3585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2727_3_lut.init = 16'hcaca;
    LUT4 i3210_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(\m[0] ), .Z(n4068)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3210_3_lut.init = 16'hcaca;
    LUT4 i2728_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(\m[0] ), .Z(n3586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2728_3_lut.init = 16'hcaca;
    LUT4 i2888_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(\window_count[0] ), .Z(n3746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2888_3_lut.init = 16'hcaca;
    LUT4 i2684_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(n[0]), .Z(n3542)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2684_3_lut.init = 16'hcaca;
    LUT4 i2889_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(\window_count[0] ), .Z(n3747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2889_3_lut.init = 16'hcaca;
    LUT4 i2890_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(\window_count[0] ), .Z(n3748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2890_3_lut.init = 16'hcaca;
    LUT4 i2891_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(\window_count[0] ), .Z(n3749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2891_3_lut.init = 16'hcaca;
    LUT4 i2999_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(\m[0] ), .Z(n3857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2999_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_8 (.A(n10), .B(n10_adj_6), .C(n2899), .D(n2897), 
         .Z(n1203)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_8.init = 16'h0ace;
    LUT4 i1_4_lut_adj_9 (.A(n7), .B(n7_adj_7), .C(n2899), .D(n2897), 
         .Z(n1243)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_9.init = 16'h0ace;
    LUT4 i3000_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(\m[0] ), .Z(n3858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3000_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_10 (.A(n9), .B(n9_adj_8), .C(n2899), .D(n2897), 
         .Z(n1265)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_10.init = 16'h0ace;
    LUT4 i1_4_lut_adj_11 (.A(n8), .B(n8_adj_5), .C(n1105), .D(n1127), 
         .Z(n1297)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_11.init = 16'heca0;
    PFUMX i2899 (.BLUT(n3752), .ALUT(n3753), .C0(window_count[1]), .Z(n3757));
    CCU2D add_25_33 (.A0(n[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3268), 
          .S0(n242[31]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_33.INIT0 = 16'h5aaa;
    defparam add_25_33.INIT1 = 16'h0000;
    defparam add_25_33.INJECT1_0 = "NO";
    defparam add_25_33.INJECT1_1 = "NO";
    CCU2D add_25_31 (.A0(n[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3267), 
          .COUT(n3268), .S0(n242[29]), .S1(n242[30]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_31.INIT0 = 16'h5aaa;
    defparam add_25_31.INIT1 = 16'h5aaa;
    defparam add_25_31.INJECT1_0 = "NO";
    defparam add_25_31.INJECT1_1 = "NO";
    PFUMX i3107 (.BLUT(n3958), .ALUT(n3959), .C0(m[1]), .Z(n3965));
    CCU2D add_25_29 (.A0(n[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3266), 
          .COUT(n3267), .S0(n242[27]), .S1(n242[28]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_29.INIT0 = 16'h5aaa;
    defparam add_25_29.INIT1 = 16'h5aaa;
    defparam add_25_29.INJECT1_0 = "NO";
    defparam add_25_29.INJECT1_1 = "NO";
    CCU2D add_25_27 (.A0(n[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3265), 
          .COUT(n3266), .S0(n242[25]), .S1(n242[26]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_27.INIT0 = 16'h5aaa;
    defparam add_25_27.INIT1 = 16'h5aaa;
    defparam add_25_27.INJECT1_0 = "NO";
    defparam add_25_27.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(window_count_c[2]), .B(window_count_c[3]), .Z(n1105)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(42[5:33])
    defparam i1_2_lut.init = 16'h2222;
    CCU2D add_25_25 (.A0(n[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3264), 
          .COUT(n3265), .S0(n242[23]), .S1(n242[24]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_25.INIT0 = 16'h5aaa;
    defparam add_25_25.INIT1 = 16'h5aaa;
    defparam add_25_25.INJECT1_0 = "NO";
    defparam add_25_25.INJECT1_1 = "NO";
    CCU2D add_25_23 (.A0(n[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3263), 
          .COUT(n3264), .S0(n242[21]), .S1(n242[22]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_23.INIT0 = 16'h5aaa;
    defparam add_25_23.INIT1 = 16'h5aaa;
    defparam add_25_23.INJECT1_0 = "NO";
    defparam add_25_23.INJECT1_1 = "NO";
    LUT4 i2920_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(\window_count[0] ), .Z(n3778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2920_3_lut.init = 16'hcaca;
    CCU2D add_25_21 (.A0(n[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3262), 
          .COUT(n3263), .S0(n242[19]), .S1(n242[20]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_21.INIT0 = 16'h5aaa;
    defparam add_25_21.INIT1 = 16'h5aaa;
    defparam add_25_21.INJECT1_0 = "NO";
    defparam add_25_21.INJECT1_1 = "NO";
    CCU2D add_25_19 (.A0(n[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3261), 
          .COUT(n3262), .S0(n242[17]), .S1(n242[18]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_19.INIT0 = 16'h5aaa;
    defparam add_25_19.INIT1 = 16'h5aaa;
    defparam add_25_19.INJECT1_0 = "NO";
    defparam add_25_19.INJECT1_1 = "NO";
    CCU2D add_25_17 (.A0(n[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3260), 
          .COUT(n3261), .S0(n242[15]), .S1(n242[16]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_17.INIT0 = 16'h5aaa;
    defparam add_25_17.INIT1 = 16'h5aaa;
    defparam add_25_17.INJECT1_0 = "NO";
    defparam add_25_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_12 (.A(m[2]), .B(m[3]), .Z(n1127)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(51[5:22])
    defparam i1_2_lut_adj_12.init = 16'h2222;
    PFUMX i2837 (.BLUT(n3688), .ALUT(n3689), .C0(m[1]), .Z(n3695));
    CCU2D add_25_15 (.A0(n[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3259), 
          .COUT(n3260), .S0(n242[13]), .S1(n242[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_15.INIT0 = 16'h5aaa;
    defparam add_25_15.INIT1 = 16'h5aaa;
    defparam add_25_15.INJECT1_0 = "NO";
    defparam add_25_15.INJECT1_1 = "NO";
    CCU2D add_25_13 (.A0(n[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3258), 
          .COUT(n3259), .S0(n242[11]), .S1(n242[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_13.INIT0 = 16'h5aaa;
    defparam add_25_13.INIT1 = 16'h5aaa;
    defparam add_25_13.INJECT1_0 = "NO";
    defparam add_25_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_13 (.A(n10), .B(n10_adj_6), .C(n1105), .D(n1127), 
         .Z(n1329)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_13.init = 16'heca0;
    CCU2D add_25_11 (.A0(n[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3257), 
          .COUT(n3258), .S0(n242[9]), .S1(n242[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_11.INIT0 = 16'h5aaa;
    defparam add_25_11.INIT1 = 16'h5aaa;
    defparam add_25_11.INJECT1_0 = "NO";
    defparam add_25_11.INJECT1_1 = "NO";
    CCU2D add_25_9 (.A0(n[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3256), 
          .COUT(n3257), .S0(n242[7]), .S1(n242[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_9.INIT0 = 16'h5aaa;
    defparam add_25_9.INIT1 = 16'h5aaa;
    defparam add_25_9.INJECT1_0 = "NO";
    defparam add_25_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_14 (.A(n7), .B(n7_adj_7), .C(n1105), .D(n1127), 
         .Z(n1361)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_14.init = 16'heca0;
    CCU2D add_25_7 (.A0(n[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3255), 
          .COUT(n3256), .S0(n242[5]), .S1(n242[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_7.INIT0 = 16'h5aaa;
    defparam add_25_7.INIT1 = 16'h5aaa;
    defparam add_25_7.INJECT1_0 = "NO";
    defparam add_25_7.INJECT1_1 = "NO";
    CCU2D add_25_5 (.A0(n[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3254), 
          .COUT(n3255), .S0(n242[3]), .S1(n242[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_5.INIT0 = 16'h5aaa;
    defparam add_25_5.INIT1 = 16'h5aaa;
    defparam add_25_5.INJECT1_0 = "NO";
    defparam add_25_5.INJECT1_1 = "NO";
    CCU2D add_25_3 (.A0(n[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3253), 
          .COUT(n3254), .S0(n242[1]), .S1(n242[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_3.INIT0 = 16'h5aaa;
    defparam add_25_3.INIT1 = 16'h5aaa;
    defparam add_25_3.INJECT1_0 = "NO";
    defparam add_25_3.INJECT1_1 = "NO";
    LUT4 i2685_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(n[0]), .Z(n3543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2685_3_lut.init = 16'hcaca;
    PFUMX i3108 (.BLUT(n3960), .ALUT(n3961), .C0(m[1]), .Z(n3966));
    CCU2D add_25_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3253), 
          .S1(n242[0]));   // c:/users/sec29/desktop/i2s_iot/submean.v(68[9:14])
    defparam add_25_1.INIT0 = 16'hF000;
    defparam add_25_1.INIT1 = 16'h5555;
    defparam add_25_1.INJECT1_0 = "NO";
    defparam add_25_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_15 (.A(n9), .B(n9_adj_8), .C(n1105), .D(n1127), 
         .Z(n1393)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_15.init = 16'heca0;
    PFUMX i2718 (.BLUT(n3570), .ALUT(n3571), .C0(m[1]), .Z(n3576));
    LUT4 i1_4_lut_adj_16 (.A(n8), .B(n8_adj_5), .C(n1090), .D(n1080), 
         .Z(n1425)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_16.init = 16'heca0;
    PFUMX i3109 (.BLUT(n3962), .ALUT(n3963), .C0(m[1]), .Z(n3967));
    LUT4 i3323_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(n[0]), .Z(n4181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3323_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_17 (.A(window_count_c[3]), .B(window_count_c[2]), 
         .Z(n1090)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(42[5:33])
    defparam i1_2_lut_adj_17.init = 16'h2222;
    LUT4 i1_2_lut_adj_18 (.A(m[3]), .B(m[2]), .Z(n1080)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(51[5:22])
    defparam i1_2_lut_adj_18.init = 16'h2222;
    PFUMX i2719 (.BLUT(n3572), .ALUT(n3573), .C0(m[1]), .Z(n3577));
    LUT4 i2798_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(n[0]), 
         .Z(n3656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2798_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_19 (.A(n10), .B(n10_adj_6), .C(n1090), .D(n1080), 
         .Z(n1457)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_19.init = 16'heca0;
    LUT4 i1_4_lut_adj_20 (.A(n7), .B(n7_adj_7), .C(n1090), .D(n1080), 
         .Z(n1489)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_20.init = 16'heca0;
    LUT4 i1_4_lut_adj_21 (.A(n9), .B(n9_adj_8), .C(n1090), .D(n1080), 
         .Z(n1521)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_21.init = 16'heca0;
    PFUMX i2838 (.BLUT(n3690), .ALUT(n3691), .C0(m[1]), .Z(n3696));
    LUT4 i2799_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(n[0]), 
         .Z(n3657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2799_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_22 (.A(n8), .B(n8_adj_5), .C(n1095), .D(n1085), 
         .Z(n1553)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_22.init = 16'heca0;
    LUT4 i3324_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(n[0]), .Z(n4182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3324_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_23 (.A(window_count_c[2]), .B(window_count_c[3]), 
         .Z(n1095)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(42[5:33])
    defparam i1_2_lut_adj_23.init = 16'h8888;
    LUT4 i1_2_lut_adj_24 (.A(m[2]), .B(m[3]), .Z(n1085)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(51[5:22])
    defparam i1_2_lut_adj_24.init = 16'h8888;
    PFUMX i2839 (.BLUT(n3692), .ALUT(n3693), .C0(m[1]), .Z(n3697));
    LUT4 i1_4_lut_adj_25 (.A(n10), .B(n10_adj_6), .C(n1095), .D(n1085), 
         .Z(n1585)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_25.init = 16'heca0;
    LUT4 i2622_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(\m[0] ), 
         .Z(n3480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2622_3_lut.init = 16'hcaca;
    PFUMX i3286 (.BLUT(n4136), .ALUT(n4137), .C0(m[1]), .Z(n4144));
    CCU2D sum_138_add_4_20 (.A0(n2[17]), .B0(sum[18]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[17]), .B1(sum[19]), .C1(GND_net), .D1(GND_net), .CIN(n3212), 
          .S0(n86[18]), .S1(n86[19]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_20.INIT0 = 16'h5666;
    defparam sum_138_add_4_20.INIT1 = 16'h5666;
    defparam sum_138_add_4_20.INJECT1_0 = "NO";
    defparam sum_138_add_4_20.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_18 (.A0(n2[16]), .B0(sum[16]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[17]), .B1(sum[17]), .C1(GND_net), .D1(GND_net), .CIN(n3211), 
          .COUT(n3212), .S0(n86[16]), .S1(n86[17]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_18.INIT0 = 16'h5666;
    defparam sum_138_add_4_18.INIT1 = 16'h5666;
    defparam sum_138_add_4_18.INJECT1_0 = "NO";
    defparam sum_138_add_4_18.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_16 (.A0(n2[14]), .B0(sum[14]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[15]), .B1(sum[15]), .C1(GND_net), .D1(GND_net), .CIN(n3210), 
          .COUT(n3211), .S0(n86[14]), .S1(n86[15]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_16.INIT0 = 16'h5666;
    defparam sum_138_add_4_16.INIT1 = 16'h5666;
    defparam sum_138_add_4_16.INJECT1_0 = "NO";
    defparam sum_138_add_4_16.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_26 (.A(n7), .B(n7_adj_7), .C(n1095), .D(n1085), 
         .Z(n1617)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_26.init = 16'heca0;
    CCU2D sum_138_add_4_14 (.A0(n2[12]), .B0(sum[12]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[13]), .B1(sum[13]), .C1(GND_net), .D1(GND_net), .CIN(n3209), 
          .COUT(n3210), .S0(n86[12]), .S1(n86[13]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_14.INIT0 = 16'h5666;
    defparam sum_138_add_4_14.INIT1 = 16'h5666;
    defparam sum_138_add_4_14.INJECT1_0 = "NO";
    defparam sum_138_add_4_14.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_27 (.A(n9), .B(n9_adj_8), .C(n1095), .D(n1085), 
         .Z(n1649)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_27.init = 16'heca0;
    CCU2D sum_138_add_4_12 (.A0(n2[10]), .B0(sum[10]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[11]), .B1(sum[11]), .C1(GND_net), .D1(GND_net), .CIN(n3208), 
          .COUT(n3209), .S0(n86[10]), .S1(n86[11]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_12.INIT0 = 16'h5666;
    defparam sum_138_add_4_12.INIT1 = 16'h5666;
    defparam sum_138_add_4_12.INJECT1_0 = "NO";
    defparam sum_138_add_4_12.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_10 (.A0(n2[8]), .B0(sum[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[9]), .B1(sum[9]), .C1(GND_net), .D1(GND_net), .CIN(n3207), 
          .COUT(n3208), .S0(n86[8]), .S1(n86[9]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_10.INIT0 = 16'h5666;
    defparam sum_138_add_4_10.INIT1 = 16'h5666;
    defparam sum_138_add_4_10.INJECT1_0 = "NO";
    defparam sum_138_add_4_10.INJECT1_1 = "NO";
    PFUMX i3287 (.BLUT(n4138), .ALUT(n4139), .C0(m[1]), .Z(n4145));
    CCU2D sum_138_add_4_8 (.A0(n2[6]), .B0(sum[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[7]), .B1(sum[7]), .C1(GND_net), .D1(GND_net), .CIN(n3206), 
          .COUT(n3207), .S0(n86[6]), .S1(n86[7]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_8.INIT0 = 16'h5666;
    defparam sum_138_add_4_8.INIT1 = 16'h5666;
    defparam sum_138_add_4_8.INJECT1_0 = "NO";
    defparam sum_138_add_4_8.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_6 (.A0(n2[4]), .B0(sum[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[5]), .B1(sum[5]), .C1(GND_net), .D1(GND_net), .CIN(n3205), 
          .COUT(n3206), .S0(n86[4]), .S1(n86[5]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_6.INIT0 = 16'h5666;
    defparam sum_138_add_4_6.INIT1 = 16'h5666;
    defparam sum_138_add_4_6.INJECT1_0 = "NO";
    defparam sum_138_add_4_6.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_4 (.A0(n2[2]), .B0(n3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[3]), .B1(n3[3]), .C1(GND_net), .D1(GND_net), .CIN(n3204), 
          .COUT(n3205), .S0(n86[2]), .S1(n86[3]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_4.INIT0 = 16'h5666;
    defparam sum_138_add_4_4.INIT1 = 16'h5666;
    defparam sum_138_add_4_4.INJECT1_0 = "NO";
    defparam sum_138_add_4_4.INJECT1_1 = "NO";
    CCU2D sum_138_add_4_2 (.A0(n2[0]), .B0(n3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[1]), .B1(n3[1]), .C1(GND_net), .D1(GND_net), .COUT(n3204), 
          .S1(n86[1]));   // c:/users/sec29/desktop/i2s_iot/submean.v(48[4] 53[7])
    defparam sum_138_add_4_2.INIT0 = 16'h7000;
    defparam sum_138_add_4_2.INIT1 = 16'h5666;
    defparam sum_138_add_4_2.INJECT1_0 = "NO";
    defparam sum_138_add_4_2.INJECT1_1 = "NO";
    LUT4 i3325_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(n[0]), .Z(n4183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3325_3_lut.init = 16'hcaca;
    LUT4 i2623_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(\m[0] ), .Z(n3481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2623_3_lut.init = 16'hcaca;
    LUT4 i190_1_lut (.A(window_count[4]), .Z(n4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(40[6:30])
    defparam i190_1_lut.init = 16'h5555;
    LUT4 EnabledDecoder_2_i1_1_lut (.A(\window_count[0] ), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(42[5:33])
    defparam EnabledDecoder_2_i1_1_lut.init = 16'h5555;
    CCU2D sub_33_add_2_17 (.A0(n4494), .B0(avg[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3202), 
          .S0(n5[15]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_17.INIT0 = 16'h5999;
    defparam sub_33_add_2_17.INIT1 = 16'h0000;
    defparam sub_33_add_2_17.INJECT1_0 = "NO";
    defparam sub_33_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_15 (.A0(n4560), .B0(avg[13]), .C0(GND_net), .D0(GND_net), 
          .A1(n4650), .B1(avg[14]), .C1(GND_net), .D1(GND_net), .CIN(n3201), 
          .COUT(n3202), .S0(n5[13]), .S1(n5[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_15.INIT0 = 16'h5999;
    defparam sub_33_add_2_15.INIT1 = 16'h5999;
    defparam sub_33_add_2_15.INJECT1_0 = "NO";
    defparam sub_33_add_2_15.INJECT1_1 = "NO";
    PFUMX i3288 (.BLUT(n4140), .ALUT(n4141), .C0(m[1]), .Z(n4146));
    CCU2D sub_33_add_2_13 (.A0(n4440), .B0(avg[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n4446), .B1(avg[12]), .C1(GND_net), .D1(GND_net), .CIN(n3200), 
          .COUT(n3201), .S0(n5[11]), .S1(n5[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_13.INIT0 = 16'h5999;
    defparam sub_33_add_2_13.INIT1 = 16'h5999;
    defparam sub_33_add_2_13.INJECT1_0 = "NO";
    defparam sub_33_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_11 (.A0(n4506), .B0(avg[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n4464), .B1(avg[10]), .C1(GND_net), .D1(GND_net), .CIN(n3199), 
          .COUT(n3200), .S0(n5[9]), .S1(n5[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(82[19:42])
    defparam sub_33_add_2_11.INIT0 = 16'h5999;
    defparam sub_33_add_2_11.INIT1 = 16'h5999;
    defparam sub_33_add_2_11.INJECT1_0 = "NO";
    defparam sub_33_add_2_11.INJECT1_1 = "NO";
    LUT4 i3233_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(\window_count[0] ), .Z(n4091)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3233_3_lut.init = 16'hcaca;
    LUT4 i3326_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(n[0]), .Z(n4184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3326_3_lut.init = 16'hcaca;
    LUT4 i2921_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(\window_count[0] ), .Z(n3779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2921_3_lut.init = 16'hcaca;
    PFUMX i3289 (.BLUT(n4142), .ALUT(n4143), .C0(m[1]), .Z(n4147));
    LUT4 i3327_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(n[0]), .Z(n4185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3327_3_lut.init = 16'hcaca;
    LUT4 i3234_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(\window_count[0] ), .Z(n4092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3234_3_lut.init = 16'hcaca;
    LUT4 i2652_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(n[0]), .Z(n3510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2652_3_lut.init = 16'hcaca;
    LUT4 i2653_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(n[0]), .Z(n3511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2653_3_lut.init = 16'hcaca;
    LUT4 i2725_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(\m[0] ), .Z(n3583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2725_3_lut.init = 16'hcaca;
    LUT4 i2624_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(\m[0] ), .Z(n3482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2624_3_lut.init = 16'hcaca;
    LUT4 i2726_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(\m[0] ), .Z(n3584)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2726_3_lut.init = 16'hcaca;
    LUT4 i2171_2_lut (.A(n242[0]), .B(n543), .Z(n67[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam i2171_2_lut.init = 16'h2222;
    PFUMX i3271 (.BLUT(n4121), .ALUT(n4122), .C0(n[1]), .Z(n4129));
    LUT4 i2892_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(\window_count[0] ), .Z(n3750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2892_3_lut.init = 16'hcaca;
    LUT4 i3328_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(n[0]), .Z(n4186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3328_3_lut.init = 16'hcaca;
    LUT4 i2893_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(\window_count[0] ), .Z(n3751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2893_3_lut.init = 16'hcaca;
    LUT4 i3098_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(\m[0] ), 
         .Z(n3956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3098_3_lut.init = 16'hcaca;
    LUT4 i2922_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(\window_count[0] ), .Z(n3780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2922_3_lut.init = 16'hcaca;
    LUT4 i3099_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(\m[0] ), 
         .Z(n3957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3099_3_lut.init = 16'hcaca;
    LUT4 i2395_2_lut (.A(window_count[1]), .B(\window_count[0] ), .Z(n26[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2395_2_lut.init = 16'h6666;
    LUT4 i3008_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(\window_count[0] ), 
         .Z(n3866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3008_3_lut.init = 16'hcaca;
    LUT4 i2625_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(\m[0] ), .Z(n3483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2625_3_lut.init = 16'hcaca;
    PFUMX i3301 (.BLUT(n4151), .ALUT(n4152), .C0(window_count[1]), .Z(n4159));
    LUT4 i3113_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(n[0]), 
         .Z(n3971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3113_3_lut.init = 16'hcaca;
    LUT4 i3114_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(n[0]), 
         .Z(n3972)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3114_3_lut.init = 16'hcaca;
    LUT4 i2909_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(n[0]), .Z(n3767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2909_3_lut.init = 16'hcaca;
    LUT4 i3009_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(\window_count[0] ), 
         .Z(n3867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3009_3_lut.init = 16'hcaca;
    LUT4 i2910_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(n[0]), .Z(n3768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2910_3_lut.init = 16'hcaca;
    LUT4 i2923_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(\window_count[0] ), .Z(n3781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2923_3_lut.init = 16'hcaca;
    LUT4 i2654_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(n[0]), .Z(n3512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2654_3_lut.init = 16'hcaca;
    PFUMX i3272 (.BLUT(n4123), .ALUT(n4124), .C0(n[1]), .Z(n4130));
    LUT4 i3010_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(\window_count[0] ), 
         .Z(n3868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3010_3_lut.init = 16'hcaca;
    LUT4 i2655_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(n[0]), .Z(n3513)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2655_3_lut.init = 16'hcaca;
    LUT4 i3297_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(\window_count[0] ), 
         .Z(n4155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3297_3_lut.init = 16'hcaca;
    LUT4 i2894_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(\window_count[0] ), .Z(n3752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2894_3_lut.init = 16'hcaca;
    LUT4 i2895_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(\window_count[0] ), .Z(n3753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2895_3_lut.init = 16'hcaca;
    LUT4 i3100_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(\m[0] ), 
         .Z(n3958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3100_3_lut.init = 16'hcaca;
    LUT4 i3308_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(\window_count[0] ), 
         .Z(n4166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3308_3_lut.init = 16'hcaca;
    LUT4 i3309_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(\window_count[0] ), 
         .Z(n4167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3309_3_lut.init = 16'hcaca;
    LUT4 i3101_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(\m[0] ), 
         .Z(n3959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3101_3_lut.init = 16'hcaca;
    LUT4 i2830_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(\m[0] ), 
         .Z(n3688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2830_3_lut.init = 16'hcaca;
    LUT4 i2831_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(\m[0] ), 
         .Z(n3689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2831_3_lut.init = 16'hcaca;
    LUT4 i3102_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(\m[0] ), 
         .Z(n3960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3102_3_lut.init = 16'hcaca;
    LUT4 i3298_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(\window_count[0] ), .Z(n4156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3298_3_lut.init = 16'hcaca;
    LUT4 i3103_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(\m[0] ), .Z(n3961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3103_3_lut.init = 16'hcaca;
    LUT4 i2712_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(\m[0] ), 
         .Z(n3570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2712_3_lut.init = 16'hcaca;
    LUT4 i3011_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(\window_count[0] ), 
         .Z(n3869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3011_3_lut.init = 16'hcaca;
    LUT4 i3299_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(\window_count[0] ), .Z(n4157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3299_3_lut.init = 16'hcaca;
    LUT4 i2713_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(\m[0] ), .Z(n3571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2713_3_lut.init = 16'hcaca;
    LUT4 i3104_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(\m[0] ), .Z(n3962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3104_3_lut.init = 16'hcaca;
    LUT4 i3105_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(\m[0] ), .Z(n3963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3105_3_lut.init = 16'hcaca;
    LUT4 i2714_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(\m[0] ), .Z(n3572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2714_3_lut.init = 16'hcaca;
    LUT4 i2715_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(\m[0] ), .Z(n3573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2715_3_lut.init = 16'hcaca;
    LUT4 i3300_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(\window_count[0] ), .Z(n4158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3300_3_lut.init = 16'hcaca;
    LUT4 i2832_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(\m[0] ), 
         .Z(n3690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2832_3_lut.init = 16'hcaca;
    LUT4 i2742_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(n[0]), 
         .Z(n3600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2742_3_lut.init = 16'hcaca;
    LUT4 i2833_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(\m[0] ), .Z(n3691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2833_3_lut.init = 16'hcaca;
    LUT4 i2834_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(\m[0] ), .Z(n3692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2834_3_lut.init = 16'hcaca;
    LUT4 i2835_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(\m[0] ), .Z(n3693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2835_3_lut.init = 16'hcaca;
    LUT4 i3012_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(\window_count[0] ), 
         .Z(n3870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3012_3_lut.init = 16'hcaca;
    LUT4 i2743_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(n[0]), .Z(n3601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2743_3_lut.init = 16'hcaca;
    LUT4 i3173_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(\m[0] ), 
         .Z(n4031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3173_3_lut.init = 16'hcaca;
    LUT4 i3174_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(\m[0] ), 
         .Z(n4032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3174_3_lut.init = 16'hcaca;
    FD1P3AX window_count_141__i2 (.D(n26[2]), .SP(n4), .CK(fifo_read_clk_keep), 
            .Q(window_count_c[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(44[21:35])
    defparam window_count_141__i2.GSR = "ENABLED";
    FD1P3AX window_count_141__i3 (.D(n26[3]), .SP(n4), .CK(fifo_read_clk_keep), 
            .Q(window_count_c[3]));   // c:/users/sec29/desktop/i2s_iot/submean.v(44[21:35])
    defparam window_count_141__i3.GSR = "ENABLED";
    FD1P3AX window_count_141__i4 (.D(n5582), .SP(n26[4]), .CK(fifo_read_clk_keep), 
            .Q(window_count[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(44[21:35])
    defparam window_count_141__i4.GSR = "ENABLED";
    LUT4 i3038_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(\window_count[0] ), 
         .Z(n3896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3038_3_lut.init = 16'hcaca;
    LUT4 i3175_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(\m[0] ), 
         .Z(n4033)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3175_3_lut.init = 16'hcaca;
    LUT4 i3176_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(\m[0] ), 
         .Z(n4034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3176_3_lut.init = 16'hcaca;
    LUT4 i3177_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(\m[0] ), 
         .Z(n4035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3177_3_lut.init = 16'hcaca;
    LUT4 i2768_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(\m[0] ), 
         .Z(n3626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2768_3_lut.init = 16'hcaca;
    LUT4 i3178_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(\m[0] ), .Z(n4036)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3178_3_lut.init = 16'hcaca;
    LUT4 i2693_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(n[0]), .Z(n3551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2693_3_lut.init = 16'hcaca;
    LUT4 i2694_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(n[0]), .Z(n3552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2694_3_lut.init = 16'hcaca;
    LUT4 i2695_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(n[0]), .Z(n3553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2695_3_lut.init = 16'hcaca;
    LUT4 i2696_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(n[0]), .Z(n3554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2696_3_lut.init = 16'hcaca;
    LUT4 i3179_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(\m[0] ), .Z(n4037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3179_3_lut.init = 16'hcaca;
    LUT4 i3180_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(\m[0] ), .Z(n4038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3180_3_lut.init = 16'hcaca;
    LUT4 i3278_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(\m[0] ), .Z(n4136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3278_3_lut.init = 16'hcaca;
    LUT4 i2769_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(\m[0] ), 
         .Z(n3627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2769_3_lut.init = 16'hcaca;
    LUT4 i3279_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(\m[0] ), .Z(n4137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3279_3_lut.init = 16'hcaca;
    LUT4 i3280_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(\m[0] ), .Z(n4138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3280_3_lut.init = 16'hcaca;
    LUT4 i3281_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(\m[0] ), .Z(n4139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3281_3_lut.init = 16'hcaca;
    LUT4 i3282_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(\m[0] ), .Z(n4140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3282_3_lut.init = 16'hcaca;
    FD1S3IX m_142__i1 (.D(n134[1]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[1]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i1.GSR = "ENABLED";
    LUT4 i3283_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(\m[0] ), .Z(n4141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3283_3_lut.init = 16'hcaca;
    LUT4 i3039_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(\window_count[0] ), 
         .Z(n3897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3039_3_lut.init = 16'hcaca;
    FD1S3IX m_142__i2 (.D(n134[2]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[2]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i2.GSR = "ENABLED";
    FD1S3IX m_142__i3 (.D(n134[3]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[3]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i3.GSR = "ENABLED";
    FD1S3IX m_142__i4 (.D(n134[4]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[4]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i4.GSR = "ENABLED";
    FD1S3IX m_142__i5 (.D(n134[5]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[5]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i5.GSR = "ENABLED";
    FD1S3IX m_142__i6 (.D(n134[6]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[6]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i6.GSR = "ENABLED";
    FD1S3IX m_142__i7 (.D(n134[7]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[7]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i7.GSR = "ENABLED";
    FD1S3IX m_142__i8 (.D(n134[8]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[8]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i8.GSR = "ENABLED";
    FD1S3IX m_142__i9 (.D(n134[9]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[9]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i9.GSR = "ENABLED";
    FD1S3IX m_142__i10 (.D(n134[10]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[10]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i10.GSR = "ENABLED";
    FD1S3IX m_142__i11 (.D(n134[11]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[11]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i11.GSR = "ENABLED";
    FD1S3IX m_142__i12 (.D(n134[12]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[12]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i12.GSR = "ENABLED";
    FD1S3IX m_142__i13 (.D(n134[13]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[13]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i13.GSR = "ENABLED";
    FD1S3IX m_142__i14 (.D(n134[14]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[14]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i14.GSR = "ENABLED";
    FD1S3IX m_142__i15 (.D(n134[15]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[15]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i15.GSR = "ENABLED";
    FD1S3IX m_142__i16 (.D(n134[16]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[16]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i16.GSR = "ENABLED";
    FD1S3IX m_142__i17 (.D(n134[17]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[17]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i17.GSR = "ENABLED";
    FD1S3IX m_142__i18 (.D(n134[18]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[18]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i18.GSR = "ENABLED";
    FD1S3IX m_142__i19 (.D(n134[19]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[19]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i19.GSR = "ENABLED";
    FD1S3IX m_142__i20 (.D(n134[20]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[20]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i20.GSR = "ENABLED";
    FD1S3IX m_142__i21 (.D(n134[21]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[21]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i21.GSR = "ENABLED";
    FD1S3IX m_142__i22 (.D(n134[22]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[22]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i22.GSR = "ENABLED";
    FD1S3IX m_142__i23 (.D(n134[23]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[23]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i23.GSR = "ENABLED";
    FD1S3IX m_142__i24 (.D(n134[24]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[24]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i24.GSR = "ENABLED";
    FD1S3IX m_142__i25 (.D(n134[25]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[25]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i25.GSR = "ENABLED";
    FD1S3IX m_142__i26 (.D(n134[26]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[26]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i26.GSR = "ENABLED";
    FD1S3IX m_142__i27 (.D(n134[27]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[27]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i27.GSR = "ENABLED";
    FD1S3IX m_142__i28 (.D(n134[28]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[28]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i28.GSR = "ENABLED";
    FD1S3IX m_142__i29 (.D(n134[29]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[29]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i29.GSR = "ENABLED";
    FD1S3IX m_142__i30 (.D(n134[30]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[30]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i30.GSR = "ENABLED";
    FD1S3IX m_142__i31 (.D(n134[31]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(m[31]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i31.GSR = "ENABLED";
    FD1S3AY n__i1 (.D(n67[1]), .CK(fifo_read_clk_keep), .Q(n[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i1.GSR = "ENABLED";
    FD1S3AY n__i2 (.D(n67[2]), .CK(fifo_read_clk_keep), .Q(n[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i2.GSR = "ENABLED";
    FD1S3IX n__i3 (.D(n242[3]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i3.GSR = "ENABLED";
    FD1S3IX n__i4 (.D(n242[4]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i4.GSR = "ENABLED";
    FD1S3IX n__i5 (.D(n242[5]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i5.GSR = "ENABLED";
    FD1S3IX n__i6 (.D(n242[6]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i6.GSR = "ENABLED";
    FD1S3IX n__i7 (.D(n242[7]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i7.GSR = "ENABLED";
    FD1S3IX n__i8 (.D(n242[8]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i8.GSR = "ENABLED";
    FD1S3IX n__i9 (.D(n242[9]), .CK(fifo_read_clk_keep), .CD(n543), .Q(n[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i9.GSR = "ENABLED";
    FD1S3IX n__i10 (.D(n242[10]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i10.GSR = "ENABLED";
    FD1S3IX n__i11 (.D(n242[11]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i11.GSR = "ENABLED";
    FD1S3IX n__i12 (.D(n242[12]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i12.GSR = "ENABLED";
    FD1S3IX n__i13 (.D(n242[13]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i13.GSR = "ENABLED";
    FD1S3IX n__i14 (.D(n242[14]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i14.GSR = "ENABLED";
    FD1S3IX n__i15 (.D(n242[15]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i15.GSR = "ENABLED";
    FD1S3IX n__i16 (.D(n242[16]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i16.GSR = "ENABLED";
    FD1S3IX n__i17 (.D(n242[17]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i17.GSR = "ENABLED";
    FD1S3IX n__i18 (.D(n242[18]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i18.GSR = "ENABLED";
    FD1S3IX n__i19 (.D(n242[19]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i19.GSR = "ENABLED";
    FD1S3IX n__i20 (.D(n242[20]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i20.GSR = "ENABLED";
    FD1S3IX n__i21 (.D(n242[21]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i21.GSR = "ENABLED";
    FD1S3IX n__i22 (.D(n242[22]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i22.GSR = "ENABLED";
    FD1S3IX n__i23 (.D(n242[23]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i23.GSR = "ENABLED";
    FD1S3IX n__i24 (.D(n242[24]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i24.GSR = "ENABLED";
    FD1S3IX n__i25 (.D(n242[25]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i25.GSR = "ENABLED";
    FD1S3IX n__i26 (.D(n242[26]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i26.GSR = "ENABLED";
    FD1S3IX n__i27 (.D(n242[27]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i27.GSR = "ENABLED";
    FD1S3IX n__i28 (.D(n242[28]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i28.GSR = "ENABLED";
    FD1S3IX n__i29 (.D(n242[29]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i29.GSR = "ENABLED";
    FD1S3IX n__i30 (.D(n242[30]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i30.GSR = "ENABLED";
    FD1S3IX n__i31 (.D(n242[31]), .CK(fifo_read_clk_keep), .CD(n543), 
            .Q(n[31])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=156, LSE_RLINE=162 */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam n__i31.GSR = "ENABLED";
    LUT4 i3284_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(\m[0] ), .Z(n4142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3284_3_lut.init = 16'hcaca;
    LUT4 i3285_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(\m[0] ), .Z(n4143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3285_3_lut.init = 16'hcaca;
    LUT4 i3263_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(n[0]), .Z(n4121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3263_3_lut.init = 16'hcaca;
    LUT4 i3264_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(n[0]), .Z(n4122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3264_3_lut.init = 16'hcaca;
    LUT4 i3293_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(\window_count[0] ), 
         .Z(n4151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3293_3_lut.init = 16'hcaca;
    LUT4 i2800_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(n[0]), 
         .Z(n3658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2800_3_lut.init = 16'hcaca;
    LUT4 i3294_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(\window_count[0] ), 
         .Z(n4152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3294_3_lut.init = 16'hcaca;
    LUT4 i3013_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(\window_count[0] ), .Z(n3871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3013_3_lut.init = 16'hcaca;
    LUT4 i3329_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(n[0]), .Z(n4187)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3329_3_lut.init = 16'hcaca;
    LUT4 i2770_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(\m[0] ), 
         .Z(n3628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2770_3_lut.init = 16'hcaca;
    LUT4 i3330_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(n[0]), .Z(n4188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3330_3_lut.init = 16'hcaca;
    PFUMX i3302 (.BLUT(n4153), .ALUT(n4154), .C0(window_count[1]), .Z(n4160));
    PFUMX i2656 (.BLUT(n3506), .ALUT(n3507), .C0(n[1]), .Z(n3514));
    LUT4 i3265_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(n[0]), .Z(n4123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3265_3_lut.init = 16'hcaca;
    LUT4 i3014_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(\window_count[0] ), .Z(n3872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3014_3_lut.init = 16'hcaca;
    LUT4 i2801_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(n[0]), 
         .Z(n3659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2801_3_lut.init = 16'hcaca;
    CCU2D m_142_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\m[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3179), 
          .S1(n134[0]));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142_add_4_1.INIT0 = 16'hF000;
    defparam m_142_add_4_1.INIT1 = 16'h0555;
    defparam m_142_add_4_1.INJECT1_0 = "NO";
    defparam m_142_add_4_1.INJECT1_1 = "NO";
    PFUMX i2657 (.BLUT(n3508), .ALUT(n3509), .C0(n[1]), .Z(n3515));
    PFUMX i3273 (.BLUT(n4125), .ALUT(n4126), .C0(n[1]), .Z(n4131));
    LUT4 i3015_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(\window_count[0] ), .Z(n3873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3015_3_lut.init = 16'hcaca;
    LUT4 i2663_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(\m[0] ), .Z(n3521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2663_3_lut.init = 16'hcaca;
    PFUMX i2911 (.BLUT(n3761), .ALUT(n3762), .C0(n[1]), .Z(n3769));
    PFUMX i2912 (.BLUT(n3763), .ALUT(n3764), .C0(n[1]), .Z(n3770));
    LUT4 i3266_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(n[0]), .Z(n4124)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3266_3_lut.init = 16'hcaca;
    LUT4 i2771_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(\m[0] ), 
         .Z(n3629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2771_3_lut.init = 16'hcaca;
    LUT4 i2664_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(\m[0] ), .Z(n3522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2664_3_lut.init = 16'hcaca;
    LUT4 i2665_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(\m[0] ), .Z(n3523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2665_3_lut.init = 16'hcaca;
    LUT4 i2666_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(\m[0] ), .Z(n3524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2666_3_lut.init = 16'hcaca;
    LUT4 i3158_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(n[0]), 
         .Z(n4016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3158_3_lut.init = 16'hcaca;
    LUT4 i3159_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(n[0]), 
         .Z(n4017)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3159_3_lut.init = 16'hcaca;
    LUT4 i2667_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(\m[0] ), .Z(n3525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2667_3_lut.init = 16'hcaca;
    LUT4 i2924_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(\window_count[0] ), .Z(n3782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2924_3_lut.init = 16'hcaca;
    LUT4 i2668_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(\m[0] ), .Z(n3526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2668_3_lut.init = 16'hcaca;
    LUT4 i2925_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(\window_count[0] ), .Z(n3783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2925_3_lut.init = 16'hcaca;
    LUT4 i2669_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(\m[0] ), .Z(n3527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2669_3_lut.init = 16'hcaca;
    LUT4 i2670_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(\m[0] ), .Z(n3528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2670_3_lut.init = 16'hcaca;
    LUT4 i2783_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(\m[0] ), .Z(n3641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2783_3_lut.init = 16'hcaca;
    LUT4 i3040_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(\window_count[0] ), 
         .Z(n3898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3040_3_lut.init = 16'hcaca;
    LUT4 i2784_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(\m[0] ), .Z(n3642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2784_3_lut.init = 16'hcaca;
    LUT4 i3160_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(n[0]), 
         .Z(n4018)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3160_3_lut.init = 16'hcaca;
    LUT4 i2729_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(\m[0] ), .Z(n3587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2729_3_lut.init = 16'hcaca;
    LUT4 i3161_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(n[0]), 
         .Z(n4019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3161_3_lut.init = 16'hcaca;
    LUT4 i2730_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(\m[0] ), .Z(n3588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2730_3_lut.init = 16'hcaca;
    LUT4 i2772_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(\m[0] ), 
         .Z(n3630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2772_3_lut.init = 16'hcaca;
    LUT4 i3041_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(\window_count[0] ), 
         .Z(n3899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3041_3_lut.init = 16'hcaca;
    LUT4 i2785_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(\m[0] ), .Z(n3643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2785_3_lut.init = 16'hcaca;
    LUT4 i2786_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(\m[0] ), .Z(n3644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2786_3_lut.init = 16'hcaca;
    LUT4 i2787_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(\m[0] ), .Z(n3645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2787_3_lut.init = 16'hcaca;
    LUT4 i2802_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(n[0]), 
         .Z(n3660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2802_3_lut.init = 16'hcaca;
    LUT4 i2788_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(\m[0] ), .Z(n3646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2788_3_lut.init = 16'hcaca;
    LUT4 i3162_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(n[0]), 
         .Z(n4020)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3162_3_lut.init = 16'hcaca;
    LUT4 i3163_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(n[0]), .Z(n4021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3163_3_lut.init = 16'hcaca;
    LUT4 i2803_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(n[0]), .Z(n3661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2803_3_lut.init = 16'hcaca;
    LUT4 i2773_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(\m[0] ), .Z(n3631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2773_3_lut.init = 16'hcaca;
    PFUMX i3226 (.BLUT(n4076), .ALUT(n4077), .C0(window_count[1]), .Z(n4084));
    PFUMX i3123 (.BLUT(n3975), .ALUT(n3976), .C0(n[1]), .Z(n3981));
    PFUMX i3124 (.BLUT(n3977), .ALUT(n3978), .C0(n[1]), .Z(n3982));
    PFUMX i3227 (.BLUT(n4078), .ALUT(n4079), .C0(window_count[1]), .Z(n4085));
    PFUMX i3228 (.BLUT(n4080), .ALUT(n4081), .C0(window_count[1]), .Z(n4086));
    PFUMX i3229 (.BLUT(n4082), .ALUT(n4083), .C0(window_count[1]), .Z(n4087));
    PFUMX i2926 (.BLUT(n3776), .ALUT(n3777), .C0(window_count[1]), .Z(n3784));
    PFUMX i2733 (.BLUT(n3585), .ALUT(n3586), .C0(m[1]), .Z(n3591));
    PFUMX i2927 (.BLUT(n3778), .ALUT(n3779), .C0(window_count[1]), .Z(n3785));
    LUT4 i2789_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(\m[0] ), .Z(n3647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2789_3_lut.init = 16'hcaca;
    PFUMX i2928 (.BLUT(n3780), .ALUT(n3781), .C0(window_count[1]), .Z(n3786));
    PFUMX i3303 (.BLUT(n4155), .ALUT(n4156), .C0(window_count[1]), .Z(n4161));
    PFUMX i3304 (.BLUT(n4157), .ALUT(n4158), .C0(window_count[1]), .Z(n4162));
    PFUMX i2776 (.BLUT(n3626), .ALUT(n3627), .C0(n5598), .Z(n3634));
    PFUMX i2777 (.BLUT(n3628), .ALUT(n3629), .C0(m[1]), .Z(n3635));
    PFUMX i2929 (.BLUT(n3782), .ALUT(n3783), .C0(window_count[1]), .Z(n3787));
    PFUMX i2734 (.BLUT(n3587), .ALUT(n3588), .C0(m[1]), .Z(n3592));
    PFUMX i2778 (.BLUT(n3630), .ALUT(n3631), .C0(m[1]), .Z(n3636));
    PFUMX i3136 (.BLUT(n3986), .ALUT(n3987), .C0(n[1]), .Z(n3994));
    PFUMX i3137 (.BLUT(n3988), .ALUT(n3989), .C0(n[1]), .Z(n3995));
    PFUMX i3138 (.BLUT(n3990), .ALUT(n3991), .C0(n[1]), .Z(n3996));
    PFUMX i2941 (.BLUT(n3791), .ALUT(n3792), .C0(n5598), .Z(n3799));
    PFUMX i3139 (.BLUT(n3992), .ALUT(n3993), .C0(n[1]), .Z(n3997));
    PFUMX i2942 (.BLUT(n3793), .ALUT(n3794), .C0(m[1]), .Z(n3800));
    PFUMX i2943 (.BLUT(n3795), .ALUT(n3796), .C0(m[1]), .Z(n3801));
    PFUMX i2944 (.BLUT(n3797), .ALUT(n3798), .C0(m[1]), .Z(n3802));
    LUT4 i2790_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(\m[0] ), .Z(n3648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2790_3_lut.init = 16'hcaca;
    PFUMX i2956 (.BLUT(n3806), .ALUT(n3807), .C0(window_count[1]), .Z(n3814));
    PFUMX i2957 (.BLUT(n3808), .ALUT(n3809), .C0(window_count[1]), .Z(n3815));
    PFUMX i2958 (.BLUT(n3810), .ALUT(n3811), .C0(window_count[1]), .Z(n3816));
    PFUMX i2959 (.BLUT(n3812), .ALUT(n3813), .C0(window_count[1]), .Z(n3817));
    PFUMX i3316 (.BLUT(n4166), .ALUT(n4167), .C0(window_count[1]), .Z(n4174));
    PFUMX i3317 (.BLUT(n4168), .ALUT(n4169), .C0(window_count[1]), .Z(n4175));
    PFUMX i2971 (.BLUT(n3821), .ALUT(n3822), .C0(n[1]), .Z(n3829));
    PFUMX i2972 (.BLUT(n3823), .ALUT(n3824), .C0(n[1]), .Z(n3830));
    PFUMX i2973 (.BLUT(n3825), .ALUT(n3826), .C0(n[1]), .Z(n3831));
    PFUMX i3318 (.BLUT(n4170), .ALUT(n4171), .C0(window_count[1]), .Z(n4176));
    PFUMX i2974 (.BLUT(n3827), .ALUT(n3828), .C0(n[1]), .Z(n3832));
    PFUMX i3319 (.BLUT(n4172), .ALUT(n4173), .C0(window_count[1]), .Z(n4177));
    PFUMX i3151 (.BLUT(n4001), .ALUT(n4002), .C0(m[1]), .Z(n4009));
    PFUMX i3152 (.BLUT(n4003), .ALUT(n4004), .C0(m[1]), .Z(n4010));
    PFUMX i3153 (.BLUT(n4005), .ALUT(n4006), .C0(m[1]), .Z(n4011));
    PFUMX i2986 (.BLUT(n3836), .ALUT(n3837), .C0(window_count[1]), .Z(n3844));
    LUT4 i3023_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(\window_count[0] ), 
         .Z(n3881)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3023_3_lut.init = 16'hcaca;
    PFUMX i3154 (.BLUT(n4007), .ALUT(n4008), .C0(m[1]), .Z(n4012));
    PFUMX i2987 (.BLUT(n3838), .ALUT(n3839), .C0(window_count[1]), .Z(n3845));
    PFUMX i2988 (.BLUT(n3840), .ALUT(n3841), .C0(window_count[1]), .Z(n3846));
    PFUMX i2989 (.BLUT(n3842), .ALUT(n3843), .C0(window_count[1]), .Z(n3847));
    PFUMX i2779 (.BLUT(n3632), .ALUT(n3633), .C0(m[1]), .Z(n3637));
    PFUMX i3001 (.BLUT(n3851), .ALUT(n3852), .C0(m[1]), .Z(n3859));
    PFUMX i3002 (.BLUT(n3853), .ALUT(n3854), .C0(m[1]), .Z(n3860));
    PFUMX i3003 (.BLUT(n3855), .ALUT(n3856), .C0(m[1]), .Z(n3861));
    PFUMX i3004 (.BLUT(n3857), .ALUT(n3858), .C0(m[1]), .Z(n3862));
    PFUMX i3331 (.BLUT(n4181), .ALUT(n4182), .C0(n[1]), .Z(n4189));
    PFUMX i3332 (.BLUT(n4183), .ALUT(n4184), .C0(n[1]), .Z(n4190));
    PFUMX i3333 (.BLUT(n4185), .ALUT(n4186), .C0(n[1]), .Z(n4191));
    PFUMX i3016 (.BLUT(n3866), .ALUT(n3867), .C0(window_count[1]), .Z(n3874));
    PFUMX i3017 (.BLUT(n3868), .ALUT(n3869), .C0(window_count[1]), .Z(n3875));
    PFUMX i3018 (.BLUT(n3870), .ALUT(n3871), .C0(window_count[1]), .Z(n3876));
    PFUMX i3334 (.BLUT(n4187), .ALUT(n4188), .C0(n[1]), .Z(n4192));
    PFUMX i3019 (.BLUT(n3872), .ALUT(n3873), .C0(window_count[1]), .Z(n3877));
    PFUMX i2671 (.BLUT(n3521), .ALUT(n3522), .C0(n5598), .Z(n3529));
    PFUMX i2672 (.BLUT(n3523), .ALUT(n3524), .C0(m[1]), .Z(n3530));
    PFUMX i3166 (.BLUT(n4016), .ALUT(n4017), .C0(n[1]), .Z(n4024));
    PFUMX i2673 (.BLUT(n3525), .ALUT(n3526), .C0(m[1]), .Z(n3531));
    PFUMX i2674 (.BLUT(n3527), .ALUT(n3528), .C0(m[1]), .Z(n3532));
    PFUMX i2791 (.BLUT(n3641), .ALUT(n3642), .C0(n5598), .Z(n3649));
    PFUMX i3167 (.BLUT(n4018), .ALUT(n4019), .C0(n[1]), .Z(n4025));
    PFUMX i2792 (.BLUT(n3643), .ALUT(n3644), .C0(m[1]), .Z(n3650));
    PFUMX i2793 (.BLUT(n3645), .ALUT(n3646), .C0(m[1]), .Z(n3651));
    PFUMX i3168 (.BLUT(n4020), .ALUT(n4021), .C0(n[1]), .Z(n4026));
    PFUMX i2794 (.BLUT(n3647), .ALUT(n3648), .C0(m[1]), .Z(n3652));
    PFUMX i3031 (.BLUT(n3881), .ALUT(n3882), .C0(window_count[1]), .Z(n3889));
    LUT4 i3024_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(\window_count[0] ), 
         .Z(n3882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3024_3_lut.init = 16'hcaca;
    PFUMX i3169 (.BLUT(n4022), .ALUT(n4023), .C0(n[1]), .Z(n4027));
    PFUMX i3032 (.BLUT(n3883), .ALUT(n3884), .C0(window_count[1]), .Z(n3890));
    PFUMX i3033 (.BLUT(n3885), .ALUT(n3886), .C0(window_count[1]), .Z(n3891));
    PFUMX i3034 (.BLUT(n3887), .ALUT(n3888), .C0(window_count[1]), .Z(n3892));
    PFUMX i2746 (.BLUT(n3596), .ALUT(n3597), .C0(n[1]), .Z(n3604));
    PFUMX i2686 (.BLUT(n3536), .ALUT(n3537), .C0(n[1]), .Z(n3544));
    PFUMX i2687 (.BLUT(n3538), .ALUT(n3539), .C0(n[1]), .Z(n3545));
    PFUMX i2626 (.BLUT(n3476), .ALUT(n3477), .C0(n5598), .Z(n3484));
    PFUMX i2688 (.BLUT(n3540), .ALUT(n3541), .C0(n[1]), .Z(n3546));
    PFUMX i2627 (.BLUT(n3478), .ALUT(n3479), .C0(m[1]), .Z(n3485));
    PFUMX i2747 (.BLUT(n3598), .ALUT(n3599), .C0(n[1]), .Z(n3605));
    PFUMX i2689 (.BLUT(n3542), .ALUT(n3543), .C0(n[1]), .Z(n3547));
    PFUMX i2806 (.BLUT(n3656), .ALUT(n3657), .C0(n[1]), .Z(n3664));
    PFUMX i2628 (.BLUT(n3480), .ALUT(n3481), .C0(m[1]), .Z(n3486));
    PFUMX i3241 (.BLUT(n4091), .ALUT(n4092), .C0(window_count[1]), .Z(n4099));
    PFUMX i2629 (.BLUT(n3482), .ALUT(n3483), .C0(m[1]), .Z(n3487));
    PFUMX i2748 (.BLUT(n3600), .ALUT(n3601), .C0(n[1]), .Z(n3606));
    PFUMX i3046 (.BLUT(n3896), .ALUT(n3897), .C0(window_count[1]), .Z(n3904));
    PFUMX i2807 (.BLUT(n3658), .ALUT(n3659), .C0(n[1]), .Z(n3665));
    PFUMX i3047 (.BLUT(n3898), .ALUT(n3899), .C0(window_count[1]), .Z(n3905));
    PFUMX i2808 (.BLUT(n3660), .ALUT(n3661), .C0(n[1]), .Z(n3666));
    PFUMX i3242 (.BLUT(n4093), .ALUT(n4094), .C0(window_count[1]), .Z(n4100));
    PFUMX i3048 (.BLUT(n3900), .ALUT(n3901), .C0(window_count[1]), .Z(n3906));
    PFUMX i2749 (.BLUT(n3602), .ALUT(n3603), .C0(n[1]), .Z(n3607));
    PFUMX i2809 (.BLUT(n3662), .ALUT(n3663), .C0(n[1]), .Z(n3667));
    PFUMX i3049 (.BLUT(n3902), .ALUT(n3903), .C0(window_count[1]), .Z(n3907));
    PFUMX i3243 (.BLUT(n4095), .ALUT(n4096), .C0(window_count[1]), .Z(n4101));
    FD1S3IX m_142__i1_rep_22 (.D(n134[1]), .CK(fifo_read_clk_keep), .CD(n509), 
            .Q(n5598));   // c:/users/sec29/desktop/i2s_iot/submean.v(67[9:14])
    defparam m_142__i1_rep_22.GSR = "ENABLED";
    PFUMX i3244 (.BLUT(n4097), .ALUT(n4098), .C0(window_count[1]), .Z(n4102));
    LUT4 i3129_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(n[0]), 
         .Z(n3987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3129_3_lut.init = 16'hcaca;
    PFUMX i3181 (.BLUT(n4031), .ALUT(n4032), .C0(m[1]), .Z(n4039));
    PFUMX i3182 (.BLUT(n4033), .ALUT(n4034), .C0(m[1]), .Z(n4040));
    PFUMX i3183 (.BLUT(n4035), .ALUT(n4036), .C0(m[1]), .Z(n4041));
    PFUMX i2701 (.BLUT(n3551), .ALUT(n3552), .C0(n[1]), .Z(n3559));
    LUT4 i2170_2_lut (.A(n242[1]), .B(n543), .Z(n67[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam i2170_2_lut.init = 16'h2222;
    PFUMX i2702 (.BLUT(n3553), .ALUT(n3554), .C0(n[1]), .Z(n3560));
    PFUMX i3184 (.BLUT(n4037), .ALUT(n4038), .C0(m[1]), .Z(n4042));
    LUT4 i2169_2_lut (.A(n242[2]), .B(n543), .Z(n67[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/submean.v(66[3] 73[6])
    defparam i2169_2_lut.init = 16'h2222;
    PFUMX i3061 (.BLUT(n3911), .ALUT(n3912), .C0(window_count[1]), .Z(n3919));
    PFUMX i2703 (.BLUT(n3555), .ALUT(n3556), .C0(n[1]), .Z(n3561));
    PFUMX i2704 (.BLUT(n3557), .ALUT(n3558), .C0(n[1]), .Z(n3562));
    PFUMX i3062 (.BLUT(n3913), .ALUT(n3914), .C0(window_count[1]), .Z(n3920));
    LUT4 i3235_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(\window_count[0] ), .Z(n4093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3235_3_lut.init = 16'hcaca;
    PFUMX i2821 (.BLUT(n3671), .ALUT(n3672), .C0(n5598), .Z(n3679));
    PFUMX i3063 (.BLUT(n3915), .ALUT(n3916), .C0(window_count[1]), .Z(n3921));
    PFUMX i3064 (.BLUT(n3917), .ALUT(n3918), .C0(window_count[1]), .Z(n3922));
    PFUMX i2822 (.BLUT(n3673), .ALUT(n3674), .C0(m[1]), .Z(n3680));
    PFUMX i2823 (.BLUT(n3675), .ALUT(n3676), .C0(m[1]), .Z(n3681));
    PFUMX i2824 (.BLUT(n3677), .ALUT(n3678), .C0(m[1]), .Z(n3682));
    PFUMX i2641 (.BLUT(n3491), .ALUT(n3492), .C0(n[1]), .Z(n3499));
    LUT4 n4575_bdd_4_lut (.A(n4575), .B(n4070), .C(n4069), .D(m[3]), 
         .Z(n4578)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4575_bdd_4_lut.init = 16'haad8;
    PFUMX i2761 (.BLUT(n3611), .ALUT(n3612), .C0(n[1]), .Z(n3619));
    LUT4 n4509_bdd_4_lut (.A(n4509), .B(n3815), .C(n3814), .D(window_count_c[3]), 
         .Z(n4512)) /* synthesis lut_function=(A (B+(D))+!A !((D)+!C)) */ ;
    defparam n4509_bdd_4_lut.init = 16'haad8;
    LUT4 m_2__bdd_4_lut_4136 (.A(m[2]), .B(n4071), .C(n4072), .D(m[3]), 
         .Z(n4575)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam m_2__bdd_4_lut_4136.init = 16'he4aa;
    LUT4 window_count_2__bdd_4_lut_4051 (.A(window_count_c[2]), .B(n3816), 
         .C(n3817), .D(window_count_c[3]), .Z(n4509)) /* synthesis lut_function=(A (C+!(D))+!A (B (D))) */ ;
    defparam window_count_2__bdd_4_lut_4051.init = 16'he4aa;
    PFUMX i3076 (.BLUT(n3926), .ALUT(n3927), .C0(window_count[1]), .Z(n3934));
    LUT4 i3295_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(\window_count[0] ), 
         .Z(n4153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3295_3_lut.init = 16'hcaca;
    LUT4 i3043_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(\window_count[0] ), .Z(n3901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3043_3_lut.init = 16'hcaca;
    PFUMX i2762 (.BLUT(n3613), .ALUT(n3614), .C0(n[1]), .Z(n3620));
    PFUMX i3196 (.BLUT(n4046), .ALUT(n4047), .C0(n[1]), .Z(n4054));
    PFUMX i3077 (.BLUT(n3928), .ALUT(n3929), .C0(window_count[1]), .Z(n3935));
    PFUMX i2763 (.BLUT(n3615), .ALUT(n3616), .C0(n[1]), .Z(n3621));
    PFUMX i3078 (.BLUT(n3930), .ALUT(n3931), .C0(window_count[1]), .Z(n3936));
    LUT4 i3296_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(\window_count[0] ), 
         .Z(n4154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3296_3_lut.init = 16'hcaca;
    LUT4 i3236_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(\window_count[0] ), .Z(n4094)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3236_3_lut.init = 16'hcaca;
    LUT4 i3164_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(n[0]), .Z(n4022)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3164_3_lut.init = 16'hcaca;
    PFUMX i2851 (.BLUT(n3701), .ALUT(n3702), .C0(m[1]), .Z(n3709));
    PFUMX i3197 (.BLUT(n4048), .ALUT(n4049), .C0(n[1]), .Z(n4055));
    PFUMX i3079 (.BLUT(n3932), .ALUT(n3933), .C0(window_count[1]), .Z(n3937));
    LUT4 i3165_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(n[0]), .Z(n4023)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3165_3_lut.init = 16'hcaca;
    LUT4 i2648_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(n[0]), .Z(n3506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2648_3_lut.init = 16'hcaca;
    LUT4 i3042_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(\window_count[0] ), 
         .Z(n3900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3042_3_lut.init = 16'hcaca;
    LUT4 i2649_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(n[0]), .Z(n3507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2649_3_lut.init = 16'hcaca;
    PFUMX i3122 (.BLUT(n3973), .ALUT(n3974), .C0(n[1]), .Z(n3980));
    LUT4 i2650_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(n[0]), .Z(n3508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2650_3_lut.init = 16'hcaca;
    LUT4 i2651_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(n[0]), .Z(n3509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2651_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module zcr
//

module zcr (zcr_valid_right_c, fifo_read_clk_keep, n4949, GND_net) /* synthesis syn_module_defined=1 */ ;
    output zcr_valid_right_c;
    input fifo_read_clk_keep;
    input n4949;
    input GND_net;
    
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[11:23])
    wire [3:0]n38;
    wire [3:0]n1;
    
    wire n22;
    
    LUT4 i2373_2_lut_3_lut (.A(window_count[1]), .B(n38[0]), .C(window_count[2]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2373_2_lut_3_lut.init = 16'h7878;
    LUT4 i2380_3_lut_4_lut (.A(window_count[1]), .B(n38[0]), .C(window_count[2]), 
         .D(window_count[3]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2380_3_lut_4_lut.init = 16'h7f80;
    OFS1P3DX zcr_valid_58 (.D(n22), .SP(n4949), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(zcr_valid_right_c));   // c:/users/sec29/desktop/i2s_iot/zcr.v(30[3] 41[6])
    defparam zcr_valid_58.GSR = "DISABLED";
    FD1S3IX window_count_136_137__i0 (.D(n1[0]), .CK(fifo_read_clk_keep), 
            .CD(n22), .Q(n38[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(33[18:32])
    defparam window_count_136_137__i0.GSR = "ENABLED";
    LUT4 i2186_3_lut (.A(window_count[1]), .B(window_count[3]), .C(window_count[2]), 
         .Z(n22)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2186_3_lut.init = 16'hc8c8;
    LUT4 i2364_1_lut (.A(n38[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i2364_1_lut.init = 16'h5555;
    FD1S3IX window_count_136_137__i1 (.D(n1[1]), .CK(fifo_read_clk_keep), 
            .CD(n22), .Q(window_count[1]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(33[18:32])
    defparam window_count_136_137__i1.GSR = "ENABLED";
    FD1S3IX window_count_136_137__i2 (.D(n1[2]), .CK(fifo_read_clk_keep), 
            .CD(n22), .Q(window_count[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(33[18:32])
    defparam window_count_136_137__i2.GSR = "ENABLED";
    FD1S3IX window_count_136_137__i3 (.D(n1[3]), .CK(fifo_read_clk_keep), 
            .CD(n22), .Q(window_count[3]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(33[18:32])
    defparam window_count_136_137__i3.GSR = "ENABLED";
    LUT4 i2366_2_lut (.A(window_count[1]), .B(n38[0]), .Z(n1[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2366_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module fifo_right
//

module fifo_right (n188, n189, n190, n191, n192, n193, n194, n195, 
            n196, n197, n198, n199, n200, n201, n202, n203, 
            o_sck_c, fifo_read_clk_keep, o_right_vld_c, VCC_net, n4946, 
            GND_net, \right_out[14] , \right_out[13] , \right_out[12] , 
            \right_out[11] , \right_out[10] , \right_out[9] , \right_out[8] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input n188;
    input n189;
    input n190;
    input n191;
    input n192;
    input n193;
    input n194;
    input n195;
    input n196;
    input n197;
    input n198;
    input n199;
    input n200;
    input n201;
    input n202;
    input n203;
    input o_sck_c;
    input fifo_read_clk_keep;
    input o_right_vld_c;
    input VCC_net;
    input n4946;
    input GND_net;
    output \right_out[14] ;
    output \right_out[13] ;
    output \right_out[12] ;
    output \right_out[11] ;
    output \right_out[10] ;
    output \right_out[9] ;
    output \right_out[8] ;
    
    
    wire Empty, Full;
    
    FIFO8KB fifo_right_0_0 (.DI0(n203), .DI1(n202), .DI2(n201), .DI3(n200), 
            .DI4(n199), .DI5(n198), .DI6(n197), .DI7(n196), .DI8(n195), 
            .DI9(n194), .DI10(n193), .DI11(n192), .DI12(n191), .DI13(n190), 
            .DI14(n189), .DI15(n188), .DI16(GND_net), .DI17(GND_net), 
            .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), .CSW0(VCC_net), 
            .CSR1(VCC_net), .CSR0(VCC_net), .WE(o_right_vld_c), .RE(VCC_net), 
            .ORE(VCC_net), .CLKW(o_sck_c), .CLKR(fifo_read_clk_keep), 
            .RST(n4946), .RPRST(GND_net), .DO0(\right_out[9] ), .DO1(\right_out[10] ), 
            .DO2(\right_out[11] ), .DO3(\right_out[12] ), .DO4(\right_out[13] ), 
            .DO5(\right_out[14] ), .DO17(\right_out[8] ), .EF(Empty), 
            .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=119 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(117[13] 119[20])
    defparam fifo_right_0_0.DATA_WIDTH_W = 18;
    defparam fifo_right_0_0.DATA_WIDTH_R = 18;
    defparam fifo_right_0_0.REGMODE = "NOREG";
    defparam fifo_right_0_0.RESETMODE = "ASYNC";
    defparam fifo_right_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam fifo_right_0_0.CSDECODE_W = "0b11";
    defparam fifo_right_0_0.CSDECODE_R = "0b11";
    defparam fifo_right_0_0.AEPOINTER = "0b00000010100000";
    defparam fifo_right_0_0.AEPOINTER1 = "0b00000010110000";
    defparam fifo_right_0_0.AFPOINTER = "0b01111111000000";
    defparam fifo_right_0_0.AFPOINTER1 = "0b01111110110000";
    defparam fifo_right_0_0.FULLPOINTER = "0b10000000000000";
    defparam fifo_right_0_0.FULLPOINTER1 = "0b01111111110000";
    defparam fifo_right_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module pll1
//

module pll1 (osc_clk_keep, rst_keep, o_sck_adj, fifo_read_clk, n256, 
            lock, GND_net) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk_keep;
    input rst_keep;
    output o_sck_adj;
    output fifo_read_clk;
    output n256;
    output lock;
    input GND_net;
    
    wire o_sck_adj /* synthesis SET_AS_NETWORK=o_sck_c */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(35[32:37])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk_keep), .CLKFB(o_sck_adj), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_keep), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(o_sck_adj), .CLKOS(fifo_read_clk), 
            .CLKOS2(n256), .LOCK(lock)) /* synthesis FREQUENCY_PIN_CLKOS2="100.000000", FREQUENCY_PIN_CLKOS="0.500000", FREQUENCY_PIN_CLKOP="32.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=88, LSE_RLINE=95 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(88[10] 95[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 25;
    defparam PLLInst_0.CLKOS_DIV = 64;
    defparam PLLInst_0.CLKOS2_DIV = 8;
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
    defparam PLLInst_0.CLKOS_CPHASE = 63;
    defparam PLLInst_0.CLKOS2_CPHASE = 7;
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
// Verilog Description of module ste
//

module ste (ste_right_valid_c, fifo_read_clk_keep, n4949, GND_net, \window_count[4] , 
            \window_count[1] , \window_count[0] , n10, n9, n7, n8, 
            \m[0] , n5598, n9_adj_1, n7_adj_2, n10_adj_3, n8_adj_4, 
            ste_right_c, VCC_net, \right_out[14] , \right_out[13] , 
            \right_out[12] , \right_out[11] , \right_out[10] , \right_out[9] , 
            \right_out[8] ) /* synthesis syn_module_defined=1 */ ;
    output ste_right_valid_c;
    input fifo_read_clk_keep;
    input n4949;
    input GND_net;
    input \window_count[4] ;
    input \window_count[1] ;
    input \window_count[0] ;
    output n10;
    output n9;
    output n7;
    output n8;
    input \m[0] ;
    input n5598;
    output n9_adj_1;
    output n7_adj_2;
    output n10_adj_3;
    output n8_adj_4;
    output ste_right_c;
    input VCC_net;
    input \right_out[14] ;
    input \right_out[13] ;
    input \right_out[12] ;
    input \right_out[11] ;
    input \right_out[10] ;
    input \right_out[9] ;
    input \right_out[8] ;
    
    
    wire n4948;
    wire [30:0]sum;   // c:/users/sec29/desktop/i2s_iot/ste.v(20[12:15])
    
    wire n4955, n748;
    wire [30:0]n79;
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[11:23])
    
    wire n4954, n474, n831;
    wire [14:0]square;   // c:/users/sec29/desktop/i2s_iot/ste.v(16[13:19])
    wire [3:0]n22;
    
    wire n4947, n3252, n3251, n3250, n3249, n3248, n3247, n3246, 
        n3245, n3244, n3243, n3242, n3241, n3240, n3239, n3238, 
        n3236, n3235, n3234, n3233, n3232, n3231, n3230, n3229, 
        n3228, n3227, n3226, n3225, n3224, n3223, n3222;
    
    OFS1P3DX ste_valid_47 (.D(n4948), .SP(n4949), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(ste_right_valid_c));   // c:/users/sec29/desktop/i2s_iot/ste.v(27[3] 42[6])
    defparam ste_valid_47.GSR = "DISABLED";
    FD1P3IX sum__i0 (.D(n79[0]), .SP(n4955), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i0.GSR = "ENABLED";
    LUT4 window_count_3__bdd_4_lut (.A(window_count[3]), .B(window_count[0]), 
         .C(window_count[1]), .D(window_count[2]), .Z(n4955)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C+(D))+!B ((D)+!C)))) */ ;
    defparam window_count_3__bdd_4_lut.init = 16'h556b;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4949), .B(\window_count[4] ), .C(\window_count[1] ), 
         .D(\window_count[0] ), .Z(n10)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(n4949), .B(\window_count[4] ), .C(\window_count[1] ), 
         .D(\window_count[0] ), .Z(n9)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(n4949), .B(\window_count[4] ), .C(\window_count[1] ), 
         .D(\window_count[0] ), .Z(n7)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(n4949), .B(\window_count[4] ), .C(\window_count[1] ), 
         .D(\window_count[0] ), .Z(n8)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n4949), .B(\window_count[4] ), .C(\m[0] ), 
         .D(n5598), .Z(n9_adj_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(n4949), .B(\window_count[4] ), .C(\m[0] ), 
         .D(n5598), .Z(n7_adj_2)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(n4949), .B(\window_count[4] ), .C(\m[0] ), 
         .D(n5598), .Z(n10_adj_3)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n4949), .B(\window_count[4] ), .C(\m[0] ), 
         .D(n5598), .Z(n8_adj_4)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0008;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n4954), .B(window_count[3]), .C(n474), 
         .D(n4949), .Z(n831)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[11:23])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h080f;
    OFS1P3DX ste_46 (.D(n831), .SP(n4949), .SCLK(fifo_read_clk_keep), 
            .CD(GND_net), .Q(ste_right_c));   // c:/users/sec29/desktop/i2s_iot/ste.v(27[3] 42[6])
    defparam ste_46.GSR = "DISABLED";
    LUT4 i2481_2_lut (.A(sum[0]), .B(square[0]), .Z(n79[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2481_2_lut.init = 16'h6666;
    FD1S3IX window_count_139_140__i1 (.D(n22[0]), .CK(fifo_read_clk_keep), 
            .CD(n4948), .Q(window_count[0]));   // c:/users/sec29/desktop/i2s_iot/ste.v(30[17:31])
    defparam window_count_139_140__i1.GSR = "ENABLED";
    LUT4 i9_3_lut_rep_14_4_lut (.A(window_count[1]), .B(window_count[0]), 
         .C(window_count[2]), .D(window_count[3]), .Z(n4947)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i9_3_lut_rep_14_4_lut.init = 16'h07f8;
    LUT4 i2467_2_lut_3_lut (.A(window_count[1]), .B(window_count[0]), .C(window_count[2]), 
         .Z(n22[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2467_2_lut_3_lut.init = 16'h7878;
    LUT4 i2474_3_lut_4_lut (.A(window_count[1]), .B(window_count[0]), .C(window_count[2]), 
         .D(window_count[3]), .Z(n22[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2474_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_21 (.A(window_count[1]), .B(window_count[2]), .Z(n4954)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[11:23])
    defparam i1_2_lut_rep_21.init = 16'heeee;
    LUT4 i1_2_lut_rep_15_3_lut (.A(window_count[1]), .B(window_count[2]), 
         .C(window_count[3]), .Z(n4948)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[11:23])
    defparam i1_2_lut_rep_15_3_lut.init = 16'he0e0;
    LUT4 i3699_3_lut_4_lut (.A(window_count[1]), .B(window_count[2]), .C(window_count[0]), 
         .D(window_count[3]), .Z(n748)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[11:23])
    defparam i3699_3_lut_4_lut.init = 16'h0001;
    FD1P3IX sum__i30 (.D(n79[30]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i30.GSR = "ENABLED";
    FD1P3IX sum__i29 (.D(n79[29]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i29.GSR = "ENABLED";
    FD1P3IX sum__i28 (.D(n79[28]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i28.GSR = "ENABLED";
    FD1P3IX sum__i27 (.D(n79[27]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i27.GSR = "ENABLED";
    FD1P3IX sum__i26 (.D(n79[26]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i26.GSR = "ENABLED";
    FD1P3IX sum__i25 (.D(n79[25]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i25.GSR = "ENABLED";
    FD1P3IX sum__i24 (.D(n79[24]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i24.GSR = "ENABLED";
    FD1P3IX sum__i23 (.D(n79[23]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i23.GSR = "ENABLED";
    FD1P3IX sum__i22 (.D(n79[22]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i22.GSR = "ENABLED";
    FD1P3IX sum__i21 (.D(n79[21]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i21.GSR = "ENABLED";
    FD1P3IX sum__i20 (.D(n79[20]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i20.GSR = "ENABLED";
    FD1P3IX sum__i19 (.D(n79[19]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i19.GSR = "ENABLED";
    FD1P3IX sum__i18 (.D(n79[18]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i18.GSR = "ENABLED";
    FD1P3IX sum__i17 (.D(n79[17]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i17.GSR = "ENABLED";
    FD1P3IX sum__i16 (.D(n79[16]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i16.GSR = "ENABLED";
    FD1P3IX sum__i15 (.D(n79[15]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i15.GSR = "ENABLED";
    FD1P3IX sum__i14 (.D(n79[14]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i14.GSR = "ENABLED";
    FD1P3IX sum__i13 (.D(n79[13]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i13.GSR = "ENABLED";
    FD1P3IX sum__i12 (.D(n79[12]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i12.GSR = "ENABLED";
    FD1P3IX sum__i11 (.D(n79[11]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i11.GSR = "ENABLED";
    FD1P3IX sum__i10 (.D(n79[10]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i10.GSR = "ENABLED";
    FD1P3IX sum__i9 (.D(n79[9]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i9.GSR = "ENABLED";
    FD1P3IX sum__i8 (.D(n79[8]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i8.GSR = "ENABLED";
    FD1P3IX sum__i7 (.D(n79[7]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i7.GSR = "ENABLED";
    FD1P3IX sum__i6 (.D(n79[6]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i6.GSR = "ENABLED";
    FD1P3IX sum__i5 (.D(n79[5]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i5.GSR = "ENABLED";
    FD1P3IX sum__i4 (.D(n79[4]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i4.GSR = "ENABLED";
    FD1P3IX sum__i3 (.D(n79[3]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i3.GSR = "ENABLED";
    FD1P3IX sum__i2 (.D(n79[2]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i2.GSR = "ENABLED";
    FD1P3IX sum__i1 (.D(n79[1]), .SP(n4947), .CD(n748), .CK(fifo_read_clk_keep), 
            .Q(sum[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=140, LSE_RLINE=146 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(62[8] 65[10])
    defparam sum__i1.GSR = "ENABLED";
    CCU2D add_40_32 (.A0(sum[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3252), 
          .S0(n79[30]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_32.INIT0 = 16'h5aaa;
    defparam add_40_32.INIT1 = 16'h0000;
    defparam add_40_32.INJECT1_0 = "NO";
    defparam add_40_32.INJECT1_1 = "NO";
    CCU2D add_40_30 (.A0(sum[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3251), 
          .COUT(n3252), .S0(n79[28]), .S1(n79[29]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_30.INIT0 = 16'h5aaa;
    defparam add_40_30.INIT1 = 16'h5aaa;
    defparam add_40_30.INJECT1_0 = "NO";
    defparam add_40_30.INJECT1_1 = "NO";
    CCU2D add_40_28 (.A0(sum[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3250), 
          .COUT(n3251), .S0(n79[26]), .S1(n79[27]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_28.INIT0 = 16'h5aaa;
    defparam add_40_28.INIT1 = 16'h5aaa;
    defparam add_40_28.INJECT1_0 = "NO";
    defparam add_40_28.INJECT1_1 = "NO";
    CCU2D add_40_26 (.A0(sum[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3249), 
          .COUT(n3250), .S0(n79[24]), .S1(n79[25]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_26.INIT0 = 16'h5aaa;
    defparam add_40_26.INIT1 = 16'h5aaa;
    defparam add_40_26.INJECT1_0 = "NO";
    defparam add_40_26.INJECT1_1 = "NO";
    CCU2D add_40_24 (.A0(sum[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3248), 
          .COUT(n3249), .S0(n79[22]), .S1(n79[23]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_24.INIT0 = 16'h5aaa;
    defparam add_40_24.INIT1 = 16'h5aaa;
    defparam add_40_24.INJECT1_0 = "NO";
    defparam add_40_24.INJECT1_1 = "NO";
    CCU2D add_40_22 (.A0(sum[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3247), 
          .COUT(n3248), .S0(n79[20]), .S1(n79[21]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_22.INIT0 = 16'h5aaa;
    defparam add_40_22.INIT1 = 16'h5aaa;
    defparam add_40_22.INJECT1_0 = "NO";
    defparam add_40_22.INJECT1_1 = "NO";
    CCU2D add_40_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3246), 
          .COUT(n3247), .S0(n79[18]), .S1(n79[19]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_20.INIT0 = 16'h5aaa;
    defparam add_40_20.INIT1 = 16'h5aaa;
    defparam add_40_20.INJECT1_0 = "NO";
    defparam add_40_20.INJECT1_1 = "NO";
    CCU2D add_40_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3245), 
          .COUT(n3246), .S0(n79[16]), .S1(n79[17]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_18.INIT0 = 16'h5aaa;
    defparam add_40_18.INIT1 = 16'h5aaa;
    defparam add_40_18.INJECT1_0 = "NO";
    defparam add_40_18.INJECT1_1 = "NO";
    CCU2D add_40_16 (.A0(sum[14]), .B0(square[14]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3244), 
          .COUT(n3245), .S0(n79[14]), .S1(n79[15]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_16.INIT0 = 16'h5666;
    defparam add_40_16.INIT1 = 16'h5aaa;
    defparam add_40_16.INJECT1_0 = "NO";
    defparam add_40_16.INJECT1_1 = "NO";
    CCU2D add_40_14 (.A0(sum[12]), .B0(square[12]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[13]), .B1(square[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3243), .COUT(n3244), .S0(n79[12]), .S1(n79[13]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_14.INIT0 = 16'h5666;
    defparam add_40_14.INIT1 = 16'h5666;
    defparam add_40_14.INJECT1_0 = "NO";
    defparam add_40_14.INJECT1_1 = "NO";
    CCU2D add_40_12 (.A0(sum[10]), .B0(square[10]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[11]), .B1(square[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3242), .COUT(n3243), .S0(n79[10]), .S1(n79[11]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_12.INIT0 = 16'h5666;
    defparam add_40_12.INIT1 = 16'h5666;
    defparam add_40_12.INJECT1_0 = "NO";
    defparam add_40_12.INJECT1_1 = "NO";
    CCU2D add_40_10 (.A0(sum[8]), .B0(square[8]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[9]), .B1(square[9]), .C1(GND_net), .D1(GND_net), .CIN(n3241), 
          .COUT(n3242), .S0(n79[8]), .S1(n79[9]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_10.INIT0 = 16'h5666;
    defparam add_40_10.INIT1 = 16'h5666;
    defparam add_40_10.INJECT1_0 = "NO";
    defparam add_40_10.INJECT1_1 = "NO";
    CCU2D add_40_8 (.A0(sum[6]), .B0(square[6]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[7]), .B1(square[7]), .C1(GND_net), .D1(GND_net), .CIN(n3240), 
          .COUT(n3241), .S0(n79[6]), .S1(n79[7]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_8.INIT0 = 16'h5666;
    defparam add_40_8.INIT1 = 16'h5666;
    defparam add_40_8.INJECT1_0 = "NO";
    defparam add_40_8.INJECT1_1 = "NO";
    CCU2D add_40_6 (.A0(sum[4]), .B0(square[4]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[5]), .B1(square[5]), .C1(GND_net), .D1(GND_net), .CIN(n3239), 
          .COUT(n3240), .S0(n79[4]), .S1(n79[5]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_6.INIT0 = 16'h5666;
    defparam add_40_6.INIT1 = 16'h5666;
    defparam add_40_6.INJECT1_0 = "NO";
    defparam add_40_6.INJECT1_1 = "NO";
    CCU2D add_40_4 (.A0(sum[2]), .B0(square[2]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[3]), .B1(square[3]), .C1(GND_net), .D1(GND_net), .CIN(n3238), 
          .COUT(n3239), .S0(n79[2]), .S1(n79[3]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_4.INIT0 = 16'h5666;
    defparam add_40_4.INIT1 = 16'h5666;
    defparam add_40_4.INJECT1_0 = "NO";
    defparam add_40_4.INJECT1_1 = "NO";
    CCU2D add_40_2 (.A0(sum[0]), .B0(square[0]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[1]), .B1(square[1]), .C1(GND_net), .D1(GND_net), .COUT(n3238), 
          .S1(n79[1]));   // c:/users/sec29/desktop/i2s_iot/ste.v(64[10:20])
    defparam add_40_2.INIT0 = 16'h7000;
    defparam add_40_2.INIT1 = 16'h5666;
    defparam add_40_2.INJECT1_0 = "NO";
    defparam add_40_2.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_32 (.A0(sum[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3236), 
          .S1(n474));
    defparam sub_88_add_2_32.INIT0 = 16'h5555;
    defparam sub_88_add_2_32.INIT1 = 16'h0000;
    defparam sub_88_add_2_32.INJECT1_0 = "NO";
    defparam sub_88_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_30 (.A0(sum[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3235), 
          .COUT(n3236));
    defparam sub_88_add_2_30.INIT0 = 16'h5555;
    defparam sub_88_add_2_30.INIT1 = 16'h5555;
    defparam sub_88_add_2_30.INJECT1_0 = "NO";
    defparam sub_88_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_28 (.A0(sum[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3234), 
          .COUT(n3235));
    defparam sub_88_add_2_28.INIT0 = 16'h5555;
    defparam sub_88_add_2_28.INIT1 = 16'h5555;
    defparam sub_88_add_2_28.INJECT1_0 = "NO";
    defparam sub_88_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_26 (.A0(sum[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3233), 
          .COUT(n3234));
    defparam sub_88_add_2_26.INIT0 = 16'h5555;
    defparam sub_88_add_2_26.INIT1 = 16'h5555;
    defparam sub_88_add_2_26.INJECT1_0 = "NO";
    defparam sub_88_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_24 (.A0(sum[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3232), 
          .COUT(n3233));
    defparam sub_88_add_2_24.INIT0 = 16'h5555;
    defparam sub_88_add_2_24.INIT1 = 16'h5555;
    defparam sub_88_add_2_24.INJECT1_0 = "NO";
    defparam sub_88_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_22 (.A0(sum[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3231), 
          .COUT(n3232));
    defparam sub_88_add_2_22.INIT0 = 16'h5555;
    defparam sub_88_add_2_22.INIT1 = 16'h5555;
    defparam sub_88_add_2_22.INJECT1_0 = "NO";
    defparam sub_88_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3230), 
          .COUT(n3231));
    defparam sub_88_add_2_20.INIT0 = 16'h5555;
    defparam sub_88_add_2_20.INIT1 = 16'h5555;
    defparam sub_88_add_2_20.INJECT1_0 = "NO";
    defparam sub_88_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3229), 
          .COUT(n3230));
    defparam sub_88_add_2_18.INIT0 = 16'h5555;
    defparam sub_88_add_2_18.INIT1 = 16'h5555;
    defparam sub_88_add_2_18.INJECT1_0 = "NO";
    defparam sub_88_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_16 (.A0(sum[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3228), 
          .COUT(n3229));
    defparam sub_88_add_2_16.INIT0 = 16'h5555;
    defparam sub_88_add_2_16.INIT1 = 16'h5555;
    defparam sub_88_add_2_16.INJECT1_0 = "NO";
    defparam sub_88_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_14 (.A0(sum[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3227), 
          .COUT(n3228));
    defparam sub_88_add_2_14.INIT0 = 16'h5555;
    defparam sub_88_add_2_14.INIT1 = 16'h5555;
    defparam sub_88_add_2_14.INJECT1_0 = "NO";
    defparam sub_88_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_12 (.A0(sum[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3226), 
          .COUT(n3227));
    defparam sub_88_add_2_12.INIT0 = 16'h5555;
    defparam sub_88_add_2_12.INIT1 = 16'h5555;
    defparam sub_88_add_2_12.INJECT1_0 = "NO";
    defparam sub_88_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_10 (.A0(sum[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3225), 
          .COUT(n3226));
    defparam sub_88_add_2_10.INIT0 = 16'h5555;
    defparam sub_88_add_2_10.INIT1 = 16'h5555;
    defparam sub_88_add_2_10.INJECT1_0 = "NO";
    defparam sub_88_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_8 (.A0(sum[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3224), 
          .COUT(n3225));
    defparam sub_88_add_2_8.INIT0 = 16'h5555;
    defparam sub_88_add_2_8.INIT1 = 16'h5555;
    defparam sub_88_add_2_8.INJECT1_0 = "NO";
    defparam sub_88_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_6 (.A0(sum[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3223), 
          .COUT(n3224));
    defparam sub_88_add_2_6.INIT0 = 16'h5555;
    defparam sub_88_add_2_6.INIT1 = 16'h5555;
    defparam sub_88_add_2_6.INJECT1_0 = "NO";
    defparam sub_88_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_4 (.A0(sum[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3222), 
          .COUT(n3223));
    defparam sub_88_add_2_4.INIT0 = 16'h5555;
    defparam sub_88_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_88_add_2_4.INJECT1_0 = "NO";
    defparam sub_88_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_88_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3222));
    defparam sub_88_add_2_2.INIT0 = 16'h0000;
    defparam sub_88_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_88_add_2_2.INJECT1_0 = "NO";
    defparam sub_88_add_2_2.INJECT1_1 = "NO";
    LUT4 i2458_1_lut (.A(window_count[0]), .Z(n22[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i2458_1_lut.init = 16'h5555;
    FD1S3IX window_count_139_140__i2 (.D(n22[1]), .CK(fifo_read_clk_keep), 
            .CD(n4948), .Q(window_count[1]));   // c:/users/sec29/desktop/i2s_iot/ste.v(30[17:31])
    defparam window_count_139_140__i2.GSR = "ENABLED";
    FD1S3IX window_count_139_140__i3 (.D(n22[2]), .CK(fifo_read_clk_keep), 
            .CD(n4948), .Q(window_count[2]));   // c:/users/sec29/desktop/i2s_iot/ste.v(30[17:31])
    defparam window_count_139_140__i3.GSR = "ENABLED";
    FD1S3IX window_count_139_140__i4 (.D(n22[3]), .CK(fifo_read_clk_keep), 
            .CD(n4948), .Q(window_count[3]));   // c:/users/sec29/desktop/i2s_iot/ste.v(30[17:31])
    defparam window_count_139_140__i4.GSR = "ENABLED";
    LUT4 i2460_2_lut (.A(window_count[1]), .B(window_count[0]), .Z(n22[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2460_2_lut.init = 16'h6666;
    squares sq1 (.square({square}), .fifo_read_clk_keep(fifo_read_clk_keep), 
            .VCC_net(VCC_net), .\right_out[14] (\right_out[14] ), .\right_out[13] (\right_out[13] ), 
            .\right_out[12] (\right_out[12] ), .\right_out[11] (\right_out[11] ), 
            .\right_out[10] (\right_out[10] ), .\right_out[9] (\right_out[9] ), 
            .\right_out[8] (\right_out[8] )) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    
endmodule
//
// Verilog Description of module squares
//

module squares (square, fifo_read_clk_keep, VCC_net, \right_out[14] , 
            \right_out[13] , \right_out[12] , \right_out[11] , \right_out[10] , 
            \right_out[9] , \right_out[8] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output [14:0]square;
    input fifo_read_clk_keep;
    input VCC_net;
    input \right_out[14] ;
    input \right_out[13] ;
    input \right_out[12] ;
    input \right_out[11] ;
    input \right_out[10] ;
    input \right_out[9] ;
    input \right_out[8] ;
    
    
    wire qdataout12_ffin, qdataout11_ffin, qdataout10_ffin, qdataout9_ffin, 
        qdataout8_ffin, qdataout7_ffin, qdataout6_ffin, qdataout5_ffin, 
        qdataout4_ffin, qdataout3_ffin, qdataout2_ffin, qdataout1_ffin, 
        qdataout0_ffin, qdataout14_ffin, qdataout13_ffin;
    
    FD1P3AX FF_12 (.D(qdataout12_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(39[13] 40[31])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(qdataout11_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(43[13] 44[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(qdataout10_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(47[13] 48[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(qdataout9_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(51[13] 52[18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(qdataout8_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(55[13] 56[18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(qdataout7_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(59[13] 60[18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(qdataout6_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(63[13] 64[18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(qdataout5_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(67[13] 68[18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(qdataout4_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(71[13] 72[18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(qdataout3_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(75[13] 76[18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(qdataout2_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(79[13] 80[18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(qdataout1_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(83[13] 84[18])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(qdataout0_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(87[13] 88[18])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(qdataout14_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(31[13] 32[31])
    defparam FF_14.GSR = "ENABLED";
    ROM128X1A mem_0_14 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout14_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_14.initval = 128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_13 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout13_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_13.initval = 128'b01111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_12 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout12_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_12.initval = 128'b01111111111111111100000000000000000000111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_11 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout11_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_11.initval = 128'b01111111100000000011111111100000000000111111111111000000000000000111111111111111111000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_10 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout10_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_10.initval = 128'b01111000011110000011110000011111100000111111000000111111100000000111111110000000000111111111111110000000000000000000000000000000;
    ROM128X1A mem_0_9 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout9_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_9.initval = 128'b01100110011001100011001110011100011000111000111000111000011110000111100001111100000111111000000001111111110000000000000000000000;
    ROM128X1A mem_0_8 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout8_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_8.initval = 128'b01010101010101011010101101011010010110100100100110110110011001100110011001100011100111000111100001111000001111111000000000000000;
    ROM128X1A mem_0_7 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_7.initval = 128'b00000000000011110000111000110011001100110110110100101101010101010101010101011010010110110110011001100110001110000111100000000000;
    ROM128X1A mem_0_6 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_6.initval = 128'b00000000111100110011001011010101010101011010011001100111100000000000000011110011001100101101010101010101101001100110011110000000;
    ROM128X1A mem_0_5 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_5.initval = 128'b00000011001101010101011001100000000000110011010101010110011000000000001100110101010101100110000000000011001101010101011001100000;
    ROM128X1A mem_0_4 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_4.initval = 128'b00001101010110000000110101011000000011010101100000001101010110000000110101011000000011010101100000001101010110000000110101011000;
    ROM128X1A mem_0_3 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_3.initval = 128'b00010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100;
    ROM128X1A mem_0_2 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_2.initval = 128'b00100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010;
    ROM128X1A mem_0_1 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_1.initval = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_0 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(56[9:94])
    defparam mem_0_0.initval = 128'b01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101;
    FD1P3AX FF_13 (.D(qdataout13_ffin), .SP(VCC_net), .CK(fifo_read_clk_keep), 
            .Q(square[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(35[13] 36[31])
    defparam FF_13.GSR = "ENABLED";
    
endmodule
