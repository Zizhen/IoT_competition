// Verilog netlist produced by program LSE :  version Diamond Version 3.9.0.99.2
// Netlist written on Mon Mar 13 14:10:28 2017
//
// Verilog Description of module top
//

module top (rst_n, mclk, i_sd, o_sck, o_ws, fifo_in1) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(1[8:11])
    input rst_n;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(12[29:34])
    output mclk;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    input i_sd;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(15[32:36])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(14[32:36])
    output [15:0]fifo_in1;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(48[30:37])
    wire o_sck_N_28 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(28[15:20])
    
    wire GND_net, rst_n_c, o_ws_c, i_sd_c, fifo_in1_c_15, fifo_in1_c_14, 
        fifo_in1_c_13, fifo_in1_c_12, fifo_in1_c_11, fifo_in1_c_10, 
        fifo_in1_c_9, fifo_in1_c_8, fifo_in1_c_7, fifo_in1_c_6, fifo_in1_c_5, 
        fifo_in1_c_4, fifo_in1_c_3, fifo_in1_c_2, fifo_in1_c_1, fifo_in1_c_0;
    wire [31:0]o_right_data;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(29[15:27])
    
    wire rst_n_N_19, n631, lock, n630;
    wire [17:0]fifo_in1_15__N_1;
    
    wire n625, n624, ws_reg_i, mclk_c_enable_63, VCC_net, n628, 
        n629, n556, n627, mclk_c_enable_78, n626;
    
    CCU2D add_46_5 (.A0(o_right_data[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n625), .COUT(n626), .S0(fifo_in1_15__N_1[3]), 
          .S1(fifo_in1_15__N_1[4]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_5.INIT0 = 16'h5555;
    defparam add_46_5.INIT1 = 16'h5555;
    defparam add_46_5.INJECT1_0 = "NO";
    defparam add_46_5.INJECT1_1 = "NO";
    clk_div div8 (.mclk_c(mclk_c), .o_sck_c(o_sck_c), .ws_reg_i(ws_reg_i), 
            .mclk_c_enable_63(mclk_c_enable_63), .mclk_c_enable_78(mclk_c_enable_78), 
            .o_sck_N_28(o_sck_N_28)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(60[10:62])
    CCU2D add_46_15 (.A0(o_right_data[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n630), .COUT(n631), .S0(fifo_in1_15__N_1[13]), 
          .S1(fifo_in1_15__N_1[14]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_15.INIT0 = 16'h5555;
    defparam add_46_15.INIT1 = 16'h5555;
    defparam add_46_15.INJECT1_0 = "NO";
    defparam add_46_15.INJECT1_1 = "NO";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    OB fifo_in1_pad_8 (.I(fifo_in1_c_8), .O(fifo_in1[8]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    CCU2D add_46_3 (.A0(o_right_data[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n624), .COUT(n625), .S0(fifo_in1_15__N_1[1]), 
          .S1(fifo_in1_15__N_1[2]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_3.INIT0 = 16'h5555;
    defparam add_46_3.INIT1 = 16'h5555;
    defparam add_46_3.INJECT1_0 = "NO";
    defparam add_46_3.INJECT1_1 = "NO";
    LUT4 fifo_in1_15__I_0_i9_1_lut (.A(fifo_in1_15__N_1[8]), .Z(fifo_in1_c_8)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i9_1_lut.init = 16'h5555;
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(15[32:36])
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(14[32:36])
    CCU2D add_46_9 (.A0(o_right_data[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n627), .COUT(n628), .S0(fifo_in1_15__N_1[7]), 
          .S1(fifo_in1_15__N_1[8]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_9.INIT0 = 16'h5555;
    defparam add_46_9.INIT1 = 16'h5555;
    defparam add_46_9.INJECT1_0 = "NO";
    defparam add_46_9.INJECT1_1 = "NO";
    OB o_sck_pad (.I(o_sck_c), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    OB fifo_in1_pad_5 (.I(fifo_in1_c_5), .O(fifo_in1[5]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(12[29:34])
    OB fifo_in1_pad_2 (.I(fifo_in1_c_2), .O(fifo_in1[2]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_3 (.I(fifo_in1_c_3), .O(fifo_in1[3]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_0 (.I(fifo_in1_c_0), .O(fifo_in1[0]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_4 (.I(fifo_in1_c_4), .O(fifo_in1[4]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_1 (.I(fifo_in1_c_1), .O(fifo_in1[1]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_9 (.I(fifo_in1_c_9), .O(fifo_in1[9]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_6 (.I(fifo_in1_c_6), .O(fifo_in1[6]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_10 (.I(fifo_in1_c_10), .O(fifo_in1[10]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_7 (.I(fifo_in1_c_7), .O(fifo_in1[7]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_11 (.I(fifo_in1_c_11), .O(fifo_in1[11]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_12 (.I(fifo_in1_c_12), .O(fifo_in1[12]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_13 (.I(fifo_in1_c_13), .O(fifo_in1[13]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_14 (.I(fifo_in1_c_14), .O(fifo_in1[14]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    OB fifo_in1_pad_15 (.I(fifo_in1_c_15), .O(fifo_in1[15]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(17[32:40])
    LUT4 i140_2_lut (.A(rst_n_c), .B(lock), .Z(n556)) /* synthesis lut_function=(A (B)) */ ;
    defparam i140_2_lut.init = 16'h8888;
    LUT4 fifo_in1_15__I_0_i6_1_lut (.A(fifo_in1_15__N_1[5]), .Z(fifo_in1_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i6_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i3_1_lut (.A(fifo_in1_15__N_1[2]), .Z(fifo_in1_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i3_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i4_1_lut (.A(fifo_in1_15__N_1[3]), .Z(fifo_in1_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i4_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i1_1_lut (.A(fifo_in1_15__N_1[0]), .Z(fifo_in1_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i1_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i5_1_lut (.A(fifo_in1_15__N_1[4]), .Z(fifo_in1_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i5_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i2_1_lut (.A(fifo_in1_15__N_1[1]), .Z(fifo_in1_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i2_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i10_1_lut (.A(fifo_in1_15__N_1[9]), .Z(fifo_in1_c_9)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i10_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i7_1_lut (.A(fifo_in1_15__N_1[6]), .Z(fifo_in1_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i7_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i11_1_lut (.A(fifo_in1_15__N_1[10]), .Z(fifo_in1_c_10)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i11_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i8_1_lut (.A(fifo_in1_15__N_1[7]), .Z(fifo_in1_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i8_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i12_1_lut (.A(fifo_in1_15__N_1[11]), .Z(fifo_in1_c_11)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i12_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i13_1_lut (.A(fifo_in1_15__N_1[12]), .Z(fifo_in1_c_12)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i13_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i14_1_lut (.A(fifo_in1_15__N_1[13]), .Z(fifo_in1_c_13)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i14_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i15_1_lut (.A(fifo_in1_15__N_1[14]), .Z(fifo_in1_c_14)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i15_1_lut.init = 16'h5555;
    LUT4 fifo_in1_15__I_0_i16_1_lut (.A(fifo_in1_15__N_1[15]), .Z(fifo_in1_c_15)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[19:43])
    defparam fifo_in1_15__I_0_i16_1_lut.init = 16'h5555;
    LUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_19)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(33[16:24])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    OB mclk_pad (.I(mclk_c), .O(mclk));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    CCU2D add_46_11 (.A0(o_right_data[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n628), .COUT(n629), .S0(fifo_in1_15__N_1[9]), 
          .S1(fifo_in1_15__N_1[10]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_11.INIT0 = 16'h5555;
    defparam add_46_11.INIT1 = 16'h5555;
    defparam add_46_11.INJECT1_0 = "NO";
    defparam add_46_11.INJECT1_1 = "NO";
    VHI i239 (.Z(VCC_net));
    CCU2D add_46_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_right_data[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n624), .S1(fifo_in1_15__N_1[0]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_1.INIT0 = 16'hF000;
    defparam add_46_1.INIT1 = 16'h5555;
    defparam add_46_1.INJECT1_0 = "NO";
    defparam add_46_1.INJECT1_1 = "NO";
    I2S_Controller port1 (.o_ws_c(o_ws_c), .o_sck_N_28(o_sck_N_28), .mclk_c(mclk_c), 
            .mclk_c_enable_78(mclk_c_enable_78), .mclk_c_enable_63(mclk_c_enable_63), 
            .ws_reg_i(ws_reg_i), .o_sck_c(o_sck_c), .i_sd_c(i_sd_c), .\o_right_data[15] (o_right_data[15]), 
            .\o_right_data[16] (o_right_data[16]), .\o_right_data[17] (o_right_data[17]), 
            .\o_right_data[18] (o_right_data[18]), .\o_right_data[19] (o_right_data[19]), 
            .\o_right_data[20] (o_right_data[20]), .\o_right_data[21] (o_right_data[21]), 
            .\o_right_data[22] (o_right_data[22]), .\o_right_data[23] (o_right_data[23]), 
            .\o_right_data[24] (o_right_data[24]), .\o_right_data[25] (o_right_data[25]), 
            .\o_right_data[26] (o_right_data[26]), .\o_right_data[27] (o_right_data[27]), 
            .\o_right_data[28] (o_right_data[28]), .\o_right_data[29] (o_right_data[29]), 
            .\o_right_data[30] (o_right_data[30]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(34[18] 44[26])
    CCU2D add_46_17 (.A0(o_right_data[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n631), .S0(fifo_in1_15__N_1[15]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_17.INIT0 = 16'h5555;
    defparam add_46_17.INIT1 = 16'h0000;
    defparam add_46_17.INJECT1_0 = "NO";
    defparam add_46_17.INJECT1_1 = "NO";
    CCU2D add_46_7 (.A0(o_right_data[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n626), .COUT(n627), .S0(fifo_in1_15__N_1[5]), 
          .S1(fifo_in1_15__N_1[6]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_7.INIT0 = 16'h5555;
    defparam add_46_7.INIT1 = 16'h5555;
    defparam add_46_7.INJECT1_0 = "NO";
    defparam add_46_7.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2D add_46_13 (.A0(o_right_data[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n629), .COUT(n630), .S0(fifo_in1_15__N_1[11]), 
          .S1(fifo_in1_15__N_1[12]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(75[20:43])
    defparam add_46_13.INIT0 = 16'h5555;
    defparam add_46_13.INIT1 = 16'h5555;
    defparam add_46_13.INJECT1_0 = "NO";
    defparam add_46_13.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(n556));
    pll1 my_pll (.osc_clk(osc_clk), .rst_n_N_19(rst_n_N_19), .mclk_c(mclk_c), 
         .lock(lock), .GND_net(GND_net)) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(51[10] 58[3])
    
endmodule
//
// Verilog Description of module clk_div
//

module clk_div (mclk_c, o_sck_c, ws_reg_i, mclk_c_enable_63, mclk_c_enable_78, 
            o_sck_N_28) /* synthesis syn_module_defined=1 */ ;
    input mclk_c;
    output o_sck_c;
    input ws_reg_i;
    output mclk_c_enable_63;
    output mclk_c_enable_78;
    output o_sck_N_28;
    
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    wire o_sck_N_28 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(28[15:20])
    wire [2:0]r_reg;   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(12[17:22])
    
    wire n686;
    wire [1:0]n13;
    
    wire clk_out_N_244;
    
    FD1S3IX r_reg_59_60__i1 (.D(n13[0]), .CK(mclk_c), .CD(n686), .Q(r_reg[0]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(35[17:24])
    defparam r_reg_59_60__i1.GSR = "ENABLED";
    FD1S3AX clk_track_12 (.D(clk_out_N_244), .CK(mclk_c), .Q(o_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=62, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(25[8] 32[22])
    defparam clk_track_12.GSR = "ENABLED";
    LUT4 i142_2_lut_rep_3 (.A(r_reg[0]), .B(r_reg[1]), .Z(n686)) /* synthesis lut_function=(A (B)) */ ;
    defparam i142_2_lut_rep_3.init = 16'h8888;
    LUT4 i227_2_lut_3_lut_4_lut (.A(r_reg[0]), .B(r_reg[1]), .C(ws_reg_i), 
         .D(o_sck_c), .Z(mclk_c_enable_63)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i227_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i230_2_lut_rep_1_3_lut (.A(r_reg[0]), .B(r_reg[1]), .C(o_sck_c), 
         .Z(mclk_c_enable_78)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i230_2_lut_rep_1_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut (.A(r_reg[0]), .B(r_reg[1]), .C(o_sck_c), .Z(clk_out_N_244)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h7878;
    LUT4 i161_1_lut (.A(r_reg[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(35[17:24])
    defparam i161_1_lut.init = 16'h5555;
    INV i241 (.A(o_sck_c), .Z(o_sck_N_28));
    LUT4 i163_2_lut (.A(r_reg[1]), .B(r_reg[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(35[17:24])
    defparam i163_2_lut.init = 16'h6666;
    FD1S3IX r_reg_59_60__i2 (.D(n13[1]), .CK(mclk_c), .CD(n686), .Q(r_reg[1]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/clk_div.v(35[17:24])
    defparam r_reg_59_60__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module I2S_Controller
//

module I2S_Controller (o_ws_c, o_sck_N_28, mclk_c, mclk_c_enable_78, 
            mclk_c_enable_63, ws_reg_i, o_sck_c, i_sd_c, \o_right_data[15] , 
            \o_right_data[16] , \o_right_data[17] , \o_right_data[18] , 
            \o_right_data[19] , \o_right_data[20] , \o_right_data[21] , 
            \o_right_data[22] , \o_right_data[23] , \o_right_data[24] , 
            \o_right_data[25] , \o_right_data[26] , \o_right_data[27] , 
            \o_right_data[28] , \o_right_data[29] , \o_right_data[30] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output o_ws_c;
    input o_sck_N_28;
    input mclk_c;
    input mclk_c_enable_78;
    input mclk_c_enable_63;
    output ws_reg_i;
    input o_sck_c;
    input i_sd_c;
    output \o_right_data[15] ;
    output \o_right_data[16] ;
    output \o_right_data[17] ;
    output \o_right_data[18] ;
    output \o_right_data[19] ;
    output \o_right_data[20] ;
    output \o_right_data[21] ;
    output \o_right_data[22] ;
    output \o_right_data[23] ;
    output \o_right_data[24] ;
    output \o_right_data[25] ;
    output \o_right_data[26] ;
    output \o_right_data[27] ;
    output \o_right_data[28] ;
    output \o_right_data[29] ;
    output \o_right_data[30] ;
    input GND_net;
    
    wire o_sck_N_28 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(28[15:20])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    
    wire o_ws_N_35;
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(28[15:20])
    
    wire n533;
    wire [4:0]n25;
    
    wire n685;
    
    FD1S3AX o_ws_13 (.D(o_ws_N_35), .CK(o_sck_N_28), .Q(o_ws_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=34, LSE_RLINE=44 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(55[3] 63[7])
    defparam o_ws_13.GSR = "ENABLED";
    FD1S3IX count_58__i4 (.D(n25[4]), .CK(o_sck_N_28), .CD(n533), .Q(count[4]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam count_58__i4.GSR = "ENABLED";
    FD1S3IX count_58__i3 (.D(n25[3]), .CK(o_sck_N_28), .CD(n533), .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam count_58__i3.GSR = "ENABLED";
    FD1S3IX count_58__i2 (.D(n25[2]), .CK(o_sck_N_28), .CD(n533), .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam count_58__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_2 (.A(count[0]), .B(count[1]), .Z(n685)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_2.init = 16'h8888;
    LUT4 i199_3_lut_4_lut (.A(count[2]), .B(n685), .C(count[3]), .D(count[4]), 
         .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam i199_3_lut_4_lut.init = 16'h7f80;
    LUT4 i192_2_lut_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(count[3]), 
         .D(count[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i192_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i185_2_lut_3_lut (.A(count[0]), .B(count[1]), .C(count[2]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i185_2_lut_3_lut.init = 16'h7878;
    LUT4 i4_4_lut (.A(count[2]), .B(count[4]), .C(count[3]), .D(n685), 
         .Z(n533)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    FD1S3IX count_58__i1 (.D(n25[1]), .CK(o_sck_N_28), .CD(n533), .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam count_58__i1.GSR = "ENABLED";
    LUT4 i178_2_lut (.A(count[1]), .B(count[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam i178_2_lut.init = 16'h6666;
    FD1S3IX count_58__i0 (.D(n25[0]), .CK(o_sck_N_28), .CD(n533), .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam count_58__i0.GSR = "ENABLED";
    LUT4 i176_1_lut (.A(count[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(57[10:17])
    defparam i176_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(o_ws_c), .B(n533), .Z(o_ws_N_35)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    \i2s_rx(DATA_WIDTH=32)  i2s_rx_inst (.mclk_c(mclk_c), .mclk_c_enable_78(mclk_c_enable_78), 
            .mclk_c_enable_63(mclk_c_enable_63), .ws_reg_i(ws_reg_i), .o_sck_c(o_sck_c), 
            .i_sd_c(i_sd_c), .\o_right_data[15] (\o_right_data[15] ), .o_ws_c(o_ws_c), 
            .\o_right_data[16] (\o_right_data[16] ), .\o_right_data[17] (\o_right_data[17] ), 
            .\o_right_data[18] (\o_right_data[18] ), .\o_right_data[19] (\o_right_data[19] ), 
            .\o_right_data[20] (\o_right_data[20] ), .\o_right_data[21] (\o_right_data[21] ), 
            .\o_right_data[22] (\o_right_data[22] ), .\o_right_data[23] (\o_right_data[23] ), 
            .\o_right_data[24] (\o_right_data[24] ), .\o_right_data[25] (\o_right_data[25] ), 
            .\o_right_data[26] (\o_right_data[26] ), .\o_right_data[27] (\o_right_data[27] ), 
            .\o_right_data[28] (\o_right_data[28] ), .\o_right_data[29] (\o_right_data[29] ), 
            .\o_right_data[30] (\o_right_data[30] ), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_cont.v(68[13] 78[19])
    
endmodule
//
// Verilog Description of module \i2s_rx(DATA_WIDTH=32) 
//

module \i2s_rx(DATA_WIDTH=32)  (mclk_c, mclk_c_enable_78, mclk_c_enable_63, 
            ws_reg_i, o_sck_c, i_sd_c, \o_right_data[15] , o_ws_c, 
            \o_right_data[16] , \o_right_data[17] , \o_right_data[18] , 
            \o_right_data[19] , \o_right_data[20] , \o_right_data[21] , 
            \o_right_data[22] , \o_right_data[23] , \o_right_data[24] , 
            \o_right_data[25] , \o_right_data[26] , \o_right_data[27] , 
            \o_right_data[28] , \o_right_data[29] , \o_right_data[30] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input mclk_c;
    input mclk_c_enable_78;
    input mclk_c_enable_63;
    output ws_reg_i;
    input o_sck_c;
    input i_sd_c;
    output \o_right_data[15] ;
    input o_ws_c;
    output \o_right_data[16] ;
    output \o_right_data[17] ;
    output \o_right_data[18] ;
    output \o_right_data[19] ;
    output \o_right_data[20] ;
    output \o_right_data[21] ;
    output \o_right_data[22] ;
    output \o_right_data[23] ;
    output \o_right_data[24] ;
    output \o_right_data[25] ;
    output \o_right_data[26] ;
    output \o_right_data[27] ;
    output \o_right_data[28] ;
    output \o_right_data[29] ;
    output \o_right_data[30] ;
    input GND_net;
    
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(13[32:37])
    wire [31:0]right_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(44[33:49])
    wire [31:0]right_data_ones_compl_i_31__N_196;
    wire [31:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(57[33:56])
    
    wire sd_i, ws_i;
    wire [31:0]o_right_data_31__N_68;
    
    wire n645, n644, n643, n642, n641, n640, n639, n638, n637, 
        n636, n635, n634, n633, n632;
    
    LUT4 right_data_reg_i_31__I_0_i8_1_lut (.A(right_data_reg_i[7]), .Z(right_data_ones_compl_i_31__N_196[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i8_1_lut.init = 16'h5555;
    FD1P3AX right_data_ones_compl_i__i6 (.D(right_data_ones_compl_i_31__N_196[5]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i6.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i5 (.D(right_data_ones_compl_i_31__N_196[4]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i5.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i0 (.D(sd_i), .SP(mclk_c_enable_63), .CK(mclk_c), 
            .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i0.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i1 (.D(right_data_ones_compl_i_31__N_196[0]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i1.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i6_1_lut (.A(right_data_reg_i[5]), .Z(right_data_ones_compl_i_31__N_196[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i6_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i1_1_lut (.A(right_data_reg_i[0]), .Z(right_data_ones_compl_i_31__N_196[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i1_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i4_1_lut (.A(right_data_reg_i[3]), .Z(right_data_ones_compl_i_31__N_196[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i4_1_lut.init = 16'h5555;
    FD1P3AX right_data_ones_compl_i__i4 (.D(right_data_ones_compl_i_31__N_196[3]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i4.GSR = "ENABLED";
    FD1S3AX ws_reg_i_41 (.D(ws_i), .CK(o_sck_c), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_41.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i17_1_lut (.A(right_data_reg_i[16]), .Z(right_data_ones_compl_i_31__N_196[16])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i17_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i16_1_lut (.A(right_data_reg_i[15]), .Z(right_data_ones_compl_i_31__N_196[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i16_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i7_1_lut (.A(right_data_reg_i[6]), .Z(right_data_ones_compl_i_31__N_196[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i7_1_lut.init = 16'h5555;
    FD1S3AX sd_i_42 (.D(i_sd_c), .CK(o_sck_c), .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(72[13] 76[16])
    defparam sd_i_42.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i31 (.D(right_data_ones_compl_i_31__N_196[30]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i31.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i1 (.D(o_right_data_31__N_68[15]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[15] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i1.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i3 (.D(right_data_ones_compl_i_31__N_196[2]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i3.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i30 (.D(right_data_ones_compl_i_31__N_196[29]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i30.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i31_1_lut (.A(right_data_reg_i[30]), .Z(right_data_ones_compl_i_31__N_196[30])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i31_1_lut.init = 16'h5555;
    FD1P3AX right_data_ones_compl_i__i29 (.D(right_data_ones_compl_i_31__N_196[28]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i29.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i3_1_lut (.A(right_data_reg_i[2]), .Z(right_data_ones_compl_i_31__N_196[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i3_1_lut.init = 16'h5555;
    FD1P3AX right_data_ones_compl_i__i28 (.D(right_data_ones_compl_i_31__N_196[27]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i28.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i30_1_lut (.A(right_data_reg_i[29]), .Z(right_data_ones_compl_i_31__N_196[29])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i30_1_lut.init = 16'h5555;
    FD1P3AX right_data_ones_compl_i__i2 (.D(right_data_ones_compl_i_31__N_196[1]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i2.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i29_1_lut (.A(right_data_reg_i[28]), .Z(right_data_ones_compl_i_31__N_196[28])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i29_1_lut.init = 16'h5555;
    FD1S3AX ws_i_40 (.D(o_ws_c), .CK(o_sck_c), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(72[13] 76[16])
    defparam ws_i_40.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i27 (.D(right_data_ones_compl_i_31__N_196[26]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i27.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i26 (.D(right_data_ones_compl_i_31__N_196[25]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i26.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i25 (.D(right_data_ones_compl_i_31__N_196[24]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i25.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i24 (.D(right_data_ones_compl_i_31__N_196[23]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i24.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i23 (.D(right_data_ones_compl_i_31__N_196[22]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i23.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i22 (.D(right_data_ones_compl_i_31__N_196[21]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i22.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i21 (.D(right_data_ones_compl_i_31__N_196[20]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i21.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i20 (.D(right_data_ones_compl_i_31__N_196[19]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i20.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i19 (.D(right_data_ones_compl_i_31__N_196[18]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i19.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i18 (.D(right_data_ones_compl_i_31__N_196[17]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i18.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i17 (.D(right_data_ones_compl_i_31__N_196[16]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i17.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i16 (.D(right_data_ones_compl_i_31__N_196[15]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i16.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i15 (.D(right_data_ones_compl_i_31__N_196[14]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i15.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i14 (.D(right_data_ones_compl_i_31__N_196[13]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i14.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i13 (.D(right_data_ones_compl_i_31__N_196[12]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i13.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i12 (.D(right_data_ones_compl_i_31__N_196[11]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i12.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i11 (.D(right_data_ones_compl_i_31__N_196[10]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i11.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i10 (.D(right_data_ones_compl_i_31__N_196[9]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i10.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i9 (.D(right_data_ones_compl_i_31__N_196[8]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i9.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i8 (.D(right_data_ones_compl_i_31__N_196[7]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i8.GSR = "ENABLED";
    FD1P3AX right_data_ones_compl_i__i7 (.D(right_data_ones_compl_i_31__N_196[6]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i__i7.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i1 (.D(right_data_reg_i[0]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i1.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i28_1_lut (.A(right_data_reg_i[27]), .Z(right_data_ones_compl_i_31__N_196[27])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i28_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i2_1_lut (.A(right_data_reg_i[1]), .Z(right_data_ones_compl_i_31__N_196[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i2_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i27_1_lut (.A(right_data_reg_i[26]), .Z(right_data_ones_compl_i_31__N_196[26])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i27_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i26_1_lut (.A(right_data_reg_i[25]), .Z(right_data_ones_compl_i_31__N_196[25])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i26_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i25_1_lut (.A(right_data_reg_i[24]), .Z(right_data_ones_compl_i_31__N_196[24])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i25_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i5_1_lut (.A(right_data_reg_i[4]), .Z(right_data_ones_compl_i_31__N_196[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i5_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i24_1_lut (.A(right_data_reg_i[23]), .Z(right_data_ones_compl_i_31__N_196[23])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i24_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i23_1_lut (.A(right_data_reg_i[22]), .Z(right_data_ones_compl_i_31__N_196[22])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i23_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i22_1_lut (.A(right_data_reg_i[21]), .Z(right_data_ones_compl_i_31__N_196[21])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i22_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i21_1_lut (.A(right_data_reg_i[20]), .Z(right_data_ones_compl_i_31__N_196[20])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i21_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i20_1_lut (.A(right_data_reg_i[19]), .Z(right_data_ones_compl_i_31__N_196[19])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i20_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i19_1_lut (.A(right_data_reg_i[18]), .Z(right_data_ones_compl_i_31__N_196[18])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i19_1_lut.init = 16'h5555;
    FD1P3AX right_data_reg_i_i0_i2 (.D(right_data_reg_i[1]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i2.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i3 (.D(right_data_reg_i[2]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i3.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i4 (.D(right_data_reg_i[3]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i4.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i5 (.D(right_data_reg_i[4]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i5.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i6 (.D(right_data_reg_i[5]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i6.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i7 (.D(right_data_reg_i[6]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i7.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i8 (.D(right_data_reg_i[7]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i8.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i9 (.D(right_data_reg_i[8]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i9.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i10 (.D(right_data_reg_i[9]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i10.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i11 (.D(right_data_reg_i[10]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i11.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i12 (.D(right_data_reg_i[11]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i12.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i13 (.D(right_data_reg_i[12]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i13.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i14 (.D(right_data_reg_i[13]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i14.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i15 (.D(right_data_reg_i[14]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i15.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i16 (.D(right_data_reg_i[15]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i16.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i17 (.D(right_data_reg_i[16]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i17.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i18 (.D(right_data_reg_i[17]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i18.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i19 (.D(right_data_reg_i[18]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i19.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i20 (.D(right_data_reg_i[19]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i20.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i21 (.D(right_data_reg_i[20]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i21.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i22 (.D(right_data_reg_i[21]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i22.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i23 (.D(right_data_reg_i[22]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i23.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i24 (.D(right_data_reg_i[23]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i24.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i25 (.D(right_data_reg_i[24]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i25.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i26 (.D(right_data_reg_i[25]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i26.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i27 (.D(right_data_reg_i[26]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i27.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i28 (.D(right_data_reg_i[27]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i28.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i29 (.D(right_data_reg_i[28]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i29.GSR = "ENABLED";
    FD1P3AX right_data_reg_i_i0_i30 (.D(right_data_reg_i[29]), .SP(mclk_c_enable_63), 
            .CK(mclk_c), .Q(right_data_reg_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=68, LSE_RLINE=78 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i30.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i2 (.D(o_right_data_31__N_68[16]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[16] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i2.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i18_1_lut (.A(right_data_reg_i[17]), .Z(right_data_ones_compl_i_31__N_196[17])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i18_1_lut.init = 16'h5555;
    FD1P3AX right_data_twos_compl_i__0__i3 (.D(o_right_data_31__N_68[17]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[17] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i3.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i4 (.D(o_right_data_31__N_68[18]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[18] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i4.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i5 (.D(o_right_data_31__N_68[19]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[19] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i5.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i6 (.D(o_right_data_31__N_68[20]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[20] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i6.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i7 (.D(o_right_data_31__N_68[21]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[21] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i7.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i8 (.D(o_right_data_31__N_68[22]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[22] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i8.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i9 (.D(o_right_data_31__N_68[23]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[23] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i9.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i10 (.D(o_right_data_31__N_68[24]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[24] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i10.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i11 (.D(o_right_data_31__N_68[25]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[25] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i11.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i12 (.D(o_right_data_31__N_68[26]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[26] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i12.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i13 (.D(o_right_data_31__N_68[27]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[27] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i13.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i14 (.D(o_right_data_31__N_68[28]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[28] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i14.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i15 (.D(o_right_data_31__N_68[29]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[29] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i15.GSR = "ENABLED";
    FD1P3AX right_data_twos_compl_i__0__i16 (.D(o_right_data_31__N_68[30]), 
            .SP(mclk_c_enable_78), .CK(mclk_c), .Q(\o_right_data[30] ));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i__0__i16.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i15_1_lut (.A(right_data_reg_i[14]), .Z(right_data_ones_compl_i_31__N_196[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i15_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i14_1_lut (.A(right_data_reg_i[13]), .Z(right_data_ones_compl_i_31__N_196[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i14_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i13_1_lut (.A(right_data_reg_i[12]), .Z(right_data_ones_compl_i_31__N_196[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i13_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i12_1_lut (.A(right_data_reg_i[11]), .Z(right_data_ones_compl_i_31__N_196[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i12_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i11_1_lut (.A(right_data_reg_i[10]), .Z(right_data_ones_compl_i_31__N_196[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i11_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i10_1_lut (.A(right_data_reg_i[9]), .Z(right_data_ones_compl_i_31__N_196[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i10_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i9_1_lut (.A(right_data_reg_i[8]), .Z(right_data_ones_compl_i_31__N_196[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i9_1_lut.init = 16'h5555;
    CCU2D add_73_30 (.A0(right_data_ones_compl_i[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n645), .S0(o_right_data_31__N_68[29]), 
          .S1(o_right_data_31__N_68[30]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_30.INIT0 = 16'h5aaa;
    defparam add_73_30.INIT1 = 16'h5aaa;
    defparam add_73_30.INJECT1_0 = "NO";
    defparam add_73_30.INJECT1_1 = "NO";
    CCU2D add_73_28 (.A0(right_data_ones_compl_i[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n644), .COUT(n645), .S0(o_right_data_31__N_68[27]), 
          .S1(o_right_data_31__N_68[28]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_28.INIT0 = 16'h5aaa;
    defparam add_73_28.INIT1 = 16'h5aaa;
    defparam add_73_28.INJECT1_0 = "NO";
    defparam add_73_28.INJECT1_1 = "NO";
    CCU2D add_73_26 (.A0(right_data_ones_compl_i[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n643), .COUT(n644), .S0(o_right_data_31__N_68[25]), 
          .S1(o_right_data_31__N_68[26]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_26.INIT0 = 16'h5aaa;
    defparam add_73_26.INIT1 = 16'h5aaa;
    defparam add_73_26.INJECT1_0 = "NO";
    defparam add_73_26.INJECT1_1 = "NO";
    CCU2D add_73_24 (.A0(right_data_ones_compl_i[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n642), .COUT(n643), .S0(o_right_data_31__N_68[23]), 
          .S1(o_right_data_31__N_68[24]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_24.INIT0 = 16'h5aaa;
    defparam add_73_24.INIT1 = 16'h5aaa;
    defparam add_73_24.INJECT1_0 = "NO";
    defparam add_73_24.INJECT1_1 = "NO";
    CCU2D add_73_22 (.A0(right_data_ones_compl_i[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n641), .COUT(n642), .S0(o_right_data_31__N_68[21]), 
          .S1(o_right_data_31__N_68[22]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_22.INIT0 = 16'h5aaa;
    defparam add_73_22.INIT1 = 16'h5aaa;
    defparam add_73_22.INJECT1_0 = "NO";
    defparam add_73_22.INJECT1_1 = "NO";
    CCU2D add_73_20 (.A0(right_data_ones_compl_i[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n640), .COUT(n641), .S0(o_right_data_31__N_68[19]), 
          .S1(o_right_data_31__N_68[20]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_20.INIT0 = 16'h5aaa;
    defparam add_73_20.INIT1 = 16'h5aaa;
    defparam add_73_20.INJECT1_0 = "NO";
    defparam add_73_20.INJECT1_1 = "NO";
    CCU2D add_73_18 (.A0(right_data_ones_compl_i[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n639), .COUT(n640), .S0(o_right_data_31__N_68[17]), 
          .S1(o_right_data_31__N_68[18]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_18.INIT0 = 16'h5aaa;
    defparam add_73_18.INIT1 = 16'h5aaa;
    defparam add_73_18.INJECT1_0 = "NO";
    defparam add_73_18.INJECT1_1 = "NO";
    CCU2D add_73_16 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n638), .COUT(n639), .S0(o_right_data_31__N_68[15]), 
          .S1(o_right_data_31__N_68[16]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_16.INIT0 = 16'h5aaa;
    defparam add_73_16.INIT1 = 16'h5aaa;
    defparam add_73_16.INJECT1_0 = "NO";
    defparam add_73_16.INJECT1_1 = "NO";
    CCU2D add_73_14 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n637), .COUT(n638));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_14.INIT0 = 16'h5aaa;
    defparam add_73_14.INIT1 = 16'h5aaa;
    defparam add_73_14.INJECT1_0 = "NO";
    defparam add_73_14.INJECT1_1 = "NO";
    CCU2D add_73_12 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n636), .COUT(n637));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_12.INIT0 = 16'h5aaa;
    defparam add_73_12.INIT1 = 16'h5aaa;
    defparam add_73_12.INJECT1_0 = "NO";
    defparam add_73_12.INJECT1_1 = "NO";
    CCU2D add_73_10 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n635), .COUT(n636));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_10.INIT0 = 16'h5aaa;
    defparam add_73_10.INIT1 = 16'h5aaa;
    defparam add_73_10.INJECT1_0 = "NO";
    defparam add_73_10.INJECT1_1 = "NO";
    CCU2D add_73_8 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n634), .COUT(n635));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_8.INIT0 = 16'h5aaa;
    defparam add_73_8.INIT1 = 16'h5aaa;
    defparam add_73_8.INJECT1_0 = "NO";
    defparam add_73_8.INJECT1_1 = "NO";
    CCU2D add_73_6 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n633), .COUT(n634));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_6.INIT0 = 16'h5aaa;
    defparam add_73_6.INIT1 = 16'h5aaa;
    defparam add_73_6.INJECT1_0 = "NO";
    defparam add_73_6.INJECT1_1 = "NO";
    CCU2D add_73_4 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n632), .COUT(n633));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_4.INIT0 = 16'h5aaa;
    defparam add_73_4.INIT1 = 16'h5aaa;
    defparam add_73_4.INJECT1_0 = "NO";
    defparam add_73_4.INJECT1_1 = "NO";
    CCU2D add_73_2 (.A0(right_data_ones_compl_i[1]), .B0(right_data_ones_compl_i[0]), 
          .C0(GND_net), .D0(GND_net), .A1(right_data_ones_compl_i[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n632));   // c:/users/sec29/desktop/i2s_iot/rvl_test/i2s_rx.v(149[40:67])
    defparam add_73_2.INIT0 = 16'h7000;
    defparam add_73_2.INIT1 = 16'h5aaa;
    defparam add_73_2.INJECT1_0 = "NO";
    defparam add_73_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module pll1
//

module pll1 (osc_clk, rst_n_N_19, mclk_c, lock, GND_net) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input rst_n_N_19;
    output mclk_c;
    output lock;
    input GND_net;
    
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(48[30:37])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/pll1.v(11[17:22])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(19[29:33])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(CLKOP), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_n_N_19), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(mclk_c), .LOCK(lock)) /* synthesis FREQUENCY_PIN_CLKOS="4.000000", FREQUENCY_PIN_CLKOP="32.000000", FREQUENCY_PIN_CLKI="16.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=51, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top_i2stest.v(51[10] 58[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 15;
    defparam PLLInst_0.CLKOS_DIV = 120;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 14;
    defparam PLLInst_0.CLKOS_CPHASE = 119;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
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
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
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
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:11:13 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 256 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1825618256119aef34 -pmi -lang verilog  */
/* Mon Mar 13 14:11:13 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1825618256119aef34 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(WrAddress[7]), .ADA6(WrAddress[6]), .ADA5(WrAddress[5]), 
        .ADA4(WrAddress[4]), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(RdAddress[7]), 
        .ADB6(RdAddress[6]), .ADB5(RdAddress[5]), .ADB4(RdAddress[4]), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:21:34 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 16 -num_rows 256 -rdata_width 16 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr16825616825611bf0948 -pmi -lang verilog  */
/* Mon Mar 13 14:21:34 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr16825616825611bf0948 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [15:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [15:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(), .DO7(), 
        .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), 
        .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr16825616825611bf0948__PMIP__256__16__16B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr16825616825611bf0948__PMIP__256__16__16B
    // exemplar attribute pmi_ram_dpXbnonesadr16825616825611bf0948_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:28:58 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 256 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1825618256119aef34 -pmi -lang verilog  */
/* Mon Mar 13 14:28:58 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1825618256119aef34 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(WrAddress[7]), .ADA6(WrAddress[6]), .ADA5(WrAddress[5]), 
        .ADA4(WrAddress[4]), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(RdAddress[7]), 
        .ADB6(RdAddress[6]), .ADB5(RdAddress[5]), .ADB4(RdAddress[4]), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:34:51 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 256 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1825618256119aef34 -pmi -lang verilog  */
/* Mon Mar 13 14:34:51 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1825618256119aef34 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(WrAddress[7]), .ADA6(WrAddress[6]), .ADA5(WrAddress[5]), 
        .ADA4(WrAddress[4]), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(RdAddress[7]), 
        .ADB6(RdAddress[6]), .ADB5(RdAddress[5]), .ADB4(RdAddress[4]), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:38:25 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 256 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1825618256119aef34 -pmi -lang verilog  */
/* Mon Mar 13 14:38:25 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1825618256119aef34 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(WrAddress[7]), .ADA6(WrAddress[6]), .ADA5(WrAddress[5]), 
        .ADA4(WrAddress[4]), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(RdAddress[7]), 
        .ADB6(RdAddress[6]), .ADB5(RdAddress[5]), .ADB4(RdAddress[4]), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1825618256119aef34__PMIP__256__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1825618256119aef34_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 14:53:30 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 1024 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr33101024331010241206669b -pmi -lang verilog  */
/* Mon Mar 13 14:53:29 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr33101024331010241206669b (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Tue Mar 14 11:05:43 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 1024 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr33101024331010241206669b -pmi -lang verilog  */
/* Tue Mar 14 11:05:42 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr33101024331010241206669b (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Tue Mar 14 11:06:49 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 1024 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr33101024331010241206669b -pmi -lang verilog  */
/* Tue Mar 14 11:06:49 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr33101024331010241206669b (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr33101024331010241206669b__PMIP__1024__33__33B
    // exemplar attribute pmi_ram_dpXbnonesadr33101024331010241206669b_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Tue Mar 14 11:18:28 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Tue Mar 14 11:18:28 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 11:32:45 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 11:32:44 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 11:33:56 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 11:33:55 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 12:35:03 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 12:35:03 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 12:46:41 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 12:46:41 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 14:25:52 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 14:25:52 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 14:31:43 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 14:31:43 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 14:48:09 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 14:48:09 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 14:51:22 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 14:51:22 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 14:55:35 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 14:55:35 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 15:27:26 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 15:27:25 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Wed Mar 15 15:46:39 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr11211211528818 (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr11211211528818_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr11211211528818_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr11211211528818__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr11211211528818_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9_x64/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 1024 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr1101024110102411e25311 -pmi -lang verilog  */
/* Wed Mar 15 15:46:39 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr1101024110102411e25311 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), 
        .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr1101024110102411e25311__PMIP__1024__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr1101024110102411e25311_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
