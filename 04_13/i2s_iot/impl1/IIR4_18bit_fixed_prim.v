// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Sat Mar 11 18:59:14 2017
//
// Verilog Description of module IIR4_18bit_fixed
//

module IIR4_18bit_fixed (audio_out, audio_in, scale, b1, b2, b3, 
            b4, b5, a2, a3, a4, a5, state_clk, lr_clk, reset) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(1[8:24])
    output [15:0]audio_out;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    input [15:0]audio_in;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    input [2:0]scale;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(19[18:23])
    input [17:0]b1;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    input [17:0]b2;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    input [17:0]b3;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    input [17:0]b4;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    input [17:0]b5;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    input [17:0]a2;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    input [17:0]a3;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    input [17:0]a4;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    input [17:0]a5;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    input state_clk;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[12:21])
    input lr_clk;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[23:29])
    input reset;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[31:36])
    
    wire state_clk_c /* synthesis SET_AS_NETWORK=state_clk_c */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[12:21])
    
    wire GND_net, VCC_net, audio_out_c_15, audio_out_c_14, audio_out_c_13, 
        audio_out_c_12, audio_out_c_11, audio_out_c_10, audio_out_c_9, 
        audio_out_c_8, audio_out_c_7, audio_out_c_6, audio_out_c_5, 
        audio_out_c_4, audio_out_c_3, audio_out_c_2, audio_out_c_1, 
        audio_out_c_0, audio_in_c_15, audio_in_c_14, audio_in_c_13, 
        audio_in_c_12, audio_in_c_11, audio_in_c_10, audio_in_c_9, audio_in_c_8, 
        audio_in_c_7, audio_in_c_6, audio_in_c_5, audio_in_c_4, audio_in_c_3, 
        audio_in_c_2, audio_in_c_1, audio_in_c_0, scale_c_2, scale_c_1, 
        scale_c_0, b1_c_17, b1_c_16, b1_c_15, b1_c_14, b1_c_13, 
        b1_c_12, b1_c_11, b1_c_10, b1_c_9, b1_c_8, b1_c_7, b1_c_6, 
        b1_c_5, b1_c_4, b1_c_3, b1_c_2, b1_c_1, b1_c_0, b2_c_17, 
        b2_c_16, b2_c_15, b2_c_14, b2_c_13, b2_c_12, b2_c_11, b2_c_10, 
        b2_c_9, b2_c_8, b2_c_7, b2_c_6, b2_c_5, b2_c_4, b2_c_3, 
        b2_c_2, b2_c_1, b2_c_0, b3_c_17, b3_c_16, b3_c_15, b3_c_14, 
        b3_c_13, b3_c_12, b3_c_11, b3_c_10, b3_c_9, b3_c_8, b3_c_7, 
        b3_c_6, b3_c_5, b3_c_4, b3_c_3, b3_c_2, b3_c_1, b3_c_0, 
        b4_c_17, b4_c_16, b4_c_15, b4_c_14, b4_c_13, b4_c_12, b4_c_11, 
        b4_c_10, b4_c_9, b4_c_8, b4_c_7, b4_c_6, b4_c_5, b4_c_4, 
        b4_c_3, b4_c_2, b4_c_1, b4_c_0, b5_c_17, b5_c_16, b5_c_15, 
        b5_c_14, b5_c_13, b5_c_12, b5_c_11, b5_c_10, b5_c_9, b5_c_8, 
        b5_c_7, b5_c_6, b5_c_5, b5_c_4, b5_c_3, b5_c_2, b5_c_1, 
        b5_c_0, a2_c_17, a2_c_16, a2_c_15, a2_c_14, a2_c_13, a2_c_12, 
        a2_c_11, a2_c_10, a2_c_9, a2_c_8, a2_c_7, a2_c_6, a2_c_5, 
        a2_c_4, a2_c_3, a2_c_2, a2_c_1, a2_c_0, a3_c_17, a3_c_16, 
        a3_c_15, a3_c_14, a3_c_13, a3_c_12, a3_c_11, a3_c_10, a3_c_9, 
        a3_c_8, a3_c_7, a3_c_6, a3_c_5, a3_c_4, a3_c_3, a3_c_2, 
        a3_c_1, a3_c_0, a4_c_17, a4_c_16, a4_c_15, a4_c_14, a4_c_13, 
        a4_c_12, a4_c_11, a4_c_10, a4_c_9, a4_c_8, a4_c_7, a4_c_6, 
        a4_c_5, a4_c_4, a4_c_3, a4_c_2, a4_c_1, a4_c_0, a5_c_17, 
        a5_c_16, a5_c_15, a5_c_14, a5_c_13, a5_c_12, a5_c_11, a5_c_10, 
        a5_c_9, a5_c_8, a5_c_7, a5_c_6, a5_c_5, a5_c_4, a5_c_3, 
        a5_c_2, a5_c_1, a5_c_0, lr_clk_c, reset_c;
    wire [17:0]f1_mac_new;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(25[20:30])
    wire [17:0]f1_coeff_x_value;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(25[32:48])
    wire [17:0]f1_coeff;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(26[19:27])
    wire [17:0]f1_mac_old;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(26[29:39])
    wire [17:0]f1_value;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(26[41:49])
    wire [17:0]x_n;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(29[19:22])
    wire [17:0]x_n1;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(31[19:23])
    wire [17:0]x_n2;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(31[25:29])
    
    wire n2361;
    wire [17:0]x_n3;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(31[31:35])
    wire [17:0]x_n4;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(31[37:41])
    wire [17:0]f1_y_n1;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(36[19:26])
    wire [17:0]f1_y_n2;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(36[28:35])
    wire [17:0]f1_y_n3;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(36[37:44])
    wire [17:0]f1_y_n4;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(36[46:53])
    
    wire last_clk;
    wire [17:0]n42;
    
    wire n10, n12, n6, n2215, n2231, n2, n6_adj_1, n16, n13, 
        n9, n2_adj_2, n12_adj_3, n10_adj_4, n16_adj_5, n9_adj_6, 
        n2_adj_7, n13_adj_8, n16_adj_9, n10_adj_10, n16_adj_11, n9_adj_12, 
        n2_adj_13, n13_adj_14, n12_adj_15, n13_adj_16, n9_adj_17, 
        n2_adj_18, n12_adj_19, n10_adj_20, n16_adj_21, n10_adj_22, 
        n9_adj_23, n2_adj_24, n13_adj_25, n16_adj_26, n12_adj_27, 
        n13_adj_28, n9_adj_29, n2_adj_30, n12_adj_31, n10_adj_32, 
        n12_adj_33, n16_adj_34, n13_adj_35, n9_adj_36, n2_adj_37, 
        n10_adj_38, n13_adj_39, n12_adj_40, n12_adj_41, n9_adj_42, 
        n2_adj_43, n16_adj_44, n10_adj_45, n16_adj_46, n9_adj_47, 
        n2_adj_48, n9_adj_49, n13_adj_50, n1697, n2335, n2_adj_51, 
        n10_adj_52, n16_adj_53, n12_adj_54, n9_adj_55, n2_adj_56, 
        n13_adj_57, n12_adj_58, n2359, n13_adj_59, n9_adj_60, n1959, 
        n12_adj_61, n10_adj_62, n16_adj_63, n10_adj_64, n9_adj_65, 
        n2_adj_66, n10_adj_67, n13_adj_68, n9_adj_69, n1, n2_adj_70, 
        n3, n4, n5, n6_adj_71, n7, n8, n9_adj_72, n10_adj_73, 
        n11, n12_adj_74, n13_adj_75, n14, n15, n16_adj_76, n19, 
        n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, 
        n30, n31, n32, n33, n34, n2_adj_77, n16_adj_78, n2216;
    wire [15:0]n1099;
    
    wire n2245, n2214, n2225, n2212, n2232, n2233, n2234, n2235, 
        n2236, n2237, n2238, n2239, n2240, n2241, n2242, n1134, 
        n2217, n2218, n2219, n2220, n2221, n2222, n2223, n2224, 
        n2226, n2227, n2228, n2243, n2229, n2230, n2211, n2_adj_79, 
        n16_adj_80, n10_adj_81, n12_adj_82, n2210, n1942, n10_adj_83, 
        n2247, n9_adj_84, n13_adj_85, n12_adj_86, n13_adj_87, n12_adj_88, 
        n16_adj_89, n2_adj_90, n9_adj_91, n10_adj_92, n13_adj_93, 
        n10_adj_94, n16_adj_95, n2_adj_96, n9_adj_97, n16_adj_98, 
        n12_adj_99, n2_adj_100, n9_adj_101, n13_adj_102, n10_adj_103, 
        n16_adj_104, n13_adj_105, n12_adj_106, n10_adj_107, n2_adj_108, 
        n9_adj_109, n12_adj_110, n10_adj_111, n16_adj_112, n13_adj_113, 
        n2_adj_114, n9_adj_115, n12_adj_116, n16_adj_117, n13_adj_118, 
        n2_adj_119, n9_adj_120, n10_adj_121, n13_adj_122, n12_adj_123, 
        n16_adj_124, n12_adj_125, n2_adj_126, n9_adj_127, n10_adj_128, 
        n16_adj_129, n10_adj_130, n13_adj_131, n2_adj_132, n9_adj_133, 
        n16_adj_134, n12_adj_135, n13_adj_136, n10_adj_137, n2_adj_138, 
        n9_adj_139, n16_adj_140, n12_adj_141, n2_adj_142, n9_adj_143, 
        n13_adj_144, n12_adj_145, n10_adj_146, n16_adj_147, n13_adj_148, 
        n12_adj_149, n2_adj_150, n9_adj_151, n10_adj_152, n10_adj_153, 
        n16_adj_154, n2_adj_155, n9_adj_156, n13_adj_157, n12_adj_158, 
        n16_adj_159, n10_adj_160, n2_adj_161, n9_adj_162, n13_adj_163, 
        n16_adj_164, n12_adj_165, n13_adj_166, n2_adj_167, n9_adj_168, 
        n10_adj_169, n16_adj_170, n13_adj_171, n12_adj_172, n12_adj_173, 
        n2_adj_174, n9_adj_175, n10_adj_176, n16_adj_177, n13_adj_178, 
        n12_adj_179, n2_adj_180, n9_adj_181, n10_adj_182, n16_adj_183, 
        n2_adj_184, n9_adj_185, n10_adj_186, n13_adj_187, n12_adj_188, 
        n16_adj_189, n10_adj_190, n2_adj_191, n9_adj_192, n2209, n13_adj_193, 
        n16_adj_194, n12_adj_195, n2207, n13_adj_196, n2206, n2205, 
        n7_adj_197, n2204, n2203, n2202, n12_adj_198, n2201, n2213, 
        n2_adj_199, n9_adj_200, n2200, n10_adj_201, n13_adj_202, n10_adj_203, 
        n16_adj_204, n12_adj_205, n16_adj_206, n2252, n2250, n2360, 
        n7_adj_207, n1972, n2358, n2244, n13_adj_208, n2009;
    
    VHI i2 (.Z(VCC_net));
    signed_mult f1_c_x_v (.f1_coeff({f1_coeff}), .f1_value({f1_value}), 
            .GND_net(GND_net), .VCC_net(VCC_net), .f1_coeff_x_value({f1_coeff_x_value})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(39[13:60])
    FD1P3AX f1_y_n4_i0_i17 (.D(f1_y_n3[17]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i17.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i16 (.D(f1_y_n3[16]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i16.GSR = "ENABLED";
    FD1P3AX last_clk_60 (.D(n2361), .SP(n2209), .CK(state_clk_c), .Q(last_clk));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam last_clk_60.GSR = "ENABLED";
    LUT4 shift_left_4_i31_3_lut (.A(n13_adj_75), .B(n15), .C(scale_c_1), 
         .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i31_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i15_3_lut (.A(f1_mac_new[3]), .B(f1_mac_new[2]), .C(scale_c_0), 
         .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i15_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n2_i0_i0 (.D(f1_y_n1[0]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i0.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i0 (.D(n2215), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i0.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i0 (.D(f1_y_n2[0]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i0.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i0 (.D(f1_y_n3[0]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i0.GSR = "ENABLED";
    FD1P3AX x_n1__i1 (.D(x_n[2]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i1.GSR = "ENABLED";
    FD1P3AX x_n2__i1 (.D(x_n1[2]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i1.GSR = "ENABLED";
    FD1P3AX x_n3__i1 (.D(x_n2[2]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i1.GSR = "ENABLED";
    FD1P3AX x_n4__i1 (.D(x_n3[2]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i1.GSR = "ENABLED";
    IFS1P3DX x_n__i1 (.D(audio_in_c_0), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i1.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i0 (.D(n2252), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i0.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i0 (.D(n2213), .SP(n2009), .CK(state_clk_c), .Q(f1_value[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i1 (.D(n1134), .CK(state_clk_c), .CD(reset_c), .Q(n1099[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i15 (.D(f1_y_n3[15]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i15.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i14 (.D(f1_y_n3[14]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i14.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i13 (.D(f1_y_n3[13]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i13.GSR = "ENABLED";
    LUT4 shift_left_4_i46_3_lut (.A(n28), .B(n32), .C(scale_c_2), .Z(n42[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i46_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut (.A(n13_adj_208), .B(f1_y_n1[14]), .C(n10_adj_81), .D(n1099[6]), 
         .Z(n16_adj_206)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut.init = 16'hfefa;
    LUT4 shift_left_4_i32_3_lut (.A(n14), .B(n16_adj_76), .C(scale_c_1), 
         .Z(n32)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i32_3_lut.init = 16'hcaca;
    LUT4 select_214_Select_13_i9_2_lut (.A(f1_y_n4[13]), .B(n1099[9]), .Z(n9_adj_101)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_13_i9_2_lut.init = 16'h8888;
    FD1P3IX f1_mac_old__i0 (.D(n2360), .SP(n1942), .CD(n1959), .CK(state_clk_c), 
            .Q(f1_mac_old[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i0.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i12 (.D(f1_y_n3[12]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i12.GSR = "ENABLED";
    LUT4 select_215_Select_14_i9_2_lut (.A(a5_c_14), .B(n1099[9]), .Z(n9_adj_200)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_14_i9_2_lut.init = 16'h8888;
    LUT4 shift_left_4_i16_3_lut (.A(f1_mac_new[2]), .B(f1_mac_new[1]), .C(scale_c_0), 
         .Z(n16_adj_76)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i16_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n4_i0_i11 (.D(f1_y_n3[11]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i11.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_1 (.A(n13_adj_105), .B(a2_c_14), .C(n10_adj_107), 
         .D(n1099[6]), .Z(n16_adj_95)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_1.init = 16'hfefa;
    OB audio_out_pad_12 (.I(audio_out_c_12), .O(audio_out[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    FD1P3AX f1_y_n4_i0_i10 (.D(f1_y_n3[10]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i10.GSR = "ENABLED";
    LUT4 shift_left_4_i47_3_lut (.A(n29), .B(n33), .C(scale_c_2), .Z(n42[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i47_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n4_i0_i9 (.D(f1_y_n3[9]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i9.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i8 (.D(f1_y_n3[8]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i8.GSR = "ENABLED";
    LUT4 shift_left_4_i33_3_lut (.A(n15), .B(n2358), .C(scale_c_1), .Z(n33)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i33_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n4_i0_i7 (.D(f1_y_n3[7]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i7.GSR = "ENABLED";
    LUT4 shift_left_4_i48_3_lut (.A(n30), .B(n34), .C(scale_c_2), .Z(n42[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i48_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n4_i0_i6 (.D(f1_y_n3[6]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i6.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i5 (.D(f1_y_n3[5]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i5.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i4 (.D(f1_y_n3[4]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i4.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i3 (.D(f1_y_n3[3]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i3.GSR = "ENABLED";
    LUT4 shift_left_4_i34_4_lut (.A(n16_adj_76), .B(n2360), .C(scale_c_1), 
         .D(scale_c_0), .Z(n34)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i34_4_lut.init = 16'h0aca;
    FD1P3AX f1_y_n4_i0_i2 (.D(f1_y_n3[2]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i2.GSR = "ENABLED";
    FD1P3AX f1_y_n4_i0_i1 (.D(f1_y_n3[1]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n4[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n4_i0_i1.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i17 (.D(f1_y_n2[17]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i17.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i16 (.D(f1_y_n2[16]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i16.GSR = "ENABLED";
    LUT4 shift_left_4_i50_3_lut (.A(n32), .B(n2359), .C(scale_c_2), .Z(n42[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i50_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i19_3_lut (.A(n3), .B(n23), .C(scale_c_2), .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i19_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i1_3_lut (.A(f1_mac_new[17]), .B(f1_mac_new[16]), 
         .C(scale_c_0), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i1_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n3_i0_i15 (.D(f1_y_n2[15]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i15.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i14 (.D(f1_y_n2[14]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i14.GSR = "ENABLED";
    LUT4 i649_2_lut (.A(scale_c_2), .B(scale_c_1), .Z(n2335)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam i649_2_lut.init = 16'heeee;
    LUT4 shift_left_4_i20_3_lut (.A(n4), .B(n24), .C(scale_c_2), .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i20_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(f1_y_n1[1]), .B(n6_adj_1), .C(n7_adj_197), .D(n1099[6]), 
         .Z(n2211)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut.init = 16'hfefc;
    FD1P3AX f1_y_n3_i0_i13 (.D(f1_y_n2[13]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i13.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i12 (.D(f1_y_n2[12]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i12.GSR = "ENABLED";
    LUT4 shift_left_4_i2_3_lut (.A(f1_mac_new[16]), .B(f1_mac_new[15]), 
         .C(scale_c_0), .Z(n2_adj_70)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i2_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(reset_c), .B(n1099[10]), .C(scale_c_2), .Z(n2247)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(57[7] 195[5])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i1_4_lut (.A(x_n2[17]), .B(x_n3[17]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_62)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 i2_4_lut (.A(f1_y_n4[1]), .B(f1_y_n3[1]), .C(n1099[9]), .D(n1099[8]), 
         .Z(n6_adj_1)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i2_4_lut.init = 16'heca0;
    LUT4 i4_4_lut (.A(f1_y_n2[17]), .B(audio_in_c_15), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_50)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut.init = 16'heca0;
    LUT4 select_214_Select_17_i2_2_lut (.A(x_n1[17]), .B(n1099[2]), .Z(n2_adj_90)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_17_i2_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n3_i0_i11 (.D(f1_y_n2[11]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i11.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i10 (.D(f1_y_n2[10]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i10.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_2 (.A(x_n4[17]), .B(f1_y_n3[17]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_54)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_2.init = 16'heca0;
    LUT4 i7_4_lut_adj_3 (.A(n13_adj_50), .B(f1_y_n1[17]), .C(n10_adj_62), 
         .D(n1099[6]), .Z(n16_adj_44)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_3.init = 16'hfefa;
    LUT4 select_214_Select_1_i7_2_lut (.A(f1_y_n2[1]), .B(n1099[7]), .Z(n7_adj_197)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_1_i7_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n3_i0_i9 (.D(f1_y_n2[9]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i9.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i8 (.D(f1_y_n2[8]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i8.GSR = "ENABLED";
    LUT4 select_214_Select_17_i9_2_lut (.A(f1_y_n4[17]), .B(n1099[9]), .Z(n9_adj_91)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_17_i9_2_lut.init = 16'h8888;
    LUT4 i8_4_lut (.A(n9_adj_91), .B(n16_adj_44), .C(n12_adj_54), .D(n2_adj_90), 
         .Z(n2230)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_4 (.A(x_n2[16]), .B(x_n3[16]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_38)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_4.init = 16'heca0;
    LUT4 i8_4_lut_adj_5 (.A(n9_adj_175), .B(n16_adj_5), .C(n12), .D(n2_adj_174), 
         .Z(n2216)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_5.init = 16'hfffe;
    LUT4 i4_4_lut_adj_6 (.A(f1_y_n2[16]), .B(audio_in_c_14), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_28)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_6.init = 16'heca0;
    LUT4 select_214_Select_16_i2_2_lut (.A(x_n1[16]), .B(n1099[2]), .Z(n2_adj_96)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_16_i2_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n3_i0_i7 (.D(f1_y_n2[7]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i7.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i6 (.D(f1_y_n2[6]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i6.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_7 (.A(x_n4[16]), .B(f1_y_n3[16]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_33)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_7.init = 16'heca0;
    LUT4 i7_4_lut_adj_8 (.A(n13_adj_28), .B(f1_y_n1[16]), .C(n10_adj_38), 
         .D(n1099[6]), .Z(n16_adj_21)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_8.init = 16'hfefa;
    FD1P3AX f1_y_n3_i0_i5 (.D(f1_y_n2[5]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i5.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i4 (.D(f1_y_n2[4]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i4.GSR = "ENABLED";
    LUT4 select_214_Select_16_i9_2_lut (.A(f1_y_n4[16]), .B(n1099[9]), .Z(n9_adj_97)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_16_i9_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_9 (.A(n9_adj_97), .B(n16_adj_21), .C(n12_adj_33), 
         .D(n2_adj_96), .Z(n2229)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_9.init = 16'hfffe;
    LUT4 i1_4_lut_adj_10 (.A(x_n2[15]), .B(x_n3[15]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_182)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_10.init = 16'heca0;
    LUT4 i4_4_lut_adj_11 (.A(f1_y_n2[15]), .B(audio_in_c_13), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_171)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_11.init = 16'heca0;
    LUT4 select_214_Select_2_i9_2_lut (.A(f1_y_n4[2]), .B(n1099[9]), .Z(n9_adj_175)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_2_i9_2_lut.init = 16'h8888;
    LUT4 select_214_Select_15_i2_2_lut (.A(x_n1[15]), .B(n1099[2]), .Z(n2_adj_77)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_15_i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_12 (.A(x_n4[15]), .B(f1_y_n3[15]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_172)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_12.init = 16'heca0;
    FD1P3AX f1_y_n3_i0_i3 (.D(f1_y_n2[3]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i3.GSR = "ENABLED";
    FD1P3AX f1_y_n3_i0_i2 (.D(f1_y_n2[2]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i2.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_13 (.A(n13_adj_8), .B(f1_y_n1[2]), .C(n10_adj_10), 
         .D(n1099[6]), .Z(n16_adj_5)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_13.init = 16'hfefa;
    FD1P3AX f1_y_n3_i0_i1 (.D(f1_y_n2[1]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n3[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n3_i0_i1.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i17 (.D(f1_y_n1[17]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i17.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_14 (.A(n13_adj_171), .B(f1_y_n1[15]), .C(n10_adj_182), 
         .D(n1099[6]), .Z(n16_adj_154)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_14.init = 16'hfefa;
    LUT4 select_214_Select_15_i9_2_lut (.A(f1_y_n4[15]), .B(n1099[9]), .Z(n9_adj_69)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_15_i9_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_15 (.A(n9_adj_69), .B(n16_adj_154), .C(n12_adj_172), 
         .D(n2_adj_77), .Z(n2244)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_15.init = 16'hfffe;
    LUT4 i1_4_lut_adj_16 (.A(x_n2[14]), .B(x_n3[14]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_81)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_16.init = 16'heca0;
    LUT4 i3_4_lut_adj_17 (.A(x_n4[2]), .B(f1_y_n3[2]), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_17.init = 16'heca0;
    LUT4 i4_4_lut_adj_18 (.A(f1_y_n2[14]), .B(audio_in_c_12), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_208)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_18.init = 16'heca0;
    LUT4 select_214_Select_14_i2_2_lut (.A(x_n1[14]), .B(n1099[2]), .Z(n2_adj_56)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_14_i2_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n2_i0_i16 (.D(f1_y_n1[16]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i16.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i15 (.D(f1_y_n1[15]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i15.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_19 (.A(x_n4[14]), .B(f1_y_n3[14]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_31)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_19.init = 16'heca0;
    LUT4 select_214_Select_2_i2_2_lut (.A(x_n1[2]), .B(n1099[2]), .Z(n2_adj_174)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_2_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_20 (.A(f1_y_n2[2]), .B(audio_in_c_0), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_8)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_20.init = 16'heca0;
    FD1P3AX f1_y_n2_i0_i14 (.D(f1_y_n1[14]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i14.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i13 (.D(f1_y_n1[13]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i13.GSR = "ENABLED";
    LUT4 shift_left_4_i49_3_lut_4_lut (.A(n2358), .B(scale_c_1), .C(scale_c_2), 
         .D(n31), .Z(n42[5])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam shift_left_4_i49_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7_4_lut_adj_21 (.A(n13_adj_14), .B(f1_y_n1[13]), .C(n10_adj_20), 
         .D(n1099[6]), .Z(n16_adj_9)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_21.init = 16'hfefa;
    LUT4 i8_4_lut_adj_22 (.A(n9_adj_115), .B(n16_adj_177), .C(n12_adj_188), 
         .D(n2_adj_114), .Z(n2226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_22.init = 16'hfffe;
    LUT4 i1_4_lut_adj_23 (.A(x_n2[2]), .B(x_n3[2]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_10)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_23.init = 16'heca0;
    LUT4 select_214_Select_11_i9_2_lut (.A(f1_y_n4[11]), .B(n1099[9]), .Z(n9_adj_115)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_11_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_24 (.A(n13_adj_187), .B(f1_y_n1[11]), .C(n10_adj_190), 
         .D(n1099[6]), .Z(n16_adj_177)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_24.init = 16'hfefa;
    FD1P3AX f1_y_n2_i0_i12 (.D(f1_y_n1[12]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i12.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i11 (.D(f1_y_n1[11]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i11.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_25 (.A(n9_adj_168), .B(n16_adj_11), .C(n12_adj_19), 
         .D(n2_adj_167), .Z(n2217)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_25.init = 16'hfffe;
    LUT4 i3_4_lut_adj_26 (.A(x_n4[11]), .B(f1_y_n3[11]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_188)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_26.init = 16'heca0;
    LUT4 select_214_Select_11_i2_2_lut (.A(x_n1[11]), .B(n1099[2]), .Z(n2_adj_114)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_11_i2_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n2_i0_i10 (.D(f1_y_n1[10]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i10.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i9 (.D(f1_y_n1[9]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i9.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_27 (.A(f1_y_n2[11]), .B(audio_in_c_9), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_187)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_27.init = 16'heca0;
    LUT4 i1_4_lut_adj_28 (.A(x_n2[11]), .B(x_n3[11]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_190)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_28.init = 16'heca0;
    LUT4 i8_4_lut_adj_29 (.A(n9_adj_109), .B(n16_adj_194), .C(n12_adj_205), 
         .D(n2_adj_108), .Z(n2227)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_29.init = 16'hfffe;
    LUT4 select_214_Select_12_i9_2_lut (.A(f1_y_n4[12]), .B(n1099[9]), .Z(n9_adj_109)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_12_i9_2_lut.init = 16'h8888;
    LUT4 select_214_Select_3_i9_2_lut (.A(f1_y_n4[3]), .B(n1099[9]), .Z(n9_adj_168)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_3_i9_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_30 (.A(x_n4[13]), .B(f1_y_n3[13]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_15)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_30.init = 16'heca0;
    LUT4 i7_4_lut_adj_31 (.A(n13_adj_202), .B(f1_y_n1[12]), .C(n10), .D(n1099[6]), 
         .Z(n16_adj_194)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_31.init = 16'hfefa;
    FD1P3AX f1_y_n2_i0_i8 (.D(f1_y_n1[8]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i8.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i7 (.D(f1_y_n1[7]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i7.GSR = "ENABLED";
    LUT4 select_214_Select_13_i2_2_lut (.A(x_n1[13]), .B(n1099[2]), .Z(n2_adj_100)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_13_i2_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_32 (.A(n13_adj_16), .B(f1_y_n1[3]), .C(n10_adj_22), 
         .D(n1099[6]), .Z(n16_adj_11)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_32.init = 16'hfefa;
    FD1P3AX f1_y_n2_i0_i6 (.D(f1_y_n1[6]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i6.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i5 (.D(f1_y_n1[5]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i5.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_33 (.A(x_n4[12]), .B(f1_y_n3[12]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_205)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_33.init = 16'heca0;
    LUT4 i4_4_lut_adj_34 (.A(f1_y_n2[13]), .B(audio_in_c_11), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_14)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_34.init = 16'heca0;
    LUT4 select_214_Select_12_i2_2_lut (.A(x_n1[12]), .B(n1099[2]), .Z(n2_adj_108)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_12_i2_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_35 (.A(x_n2[13]), .B(x_n3[13]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_20)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_35.init = 16'heca0;
    LUT4 i3_4_lut_adj_36 (.A(x_n4[3]), .B(f1_y_n3[3]), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_19)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_36.init = 16'heca0;
    LUT4 i4_4_lut_adj_37 (.A(f1_y_n2[12]), .B(audio_in_c_10), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_202)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_37.init = 16'heca0;
    LUT4 i8_4_lut_adj_38 (.A(n9_adj_55), .B(n16_adj_206), .C(n12_adj_31), 
         .D(n2_adj_56), .Z(n2245)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_38.init = 16'hfffe;
    FD1P3AX f1_y_n2_i0_i4 (.D(f1_y_n1[4]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i4.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i3 (.D(f1_y_n1[3]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_39 (.A(x_n2[12]), .B(x_n3[12]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_39.init = 16'heca0;
    LUT4 select_214_Select_3_i2_2_lut (.A(x_n1[3]), .B(n1099[2]), .Z(n2_adj_167)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_3_i2_2_lut.init = 16'h8888;
    FD1P3AX f1_y_n2_i0_i2 (.D(f1_y_n1[2]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i2.GSR = "ENABLED";
    FD1P3AX f1_y_n2_i0_i1 (.D(f1_y_n1[1]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n2[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n2_i0_i1.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_40 (.A(f1_y_n2[3]), .B(audio_in_c_1), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_16)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_40.init = 16'heca0;
    LUT4 select_214_Select_14_i9_2_lut (.A(f1_y_n4[14]), .B(n1099[9]), .Z(n9_adj_55)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_14_i9_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_41 (.A(x_n4[9]), .B(f1_y_n3[9]), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_141)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_41.init = 16'heca0;
    LUT4 select_214_Select_9_i2_2_lut (.A(x_n1[9]), .B(n1099[2]), .Z(n2_adj_132)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_9_i2_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_42 (.A(x_n2[3]), .B(x_n3[3]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_22)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_42.init = 16'heca0;
    LUT4 i4_4_lut_adj_43 (.A(f1_y_n2[9]), .B(audio_in_c_7), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_136)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_43.init = 16'heca0;
    LUT4 i1_4_lut_adj_44 (.A(x_n2[9]), .B(x_n3[9]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_146)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_44.init = 16'heca0;
    FD1P3AX f1_coeff_i0_i17 (.D(n2214), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i17.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_45 (.A(n9_adj_162), .B(n16_adj_26), .C(n12_adj_41), 
         .D(n2_adj_161), .Z(n2218)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_45.init = 16'hfffe;
    LUT4 i8_4_lut_adj_46 (.A(n9_adj_127), .B(n16_adj_147), .C(n12_adj_158), 
         .D(n2_adj_126), .Z(n2224)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_46.init = 16'hfffe;
    LUT4 select_214_Select_10_i9_2_lut (.A(f1_y_n4[10]), .B(n1099[9]), .Z(n9_adj_127)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_10_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_47 (.A(n13_adj_157), .B(f1_y_n1[10]), .C(n10_adj_160), 
         .D(n1099[6]), .Z(n16_adj_147)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_47.init = 16'hfefa;
    LUT4 i3_4_lut_adj_48 (.A(x_n4[10]), .B(f1_y_n3[10]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_158)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_48.init = 16'heca0;
    LUT4 select_214_Select_4_i9_2_lut (.A(f1_y_n4[4]), .B(n1099[9]), .Z(n9_adj_162)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_4_i9_2_lut.init = 16'h8888;
    LUT4 select_214_Select_10_i2_2_lut (.A(x_n1[10]), .B(n1099[2]), .Z(n2_adj_126)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_10_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_49 (.A(f1_y_n2[10]), .B(audio_in_c_8), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_157)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_49.init = 16'heca0;
    LUT4 i7_4_lut_adj_50 (.A(n13), .B(a2_c_0), .C(n10_adj_4), .D(n1099[6]), 
         .Z(n16)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_50.init = 16'hfefa;
    LUT4 i3_4_lut_adj_51 (.A(b5_c_0), .B(a4_c_0), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_3)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_51.init = 16'heca0;
    LUT4 select_215_Select_0_i2_2_lut (.A(b2_c_0), .B(n1099[2]), .Z(n2_adj_180)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_0_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_52 (.A(a3_c_0), .B(b1_c_0), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_52.init = 16'heca0;
    LUT4 i1_4_lut_adj_53 (.A(b3_c_0), .B(b4_c_0), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_53.init = 16'heca0;
    LUT4 i173_2_lut (.A(n1099[1]), .B(reset_c), .Z(n1959)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(57[7] 195[5])
    defparam i173_2_lut.init = 16'h2222;
    LUT4 i3_4_lut_adj_54 (.A(f1_y_n1[0]), .B(n6), .C(n7_adj_207), .D(n1099[6]), 
         .Z(n2213)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_54.init = 16'hfefc;
    LUT4 i2_4_lut_adj_55 (.A(f1_y_n4[0]), .B(f1_y_n3[0]), .C(n1099[9]), 
         .D(n1099[8]), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i2_4_lut_adj_55.init = 16'heca0;
    LUT4 i7_4_lut_adj_56 (.A(n13_adj_35), .B(f1_y_n1[4]), .C(n10_adj_45), 
         .D(n1099[6]), .Z(n16_adj_26)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_56.init = 16'hfefa;
    LUT4 select_214_Select_0_i7_2_lut (.A(f1_y_n2[0]), .B(n1099[7]), .Z(n7_adj_207)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_0_i7_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_57 (.A(n9_adj_185), .B(n16_adj_129), .C(n12_adj_145), 
         .D(n2_adj_184), .Z(n2214)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_57.init = 16'hfffe;
    LUT4 i3_4_lut_adj_58 (.A(x_n4[4]), .B(f1_y_n3[4]), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_41)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_58.init = 16'heca0;
    LUT4 select_214_Select_4_i2_2_lut (.A(x_n1[4]), .B(n1099[2]), .Z(n2_adj_161)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_4_i2_2_lut.init = 16'h8888;
    LUT4 select_215_Select_17_i9_2_lut (.A(a5_c_17), .B(n1099[9]), .Z(n9_adj_185)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_17_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_59 (.A(n13_adj_144), .B(a2_c_17), .C(n10_adj_153), 
         .D(n1099[6]), .Z(n16_adj_129)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_59.init = 16'hfefa;
    LUT4 i3_4_lut_adj_60 (.A(b5_c_17), .B(a4_c_17), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_145)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_60.init = 16'heca0;
    LUT4 i4_4_lut_adj_61 (.A(f1_y_n2[4]), .B(audio_in_c_2), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_35)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_61.init = 16'heca0;
    LUT4 select_215_Select_17_i2_2_lut (.A(b2_c_17), .B(n1099[2]), .Z(n2_adj_184)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_17_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_62 (.A(a3_c_17), .B(b1_c_17), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_144)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_62.init = 16'heca0;
    LUT4 i1_4_lut_adj_63 (.A(x_n2[4]), .B(x_n3[4]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_45)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_63.init = 16'heca0;
    LUT4 i1_4_lut_adj_64 (.A(b3_c_17), .B(b4_c_17), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_153)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_64.init = 16'heca0;
    LUT4 i8_4_lut_adj_65 (.A(n9_adj_192), .B(n16_adj_183), .C(n12_adj_198), 
         .D(n2_adj_191), .Z(n2210)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_65.init = 16'hfffe;
    LUT4 select_215_Select_16_i9_2_lut (.A(a5_c_16), .B(n1099[9]), .Z(n9_adj_192)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_16_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_66 (.A(n13_adj_196), .B(a2_c_16), .C(n10_adj_201), 
         .D(n1099[6]), .Z(n16_adj_183)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_66.init = 16'hfefa;
    LUT4 i8_4_lut_adj_67 (.A(n9_adj_156), .B(n16_adj_46), .C(n12_adj_61), 
         .D(n2_adj_155), .Z(n2219)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_67.init = 16'hfffe;
    LUT4 i3_4_lut_adj_68 (.A(b5_c_16), .B(a4_c_16), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_198)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_68.init = 16'heca0;
    LUT4 select_215_Select_16_i2_2_lut (.A(b2_c_16), .B(n1099[2]), .Z(n2_adj_191)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_16_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_69 (.A(a3_c_16), .B(b1_c_16), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_196)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_69.init = 16'heca0;
    LUT4 i1_4_lut_adj_70 (.A(b3_c_16), .B(b4_c_16), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_201)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_70.init = 16'heca0;
    LUT4 i8_4_lut_adj_71 (.A(n9_adj_120), .B(n16_adj_164), .C(n12_adj_173), 
         .D(n2_adj_119), .Z(n2225)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_71.init = 16'hfffe;
    LUT4 select_215_Select_15_i9_2_lut (.A(a5_c_15), .B(n1099[9]), .Z(n9_adj_120)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_15_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_72 (.A(n13_adj_166), .B(a2_c_15), .C(n10_adj_176), 
         .D(n1099[6]), .Z(n16_adj_164)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_72.init = 16'hfefa;
    LUT4 i3_4_lut_adj_73 (.A(b5_c_15), .B(a4_c_15), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_173)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_73.init = 16'heca0;
    LUT4 select_215_Select_15_i2_2_lut (.A(b2_c_15), .B(n1099[2]), .Z(n2_adj_119)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_15_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_74 (.A(a3_c_15), .B(b1_c_15), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_166)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_74.init = 16'heca0;
    LUT4 select_214_Select_5_i9_2_lut (.A(f1_y_n4[5]), .B(n1099[9]), .Z(n9_adj_156)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_5_i9_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_75 (.A(b3_c_15), .B(b4_c_15), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_176)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_75.init = 16'heca0;
    LUT4 i8_4_lut_adj_76 (.A(n9_adj_200), .B(n16_adj_95), .C(n12_adj_106), 
         .D(n2_adj_199), .Z(n2212)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_76.init = 16'hfffe;
    LUT4 i7_4_lut_adj_77 (.A(n13_adj_59), .B(f1_y_n1[5]), .C(n10_adj_64), 
         .D(n1099[6]), .Z(n16_adj_46)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_77.init = 16'hfefa;
    LUT4 i4_4_lut_adj_78 (.A(a3_c_14), .B(b1_c_14), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_105)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_78.init = 16'heca0;
    LUT4 i1_4_lut_adj_79 (.A(b3_c_14), .B(b4_c_14), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_107)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_79.init = 16'heca0;
    LUT4 i8_4_lut_adj_80 (.A(n9_adj_65), .B(n16_adj_117), .C(n12_adj_125), 
         .D(n2_adj_66), .Z(n2243)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_80.init = 16'hfffe;
    LUT4 i3_4_lut_adj_81 (.A(x_n4[5]), .B(f1_y_n3[5]), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_61)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_81.init = 16'heca0;
    LUT4 select_215_Select_13_i9_2_lut (.A(a5_c_13), .B(n1099[9]), .Z(n9_adj_65)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_13_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_82 (.A(n13_adj_118), .B(a2_c_13), .C(n10_adj_128), 
         .D(n1099[6]), .Z(n16_adj_117)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_82.init = 16'hfefa;
    LUT4 select_214_Select_5_i2_2_lut (.A(x_n1[5]), .B(n1099[2]), .Z(n2_adj_155)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_5_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_83 (.A(f1_y_n2[5]), .B(audio_in_c_3), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_59)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_83.init = 16'heca0;
    LUT4 i3_4_lut_adj_84 (.A(b5_c_13), .B(a4_c_13), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_125)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_84.init = 16'heca0;
    LUT4 select_215_Select_13_i2_2_lut (.A(b2_c_13), .B(n1099[2]), .Z(n2_adj_66)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_13_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_85 (.A(a3_c_13), .B(b1_c_13), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_118)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_85.init = 16'heca0;
    LUT4 i1_4_lut_adj_86 (.A(x_n2[5]), .B(x_n3[5]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_64)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_86.init = 16'heca0;
    LUT4 i1_4_lut_adj_87 (.A(b3_c_13), .B(b4_c_13), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_128)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_87.init = 16'heca0;
    LUT4 i8_4_lut_adj_88 (.A(n9_adj_49), .B(n16_adj_80), .C(n12_adj_86), 
         .D(n2_adj_51), .Z(n2242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_88.init = 16'hfffe;
    LUT4 select_215_Select_12_i9_2_lut (.A(a5_c_12), .B(n1099[9]), .Z(n9_adj_49)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_12_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_89 (.A(n13_adj_85), .B(a2_c_12), .C(n10_adj_94), 
         .D(n1099[6]), .Z(n16_adj_80)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_89.init = 16'hfefa;
    LUT4 i3_4_lut_adj_90 (.A(b5_c_12), .B(a4_c_12), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_86)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_90.init = 16'heca0;
    LUT4 select_215_Select_12_i2_2_lut (.A(b2_c_12), .B(n1099[2]), .Z(n2_adj_51)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_12_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_91 (.A(a3_c_12), .B(b1_c_12), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_85)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_91.init = 16'heca0;
    OFS1P3DX audio_out_i0_i15 (.D(f1_y_n1[16]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_92 (.A(b3_c_12), .B(b4_c_12), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_94)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_92.init = 16'heca0;
    LUT4 i8_4_lut_adj_93 (.A(n9_adj_47), .B(n16_adj_53), .C(n12_adj_58), 
         .D(n2_adj_48), .Z(n2241)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_93.init = 16'hfffe;
    LUT4 select_215_Select_11_i9_2_lut (.A(a5_c_11), .B(n1099[9]), .Z(n9_adj_47)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_11_i9_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_94 (.A(n9_adj_151), .B(n16_adj_78), .C(n12_adj_88), 
         .D(n2_adj_150), .Z(n2220)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_94.init = 16'hfffe;
    LUT4 i7_4_lut_adj_95 (.A(n13_adj_57), .B(a2_c_11), .C(n10_adj_67), 
         .D(n1099[6]), .Z(n16_adj_53)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_95.init = 16'hfefa;
    LUT4 i3_4_lut_adj_96 (.A(b5_c_11), .B(a4_c_11), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_58)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_96.init = 16'heca0;
    OFS1P3DX audio_out_i0_i14 (.D(f1_y_n1[15]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i14.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i13 (.D(f1_y_n1[14]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i13.GSR = "ENABLED";
    LUT4 select_215_Select_11_i2_2_lut (.A(b2_c_11), .B(n1099[2]), .Z(n2_adj_48)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_11_i2_2_lut.init = 16'h8888;
    LUT4 select_214_Select_6_i9_2_lut (.A(f1_y_n4[6]), .B(n1099[9]), .Z(n9_adj_151)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_6_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_97 (.A(n13_adj_87), .B(f1_y_n1[6]), .C(n10_adj_92), 
         .D(n1099[6]), .Z(n16_adj_78)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_97.init = 16'hfefa;
    OFS1P3DX audio_out_i0_i12 (.D(f1_y_n1[13]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i12.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i11 (.D(f1_y_n1[12]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i11.GSR = "ENABLED";
    OB audio_out_pad_13 (.I(audio_out_c_13), .O(audio_out[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_14 (.I(audio_out_c_14), .O(audio_out[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_15 (.I(audio_out_c_15), .O(audio_out[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    LUT4 i4_4_lut_adj_98 (.A(a3_c_11), .B(b1_c_11), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_57)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_98.init = 16'heca0;
    LUT4 i1_4_lut_adj_99 (.A(b3_c_11), .B(b4_c_11), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_67)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_99.init = 16'heca0;
    LUT4 i8_4_lut_adj_100 (.A(n9_adj_42), .B(n16_adj_34), .C(n12_adj_40), 
         .D(n2_adj_43), .Z(n2240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_100.init = 16'hfffe;
    LUT4 i3_4_lut_adj_101 (.A(x_n4[6]), .B(f1_y_n3[6]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_88)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_101.init = 16'heca0;
    LUT4 select_215_Select_10_i9_2_lut (.A(a5_c_10), .B(n1099[9]), .Z(n9_adj_42)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_10_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_102 (.A(n13_adj_39), .B(a2_c_10), .C(n10_adj_52), 
         .D(n1099[6]), .Z(n16_adj_34)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_102.init = 16'hfefa;
    OFS1P3DX audio_out_i0_i10 (.D(f1_y_n1[11]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i10.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i9 (.D(f1_y_n1[10]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i9.GSR = "ENABLED";
    LUT4 select_214_Select_6_i2_2_lut (.A(x_n1[6]), .B(n1099[2]), .Z(n2_adj_150)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_6_i2_2_lut.init = 16'h8888;
    OFS1P3DX audio_out_i0_i8 (.D(f1_y_n1[9]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i8.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i7 (.D(f1_y_n1[8]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i7.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_103 (.A(b5_c_10), .B(a4_c_10), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_40)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_103.init = 16'heca0;
    LUT4 select_215_Select_10_i2_2_lut (.A(b2_c_10), .B(n1099[2]), .Z(n2_adj_43)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_10_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_104 (.A(a3_c_10), .B(b1_c_10), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_39)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_104.init = 16'heca0;
    LUT4 i4_4_lut_adj_105 (.A(f1_y_n2[6]), .B(audio_in_c_4), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_87)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_105.init = 16'heca0;
    LUT4 i1_4_lut_adj_106 (.A(b3_c_10), .B(b4_c_10), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_52)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_106.init = 16'heca0;
    LUT4 i8_4_lut_adj_107 (.A(n9_adj_36), .B(n16_adj_204), .C(n12_adj_27), 
         .D(n2_adj_37), .Z(n2239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_107.init = 16'hfffe;
    OFS1P3DX audio_out_i0_i6 (.D(f1_y_n1[7]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i6.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i5 (.D(f1_y_n1[6]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i5.GSR = "ENABLED";
    LUT4 select_215_Select_9_i9_2_lut (.A(a5_c_9), .B(n1099[9]), .Z(n9_adj_36)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_9_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_108 (.A(n13_adj_25), .B(a2_c_9), .C(n10_adj_32), 
         .D(n1099[6]), .Z(n16_adj_204)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_108.init = 16'hfefa;
    LUT4 i3_4_lut_adj_109 (.A(b5_c_9), .B(a4_c_9), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_27)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_109.init = 16'heca0;
    LUT4 select_215_Select_9_i2_2_lut (.A(b2_c_9), .B(n1099[2]), .Z(n2_adj_37)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_9_i2_2_lut.init = 16'h8888;
    OFS1P3DX audio_out_i0_i4 (.D(f1_y_n1[5]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i4.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i3 (.D(f1_y_n1[4]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i3.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_110 (.A(a3_c_9), .B(b1_c_9), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_25)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_110.init = 16'heca0;
    LUT4 i1_4_lut_adj_111 (.A(b3_c_9), .B(b4_c_9), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_32)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_111.init = 16'heca0;
    LUT4 i8_4_lut_adj_112 (.A(n9_adj_29), .B(n16_adj_189), .C(n12_adj_195), 
         .D(n2_adj_30), .Z(n2238)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_112.init = 16'hfffe;
    LUT4 i2_4_lut_adj_113 (.A(reset_c), .B(last_clk), .C(n1099[15]), .D(lr_clk_c), 
         .Z(n2209)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !((D)+!C)))) */ ;
    defparam i2_4_lut_adj_113.init = 16'h4010;
    LUT4 select_215_Select_8_i9_2_lut (.A(a5_c_8), .B(n1099[9]), .Z(n9_adj_29)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_8_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_114 (.A(n13_adj_193), .B(a2_c_8), .C(n10_adj_203), 
         .D(n1099[6]), .Z(n16_adj_189)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_114.init = 16'hfefa;
    OFS1P3DX audio_out_i0_i2 (.D(f1_y_n1[3]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i2.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i1 (.D(f1_y_n1[2]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_115 (.A(b5_c_8), .B(a4_c_8), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_195)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_115.init = 16'heca0;
    LUT4 i1_4_lut_adj_116 (.A(x_n2[10]), .B(x_n3[10]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_160)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_116.init = 16'heca0;
    LUT4 select_215_Select_8_i2_2_lut (.A(b2_c_8), .B(n1099[2]), .Z(n2_adj_30)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_8_i2_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_117 (.A(x_n2[6]), .B(x_n3[6]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_92)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_117.init = 16'heca0;
    LUT4 i4_4_lut_adj_118 (.A(a3_c_8), .B(b1_c_8), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_193)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_118.init = 16'heca0;
    LUT4 i1_4_lut_adj_119 (.A(b3_c_8), .B(b4_c_8), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_203)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_119.init = 16'heca0;
    LUT4 i8_4_lut_adj_120 (.A(n9_adj_23), .B(n16_adj_170), .C(n12_adj_179), 
         .D(n2_adj_24), .Z(n2237)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_120.init = 16'hfffe;
    LUT4 i8_4_lut_adj_121 (.A(n9_adj_143), .B(n16_adj_98), .C(n12_adj_110), 
         .D(n2_adj_142), .Z(n2221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_121.init = 16'hfffe;
    LUT4 select_215_Select_7_i9_2_lut (.A(a5_c_7), .B(n1099[9]), .Z(n9_adj_23)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_7_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_122 (.A(n13_adj_178), .B(a2_c_7), .C(n10_adj_186), 
         .D(n1099[6]), .Z(n16_adj_170)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_122.init = 16'hfefa;
    LUT4 i3_4_lut_adj_123 (.A(b5_c_7), .B(a4_c_7), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_179)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_123.init = 16'heca0;
    LUT4 select_215_Select_7_i2_2_lut (.A(b2_c_7), .B(n1099[2]), .Z(n2_adj_24)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_7_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_124 (.A(a3_c_7), .B(b1_c_7), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_178)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_124.init = 16'heca0;
    LUT4 i1_4_lut_adj_125 (.A(b3_c_7), .B(b4_c_7), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_186)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_125.init = 16'heca0;
    LUT4 i8_4_lut_adj_126 (.A(n9_adj_17), .B(n16_adj_159), .C(n12_adj_165), 
         .D(n2_adj_18), .Z(n2236)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_126.init = 16'hfffe;
    LUT4 select_215_Select_6_i9_2_lut (.A(a5_c_6), .B(n1099[9]), .Z(n9_adj_17)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_6_i9_2_lut.init = 16'h8888;
    LUT4 select_214_Select_7_i9_2_lut (.A(f1_y_n4[7]), .B(n1099[9]), .Z(n9_adj_143)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_7_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_127 (.A(n13_adj_163), .B(a2_c_6), .C(n10_adj_169), 
         .D(n1099[6]), .Z(n16_adj_159)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_127.init = 16'hfefa;
    LUT4 i3_4_lut_adj_128 (.A(b5_c_6), .B(a4_c_6), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_165)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_128.init = 16'heca0;
    LUT4 i7_4_lut_adj_129 (.A(n13_adj_122), .B(f1_y_n1[8]), .C(n10_adj_130), 
         .D(n1099[6]), .Z(n16_adj_112)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_129.init = 16'hfefa;
    LUT4 i7_4_lut_adj_130 (.A(n13_adj_102), .B(f1_y_n1[7]), .C(n10_adj_111), 
         .D(n1099[6]), .Z(n16_adj_98)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_130.init = 16'hfefa;
    LUT4 select_215_Select_6_i2_2_lut (.A(b2_c_6), .B(n1099[2]), .Z(n2_adj_18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_6_i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_131 (.A(x_n4[8]), .B(f1_y_n3[8]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_123)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_131.init = 16'heca0;
    LUT4 i4_4_lut_adj_132 (.A(a3_c_6), .B(b1_c_6), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_163)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_132.init = 16'heca0;
    LUT4 i1_4_lut_adj_133 (.A(b3_c_6), .B(b4_c_6), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_169)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_133.init = 16'heca0;
    LUT4 i8_4_lut_adj_134 (.A(n9_adj_12), .B(n16_adj_140), .C(n12_adj_149), 
         .D(n2_adj_13), .Z(n2235)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_134.init = 16'hfffe;
    LUT4 select_215_Select_5_i9_2_lut (.A(a5_c_5), .B(n1099[9]), .Z(n9_adj_12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_5_i9_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_135 (.A(x_n4[7]), .B(f1_y_n3[7]), .C(n1099[5]), 
         .D(n1099[8]), .Z(n12_adj_110)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_135.init = 16'heca0;
    LUT4 i7_4_lut_adj_136 (.A(n13_adj_148), .B(a2_c_5), .C(n10_adj_152), 
         .D(n1099[6]), .Z(n16_adj_140)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_136.init = 16'hfefa;
    LUT4 i3_4_lut_adj_137 (.A(b5_c_5), .B(a4_c_5), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_149)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_137.init = 16'heca0;
    LUT4 select_214_Select_8_i2_2_lut (.A(x_n1[8]), .B(n1099[2]), .Z(n2_adj_138)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_8_i2_2_lut.init = 16'h8888;
    LUT4 select_214_Select_7_i2_2_lut (.A(x_n1[7]), .B(n1099[2]), .Z(n2_adj_142)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_7_i2_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_138 (.A(n9_adj_101), .B(n16_adj_9), .C(n12_adj_15), 
         .D(n2_adj_100), .Z(n2228)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_138.init = 16'hfffe;
    LUT4 i4_4_lut_adj_139 (.A(f1_y_n2[8]), .B(audio_in_c_6), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_122)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_139.init = 16'heca0;
    LUT4 select_215_Select_5_i2_2_lut (.A(b2_c_5), .B(n1099[2]), .Z(n2_adj_13)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_5_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_140 (.A(a3_c_5), .B(b1_c_5), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_148)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_140.init = 16'heca0;
    LUT4 i1_4_lut_adj_141 (.A(b3_c_5), .B(b4_c_5), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_152)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_141.init = 16'heca0;
    LUT4 i4_4_lut_adj_142 (.A(f1_y_n2[7]), .B(audio_in_c_5), .C(n1099[7]), 
         .D(n1099[1]), .Z(n13_adj_102)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_142.init = 16'heca0;
    LUT4 i8_4_lut_adj_143 (.A(n9_adj_6), .B(n16_adj_124), .C(n12_adj_135), 
         .D(n2_adj_7), .Z(n2234)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_143.init = 16'hfffe;
    LUT4 select_215_Select_4_i9_2_lut (.A(a5_c_4), .B(n1099[9]), .Z(n9_adj_6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_4_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_144 (.A(n13_adj_131), .B(a2_c_4), .C(n10_adj_137), 
         .D(n1099[6]), .Z(n16_adj_124)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_144.init = 16'hfefa;
    LUT4 i3_4_lut_adj_145 (.A(b5_c_4), .B(a4_c_4), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_135)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_145.init = 16'heca0;
    LUT4 select_215_Select_4_i2_2_lut (.A(b2_c_4), .B(n1099[2]), .Z(n2_adj_7)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_4_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_146 (.A(a3_c_4), .B(b1_c_4), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_131)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_146.init = 16'heca0;
    LUT4 i1_4_lut_adj_147 (.A(b3_c_4), .B(b4_c_4), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_137)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_147.init = 16'heca0;
    LUT4 i8_4_lut_adj_148 (.A(n9), .B(n16_adj_104), .C(n12_adj_116), .D(n2_adj_2), 
         .Z(n2233)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_148.init = 16'hfffe;
    LUT4 select_215_Select_3_i9_2_lut (.A(a5_c_3), .B(n1099[9]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_3_i9_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_149 (.A(x_n2[7]), .B(x_n3[7]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_111)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_149.init = 16'heca0;
    LUT4 i7_4_lut_adj_150 (.A(n13_adj_113), .B(a2_c_3), .C(n10_adj_121), 
         .D(n1099[6]), .Z(n16_adj_104)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_150.init = 16'hfefa;
    LUT4 i3_4_lut_adj_151 (.A(b5_c_3), .B(a4_c_3), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_116)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_151.init = 16'heca0;
    LUT4 select_215_Select_3_i2_2_lut (.A(b2_c_3), .B(n1099[2]), .Z(n2_adj_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_3_i2_2_lut.init = 16'h8888;
    LUT4 i8_4_lut_adj_152 (.A(n9_adj_139), .B(n16_adj_112), .C(n12_adj_123), 
         .D(n2_adj_138), .Z(n2222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_152.init = 16'hfffe;
    LUT4 select_214_Select_8_i9_2_lut (.A(f1_y_n4[8]), .B(n1099[9]), .Z(n9_adj_139)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_8_i9_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_153 (.A(a3_c_3), .B(b1_c_3), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_113)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_153.init = 16'heca0;
    LUT4 i1_4_lut_adj_154 (.A(b3_c_3), .B(b4_c_3), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_121)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_154.init = 16'heca0;
    LUT4 i8_4_lut_adj_155 (.A(n9_adj_60), .B(n16_adj_89), .C(n12_adj_99), 
         .D(n2), .Z(n2232)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_155.init = 16'hfffe;
    LUT4 select_215_Select_2_i9_2_lut (.A(a5_c_2), .B(n1099[9]), .Z(n9_adj_60)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_2_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_156 (.A(n13_adj_93), .B(a2_c_2), .C(n10_adj_103), 
         .D(n1099[6]), .Z(n16_adj_89)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_156.init = 16'hfefa;
    LUT4 i3_4_lut_adj_157 (.A(b5_c_2), .B(a4_c_2), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_99)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_157.init = 16'heca0;
    LUT4 select_215_Select_2_i2_2_lut (.A(b2_c_2), .B(n1099[2]), .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_2_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_158 (.A(a3_c_2), .B(b1_c_2), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_93)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_158.init = 16'heca0;
    LUT4 i1_4_lut_adj_159 (.A(b3_c_2), .B(b4_c_2), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_103)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_159.init = 16'heca0;
    LUT4 i8_4_lut_adj_160 (.A(n9_adj_84), .B(n16_adj_63), .C(n12_adj_82), 
         .D(n2_adj_79), .Z(n2231)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_160.init = 16'hfffe;
    LUT4 select_215_Select_1_i9_2_lut (.A(a5_c_1), .B(n1099[9]), .Z(n9_adj_84)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_1_i9_2_lut.init = 16'h8888;
    LUT4 i7_4_lut_adj_161 (.A(n13_adj_68), .B(a2_c_1), .C(n10_adj_83), 
         .D(n1099[6]), .Z(n16_adj_63)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_161.init = 16'hfefa;
    LUT4 i3_4_lut_adj_162 (.A(b5_c_1), .B(a4_c_1), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_82)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_162.init = 16'heca0;
    LUT4 select_215_Select_1_i2_2_lut (.A(b2_c_1), .B(n1099[2]), .Z(n2_adj_79)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_1_i2_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_163 (.A(a3_c_1), .B(b1_c_1), .C(n1099[7]), .D(n1099[1]), 
         .Z(n13_adj_68)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i4_4_lut_adj_163.init = 16'heca0;
    LUT4 i1_4_lut_adj_164 (.A(b3_c_1), .B(b4_c_1), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_83)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_164.init = 16'heca0;
    LUT4 shift_left_4_i39_3_lut (.A(n21), .B(n25), .C(scale_c_2), .Z(n42[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i39_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i21_3_lut (.A(n3), .B(n5), .C(scale_c_1), .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i21_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i3_3_lut (.A(f1_mac_new[15]), .B(f1_mac_new[14]), 
         .C(scale_c_0), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i3_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i5_3_lut (.A(f1_mac_new[13]), .B(f1_mac_new[12]), 
         .C(scale_c_0), .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i5_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i25_3_lut (.A(n7), .B(n9_adj_72), .C(scale_c_1), 
         .Z(n25)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i25_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i7_3_lut (.A(f1_mac_new[11]), .B(f1_mac_new[10]), 
         .C(scale_c_0), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i7_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i9_3_lut (.A(f1_mac_new[9]), .B(f1_mac_new[8]), .C(scale_c_0), 
         .Z(n9_adj_72)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i9_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_165 (.A(x_n2[8]), .B(x_n3[8]), .C(n1099[3]), .D(n1099[4]), 
         .Z(n10_adj_130)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i1_4_lut_adj_165.init = 16'heca0;
    LUT4 shift_left_4_i40_3_lut (.A(n22), .B(n26), .C(scale_c_2), .Z(n42[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i40_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i22_3_lut (.A(n4), .B(n6_adj_71), .C(scale_c_1), 
         .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i22_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i4_3_lut (.A(f1_mac_new[14]), .B(f1_mac_new[13]), 
         .C(scale_c_0), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i4_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i6_3_lut (.A(f1_mac_new[12]), .B(f1_mac_new[11]), 
         .C(scale_c_0), .Z(n6_adj_71)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i6_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i26_3_lut (.A(n8), .B(n10_adj_73), .C(scale_c_1), 
         .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i26_3_lut.init = 16'hcaca;
    FD1P3AX f1_coeff_i0_i16 (.D(n2210), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i16.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i15 (.D(n2225), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i15.GSR = "ENABLED";
    LUT4 shift_left_4_i8_3_lut (.A(f1_mac_new[10]), .B(f1_mac_new[9]), .C(scale_c_0), 
         .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i8_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i10_3_lut (.A(f1_mac_new[8]), .B(f1_mac_new[7]), .C(scale_c_0), 
         .Z(n10_adj_73)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i10_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i41_3_lut (.A(n23), .B(n27), .C(scale_c_2), .Z(n42[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i41_3_lut.init = 16'hcaca;
    FD1P3AX f1_coeff_i0_i14 (.D(n2212), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i14.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i13 (.D(n2243), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i13.GSR = "ENABLED";
    LUT4 shift_left_4_i23_3_lut (.A(n5), .B(n7), .C(scale_c_1), .Z(n23)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i23_3_lut.init = 16'hcaca;
    FD1P3AX f1_coeff_i0_i12 (.D(n2242), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i12.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i11 (.D(n2241), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i11.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i10 (.D(n2240), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_coeff[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i10.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i9 (.D(n2239), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i9.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_166 (.A(n9_adj_133), .B(n16_adj_134), .C(n12_adj_141), 
         .D(n2_adj_132), .Z(n2223)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_166.init = 16'hfffe;
    LUT4 i2_2_lut_3_lut (.A(n2358), .B(scale_c_1), .C(scale_c_2), .Z(n2250)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_2_lut_4_lut (.A(n2360), .B(scale_c_0), .C(scale_c_1), .D(scale_c_2), 
         .Z(n2252)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam i2_2_lut_4_lut.init = 16'h0002;
    FD1P3AX f1_coeff_i0_i8 (.D(n2238), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i8.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i7 (.D(n2237), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i7.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i6 (.D(n2236), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i6.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i5 (.D(n2235), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i5.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i4 (.D(n2234), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i4.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i3 (.D(n2233), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i3.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i2 (.D(n2232), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i2.GSR = "ENABLED";
    FD1P3AX f1_coeff_i0_i1 (.D(n2231), .SP(n2009), .CK(state_clk_c), .Q(f1_coeff[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_coeff_i0_i1.GSR = "ENABLED";
    LUT4 i163_2_lut (.A(n1099[10]), .B(reset_c), .Z(n1697)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(57[7] 195[5])
    defparam i163_2_lut.init = 16'h2222;
    FD1P3AX f1_y_n1_i0_i17 (.D(n42[17]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i17.GSR = "ENABLED";
    LUT4 i506_2_lut_rep_7 (.A(f1_mac_old[0]), .B(f1_coeff_x_value[0]), .Z(n2360)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i506_2_lut_rep_7.init = 16'h6666;
    LUT4 i441_3_lut_rep_6_4_lut (.A(f1_mac_old[0]), .B(f1_coeff_x_value[0]), 
         .C(scale_c_1), .D(scale_c_0), .Z(n2359)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i441_3_lut_rep_6_4_lut.init = 16'h0006;
    LUT4 shift_left_4_i17_3_lut_rep_5_4_lut (.A(f1_mac_old[0]), .B(f1_coeff_x_value[0]), 
         .C(scale_c_0), .D(f1_mac_new[1]), .Z(n2358)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam shift_left_4_i17_3_lut_rep_5_4_lut.init = 16'h6f60;
    LUT4 shift_left_4_i27_3_lut (.A(n9_adj_72), .B(n11), .C(scale_c_1), 
         .Z(n27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i27_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i11_3_lut (.A(f1_mac_new[7]), .B(f1_mac_new[6]), .C(scale_c_0), 
         .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i11_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n1_i0_i16 (.D(n42[16]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i16.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i15 (.D(n42[15]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i15.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i14 (.D(n42[14]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i14.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i13 (.D(n42[13]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i13.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i12 (.D(n42[12]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i12.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i11 (.D(n42[11]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i11.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i10 (.D(n42[10]), .SP(n1697), .CK(state_clk_c), 
            .Q(f1_y_n1[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i10.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i9 (.D(n42[9]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i9.GSR = "ENABLED";
    LUT4 i642_2_lut_rep_8 (.A(lr_clk_c), .B(last_clk), .Z(n2361)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(183[10] 186[8])
    defparam i642_2_lut_rep_8.init = 16'h7777;
    LUT4 shift_left_4_i42_3_lut (.A(n24), .B(n28), .C(scale_c_2), .Z(n42[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i42_3_lut.init = 16'hcaca;
    FD1P3AX f1_y_n1_i0_i8 (.D(n42[8]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i8.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i7 (.D(n42[7]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i7.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i6 (.D(n42[6]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i6.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i5 (.D(n42[5]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i5.GSR = "ENABLED";
    FD1P3AX f1_y_n1_i0_i4 (.D(n42[4]), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i4.GSR = "ENABLED";
    LUT4 shift_left_4_i24_3_lut (.A(n6_adj_71), .B(n8), .C(scale_c_1), 
         .Z(n24)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i24_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_167 (.A(b5_c_14), .B(a4_c_14), .C(n1099[5]), .D(n1099[8]), 
         .Z(n12_adj_106)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i3_4_lut_adj_167.init = 16'heca0;
    LUT4 i99_2_lut_3_lut (.A(lr_clk_c), .B(last_clk), .C(n1099[15]), .Z(n1134)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(183[10] 186[8])
    defparam i99_2_lut_3_lut.init = 16'h8080;
    FD1P3AX f1_y_n1_i0_i1 (.D(n2250), .SP(n1697), .CK(state_clk_c), .Q(f1_y_n1[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i1.GSR = "ENABLED";
    LUT4 shift_left_4_i28_3_lut (.A(n10_adj_73), .B(n12_adj_74), .C(scale_c_1), 
         .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i28_3_lut.init = 16'hcaca;
    FD1P3AX x_n1__i2 (.D(x_n[3]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i2.GSR = "ENABLED";
    OB audio_out_pad_11 (.I(audio_out_c_11), .O(audio_out[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_10 (.I(audio_out_c_10), .O(audio_out[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_9 (.I(audio_out_c_9), .O(audio_out[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_8 (.I(audio_out_c_8), .O(audio_out[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_7 (.I(audio_out_c_7), .O(audio_out[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_6 (.I(audio_out_c_6), .O(audio_out[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_5 (.I(audio_out_c_5), .O(audio_out[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_4 (.I(audio_out_c_4), .O(audio_out[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_3 (.I(audio_out_c_3), .O(audio_out[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_2 (.I(audio_out_c_2), .O(audio_out[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_1 (.I(audio_out_c_1), .O(audio_out[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    OB audio_out_pad_0 (.I(audio_out_c_0), .O(audio_out[0]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(15[26:35])
    IB audio_in_pad_15 (.I(audio_in[15]), .O(audio_in_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_14 (.I(audio_in[14]), .O(audio_in_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_13 (.I(audio_in[13]), .O(audio_in_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_12 (.I(audio_in[12]), .O(audio_in_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_11 (.I(audio_in[11]), .O(audio_in_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_10 (.I(audio_in[10]), .O(audio_in_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_9 (.I(audio_in[9]), .O(audio_in_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_8 (.I(audio_in[8]), .O(audio_in_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_7 (.I(audio_in[7]), .O(audio_in_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_6 (.I(audio_in[6]), .O(audio_in_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_5 (.I(audio_in[5]), .O(audio_in_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_4 (.I(audio_in[4]), .O(audio_in_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_3 (.I(audio_in[3]), .O(audio_in_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_2 (.I(audio_in[2]), .O(audio_in_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_1 (.I(audio_in[1]), .O(audio_in_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB audio_in_pad_0 (.I(audio_in[0]), .O(audio_in_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(17[26:34])
    IB scale_pad_2 (.I(scale[2]), .O(scale_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(19[18:23])
    IB scale_pad_1 (.I(scale[1]), .O(scale_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(19[18:23])
    IB scale_pad_0 (.I(scale[0]), .O(scale_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(19[18:23])
    IB b1_pad_17 (.I(b1[17]), .O(b1_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_16 (.I(b1[16]), .O(b1_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_15 (.I(b1[15]), .O(b1_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_14 (.I(b1[14]), .O(b1_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_13 (.I(b1[13]), .O(b1_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_12 (.I(b1[12]), .O(b1_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_11 (.I(b1[11]), .O(b1_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_10 (.I(b1[10]), .O(b1_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_9 (.I(b1[9]), .O(b1_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_8 (.I(b1[8]), .O(b1_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_7 (.I(b1[7]), .O(b1_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_6 (.I(b1[6]), .O(b1_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_5 (.I(b1[5]), .O(b1_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_4 (.I(b1[4]), .O(b1_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_3 (.I(b1[3]), .O(b1_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_2 (.I(b1[2]), .O(b1_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_1 (.I(b1[1]), .O(b1_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b1_pad_0 (.I(b1[0]), .O(b1_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[26:28])
    IB b2_pad_17 (.I(b2[17]), .O(b2_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_16 (.I(b2[16]), .O(b2_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_15 (.I(b2[15]), .O(b2_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_14 (.I(b2[14]), .O(b2_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_13 (.I(b2[13]), .O(b2_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_12 (.I(b2[12]), .O(b2_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_11 (.I(b2[11]), .O(b2_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_10 (.I(b2[10]), .O(b2_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_9 (.I(b2[9]), .O(b2_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_8 (.I(b2[8]), .O(b2_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_7 (.I(b2[7]), .O(b2_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_6 (.I(b2[6]), .O(b2_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_5 (.I(b2[5]), .O(b2_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_4 (.I(b2[4]), .O(b2_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_3 (.I(b2[3]), .O(b2_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_2 (.I(b2[2]), .O(b2_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_1 (.I(b2[1]), .O(b2_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b2_pad_0 (.I(b2[0]), .O(b2_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[30:32])
    IB b3_pad_17 (.I(b3[17]), .O(b3_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_16 (.I(b3[16]), .O(b3_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_15 (.I(b3[15]), .O(b3_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_14 (.I(b3[14]), .O(b3_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_13 (.I(b3[13]), .O(b3_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_12 (.I(b3[12]), .O(b3_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_11 (.I(b3[11]), .O(b3_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_10 (.I(b3[10]), .O(b3_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_9 (.I(b3[9]), .O(b3_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_8 (.I(b3[8]), .O(b3_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_7 (.I(b3[7]), .O(b3_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_6 (.I(b3[6]), .O(b3_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_5 (.I(b3[5]), .O(b3_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_4 (.I(b3[4]), .O(b3_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_3 (.I(b3[3]), .O(b3_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_2 (.I(b3[2]), .O(b3_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_1 (.I(b3[1]), .O(b3_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b3_pad_0 (.I(b3[0]), .O(b3_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[34:36])
    IB b4_pad_17 (.I(b4[17]), .O(b4_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_16 (.I(b4[16]), .O(b4_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_15 (.I(b4[15]), .O(b4_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_14 (.I(b4[14]), .O(b4_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_13 (.I(b4[13]), .O(b4_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_12 (.I(b4[12]), .O(b4_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_11 (.I(b4[11]), .O(b4_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_10 (.I(b4[10]), .O(b4_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_9 (.I(b4[9]), .O(b4_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_8 (.I(b4[8]), .O(b4_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_7 (.I(b4[7]), .O(b4_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_6 (.I(b4[6]), .O(b4_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_5 (.I(b4[5]), .O(b4_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_4 (.I(b4[4]), .O(b4_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_3 (.I(b4[3]), .O(b4_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_2 (.I(b4[2]), .O(b4_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_1 (.I(b4[1]), .O(b4_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b4_pad_0 (.I(b4[0]), .O(b4_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[38:40])
    IB b5_pad_17 (.I(b5[17]), .O(b5_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_16 (.I(b5[16]), .O(b5_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_15 (.I(b5[15]), .O(b5_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_14 (.I(b5[14]), .O(b5_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_13 (.I(b5[13]), .O(b5_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_12 (.I(b5[12]), .O(b5_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_11 (.I(b5[11]), .O(b5_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_10 (.I(b5[10]), .O(b5_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_9 (.I(b5[9]), .O(b5_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_8 (.I(b5[8]), .O(b5_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_7 (.I(b5[7]), .O(b5_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_6 (.I(b5[6]), .O(b5_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_5 (.I(b5[5]), .O(b5_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_4 (.I(b5[4]), .O(b5_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_3 (.I(b5[3]), .O(b5_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_2 (.I(b5[2]), .O(b5_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_1 (.I(b5[1]), .O(b5_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB b5_pad_0 (.I(b5[0]), .O(b5_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[42:44])
    IB a2_pad_17 (.I(a2[17]), .O(a2_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_16 (.I(a2[16]), .O(a2_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_15 (.I(a2[15]), .O(a2_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_14 (.I(a2[14]), .O(a2_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_13 (.I(a2[13]), .O(a2_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_12 (.I(a2[12]), .O(a2_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_11 (.I(a2[11]), .O(a2_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_10 (.I(a2[10]), .O(a2_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_9 (.I(a2[9]), .O(a2_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_8 (.I(a2[8]), .O(a2_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_7 (.I(a2[7]), .O(a2_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_6 (.I(a2[6]), .O(a2_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_5 (.I(a2[5]), .O(a2_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_4 (.I(a2[4]), .O(a2_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_3 (.I(a2[3]), .O(a2_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_2 (.I(a2[2]), .O(a2_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_1 (.I(a2[1]), .O(a2_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a2_pad_0 (.I(a2[0]), .O(a2_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[46:48])
    IB a3_pad_17 (.I(a3[17]), .O(a3_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_16 (.I(a3[16]), .O(a3_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_15 (.I(a3[15]), .O(a3_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_14 (.I(a3[14]), .O(a3_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_13 (.I(a3[13]), .O(a3_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_12 (.I(a3[12]), .O(a3_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_11 (.I(a3[11]), .O(a3_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_10 (.I(a3[10]), .O(a3_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_9 (.I(a3[9]), .O(a3_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_8 (.I(a3[8]), .O(a3_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_7 (.I(a3[7]), .O(a3_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_6 (.I(a3[6]), .O(a3_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_5 (.I(a3[5]), .O(a3_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_4 (.I(a3[4]), .O(a3_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_3 (.I(a3[3]), .O(a3_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_2 (.I(a3[2]), .O(a3_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_1 (.I(a3[1]), .O(a3_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a3_pad_0 (.I(a3[0]), .O(a3_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[50:52])
    IB a4_pad_17 (.I(a4[17]), .O(a4_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_16 (.I(a4[16]), .O(a4_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_15 (.I(a4[15]), .O(a4_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_14 (.I(a4[14]), .O(a4_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_13 (.I(a4[13]), .O(a4_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_12 (.I(a4[12]), .O(a4_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_11 (.I(a4[11]), .O(a4_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_10 (.I(a4[10]), .O(a4_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_9 (.I(a4[9]), .O(a4_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_8 (.I(a4[8]), .O(a4_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_7 (.I(a4[7]), .O(a4_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_6 (.I(a4[6]), .O(a4_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_5 (.I(a4[5]), .O(a4_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_4 (.I(a4[4]), .O(a4_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_3 (.I(a4[3]), .O(a4_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_2 (.I(a4[2]), .O(a4_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_1 (.I(a4[1]), .O(a4_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a4_pad_0 (.I(a4[0]), .O(a4_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[54:56])
    IB a5_pad_17 (.I(a5[17]), .O(a5_c_17));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_16 (.I(a5[16]), .O(a5_c_16));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_15 (.I(a5[15]), .O(a5_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_14 (.I(a5[14]), .O(a5_c_14));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_13 (.I(a5[13]), .O(a5_c_13));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_12 (.I(a5[12]), .O(a5_c_12));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_11 (.I(a5[11]), .O(a5_c_11));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_10 (.I(a5[10]), .O(a5_c_10));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_9 (.I(a5[9]), .O(a5_c_9));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_8 (.I(a5[8]), .O(a5_c_8));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_7 (.I(a5[7]), .O(a5_c_7));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_6 (.I(a5[6]), .O(a5_c_6));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_5 (.I(a5[5]), .O(a5_c_5));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_4 (.I(a5[4]), .O(a5_c_4));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_3 (.I(a5[3]), .O(a5_c_3));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_2 (.I(a5[2]), .O(a5_c_2));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_1 (.I(a5[1]), .O(a5_c_1));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB a5_pad_0 (.I(a5[0]), .O(a5_c_0));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(21[58:60])
    IB state_clk_pad (.I(state_clk), .O(state_clk_c));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[12:21])
    IB lr_clk_pad (.I(lr_clk), .O(lr_clk_c));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[23:29])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(22[31:36])
    FD1P3AX x_n1__i3 (.D(x_n[4]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i3.GSR = "ENABLED";
    FD1P3AX x_n1__i4 (.D(x_n[5]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i4.GSR = "ENABLED";
    FD1P3AX x_n1__i5 (.D(x_n[6]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i5.GSR = "ENABLED";
    FD1P3AX x_n1__i6 (.D(x_n[7]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i6.GSR = "ENABLED";
    FD1P3AX x_n1__i7 (.D(x_n[8]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i7.GSR = "ENABLED";
    FD1P3AX x_n1__i8 (.D(x_n[9]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i8.GSR = "ENABLED";
    FD1P3AX x_n1__i9 (.D(x_n[10]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i9.GSR = "ENABLED";
    FD1P3AX x_n1__i10 (.D(x_n[11]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i10.GSR = "ENABLED";
    FD1P3AX x_n1__i11 (.D(x_n[12]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i11.GSR = "ENABLED";
    FD1P3AX x_n1__i12 (.D(x_n[13]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i12.GSR = "ENABLED";
    FD1P3AX x_n1__i13 (.D(x_n[14]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i13.GSR = "ENABLED";
    FD1P3AX x_n1__i14 (.D(x_n[15]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i14.GSR = "ENABLED";
    FD1P3AX x_n1__i15 (.D(x_n[16]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i15.GSR = "ENABLED";
    FD1P3AX x_n1__i16 (.D(x_n[17]), .SP(n1697), .CK(state_clk_c), .Q(x_n1[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n1__i16.GSR = "ENABLED";
    FD1P3AX x_n2__i2 (.D(x_n1[3]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i2.GSR = "ENABLED";
    FD1P3AX x_n2__i3 (.D(x_n1[4]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i3.GSR = "ENABLED";
    FD1P3AX x_n2__i4 (.D(x_n1[5]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i4.GSR = "ENABLED";
    FD1P3AX x_n2__i5 (.D(x_n1[6]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i5.GSR = "ENABLED";
    FD1P3AX x_n2__i6 (.D(x_n1[7]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i6.GSR = "ENABLED";
    FD1P3AX x_n2__i7 (.D(x_n1[8]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i7.GSR = "ENABLED";
    FD1P3AX x_n2__i8 (.D(x_n1[9]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i8.GSR = "ENABLED";
    FD1P3AX x_n2__i9 (.D(x_n1[10]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i9.GSR = "ENABLED";
    FD1P3AX x_n2__i10 (.D(x_n1[11]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i10.GSR = "ENABLED";
    FD1P3AX x_n2__i11 (.D(x_n1[12]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i11.GSR = "ENABLED";
    FD1P3AX x_n2__i12 (.D(x_n1[13]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i12.GSR = "ENABLED";
    FD1P3AX x_n2__i13 (.D(x_n1[14]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i13.GSR = "ENABLED";
    FD1P3AX x_n2__i14 (.D(x_n1[15]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i14.GSR = "ENABLED";
    FD1P3AX x_n2__i15 (.D(x_n1[16]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i15.GSR = "ENABLED";
    FD1P3AX x_n2__i16 (.D(x_n1[17]), .SP(n1697), .CK(state_clk_c), .Q(x_n2[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n2__i16.GSR = "ENABLED";
    FD1P3AX x_n3__i2 (.D(x_n2[3]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i2.GSR = "ENABLED";
    FD1P3AX x_n3__i3 (.D(x_n2[4]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i3.GSR = "ENABLED";
    FD1P3AX x_n3__i4 (.D(x_n2[5]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i4.GSR = "ENABLED";
    FD1P3AX x_n3__i5 (.D(x_n2[6]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i5.GSR = "ENABLED";
    FD1P3AX x_n3__i6 (.D(x_n2[7]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i6.GSR = "ENABLED";
    FD1P3AX x_n3__i7 (.D(x_n2[8]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i7.GSR = "ENABLED";
    FD1P3AX x_n3__i8 (.D(x_n2[9]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i8.GSR = "ENABLED";
    FD1P3AX x_n3__i9 (.D(x_n2[10]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i9.GSR = "ENABLED";
    FD1P3AX x_n3__i10 (.D(x_n2[11]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i10.GSR = "ENABLED";
    FD1P3AX x_n3__i11 (.D(x_n2[12]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i11.GSR = "ENABLED";
    FD1P3AX x_n3__i12 (.D(x_n2[13]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i12.GSR = "ENABLED";
    FD1P3AX x_n3__i13 (.D(x_n2[14]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i13.GSR = "ENABLED";
    FD1P3AX x_n3__i14 (.D(x_n2[15]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i14.GSR = "ENABLED";
    FD1P3AX x_n3__i15 (.D(x_n2[16]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i15.GSR = "ENABLED";
    FD1P3AX x_n3__i16 (.D(x_n2[17]), .SP(n1697), .CK(state_clk_c), .Q(x_n3[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n3__i16.GSR = "ENABLED";
    FD1P3AX x_n4__i2 (.D(x_n3[3]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i2.GSR = "ENABLED";
    FD1P3AX x_n4__i3 (.D(x_n3[4]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i3.GSR = "ENABLED";
    FD1P3AX x_n4__i4 (.D(x_n3[5]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i4.GSR = "ENABLED";
    FD1P3AX x_n4__i5 (.D(x_n3[6]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i5.GSR = "ENABLED";
    FD1P3AX x_n4__i6 (.D(x_n3[7]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i6.GSR = "ENABLED";
    FD1P3AX x_n4__i7 (.D(x_n3[8]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i7.GSR = "ENABLED";
    FD1P3AX x_n4__i8 (.D(x_n3[9]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i8.GSR = "ENABLED";
    FD1P3AX x_n4__i9 (.D(x_n3[10]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i9.GSR = "ENABLED";
    FD1P3AX x_n4__i10 (.D(x_n3[11]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i10.GSR = "ENABLED";
    FD1P3AX x_n4__i11 (.D(x_n3[12]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i11.GSR = "ENABLED";
    FD1P3AX x_n4__i12 (.D(x_n3[13]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i12.GSR = "ENABLED";
    FD1P3AX x_n4__i13 (.D(x_n3[14]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i13.GSR = "ENABLED";
    FD1P3AX x_n4__i14 (.D(x_n3[15]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i14.GSR = "ENABLED";
    FD1P3AX x_n4__i15 (.D(x_n3[16]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i15.GSR = "ENABLED";
    FD1P3AX x_n4__i16 (.D(x_n3[17]), .SP(n1697), .CK(state_clk_c), .Q(x_n4[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n4__i16.GSR = "ENABLED";
    IFS1P3DX x_n__i2 (.D(audio_in_c_1), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i2.GSR = "ENABLED";
    IFS1P3DX x_n__i3 (.D(audio_in_c_2), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i3.GSR = "ENABLED";
    IFS1P3DX x_n__i4 (.D(audio_in_c_3), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i4.GSR = "ENABLED";
    IFS1P3DX x_n__i5 (.D(audio_in_c_4), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i5.GSR = "ENABLED";
    IFS1P3DX x_n__i6 (.D(audio_in_c_5), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i6.GSR = "ENABLED";
    IFS1P3DX x_n__i7 (.D(audio_in_c_6), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i7.GSR = "ENABLED";
    IFS1P3DX x_n__i8 (.D(audio_in_c_7), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i8.GSR = "ENABLED";
    IFS1P3DX x_n__i9 (.D(audio_in_c_8), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i9.GSR = "ENABLED";
    IFS1P3DX x_n__i10 (.D(audio_in_c_9), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i10.GSR = "ENABLED";
    IFS1P3DX x_n__i11 (.D(audio_in_c_10), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i11.GSR = "ENABLED";
    IFS1P3DX x_n__i12 (.D(audio_in_c_11), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i12.GSR = "ENABLED";
    IFS1P3DX x_n__i13 (.D(audio_in_c_12), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i13.GSR = "ENABLED";
    IFS1P3DX x_n__i14 (.D(audio_in_c_13), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i14.GSR = "ENABLED";
    IFS1P3DX x_n__i15 (.D(audio_in_c_14), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i15.GSR = "ENABLED";
    IFS1P3DX x_n__i16 (.D(audio_in_c_15), .SP(n1959), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(x_n[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam x_n__i16.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i1 (.D(n2211), .SP(n2009), .CK(state_clk_c), .Q(f1_value[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i1.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i2 (.D(n2216), .SP(n2009), .CK(state_clk_c), .Q(f1_value[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i2.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i3 (.D(n2217), .SP(n2009), .CK(state_clk_c), .Q(f1_value[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i3.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i4 (.D(n2218), .SP(n2009), .CK(state_clk_c), .Q(f1_value[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i4.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i5 (.D(n2219), .SP(n2009), .CK(state_clk_c), .Q(f1_value[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i5.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i6 (.D(n2220), .SP(n2009), .CK(state_clk_c), .Q(f1_value[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i6.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i7 (.D(n2221), .SP(n2009), .CK(state_clk_c), .Q(f1_value[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i7.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i8 (.D(n2222), .SP(n2009), .CK(state_clk_c), .Q(f1_value[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i8.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i9 (.D(n2223), .SP(n2009), .CK(state_clk_c), .Q(f1_value[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i9.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i10 (.D(n2224), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i10.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i11 (.D(n2226), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i11.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i12 (.D(n2227), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i12.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i13 (.D(n2228), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i13.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i14 (.D(n2245), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i14.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i15 (.D(n2244), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i15.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i16 (.D(n2229), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i16.GSR = "ENABLED";
    FD1P3AX f1_value_i0_i17 (.D(n2230), .SP(n2009), .CK(state_clk_c), 
            .Q(f1_value[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_value_i0_i17.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(n1099[1]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX state_FSM_i3 (.D(n1099[2]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(n1099[3]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(n1099[4]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(n1099[5]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3IX state_FSM_i7 (.D(n1099[6]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3IX state_FSM_i8 (.D(n1099[7]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3IX state_FSM_i9 (.D(n1099[8]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3IX state_FSM_i10 (.D(n1099[9]), .CK(state_clk_c), .CD(reset_c), 
            .Q(n1099[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3JX state_FSM_i11 (.D(n1972), .CK(state_clk_c), .PD(reset_c), 
            .Q(n1099[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i1 (.D(f1_mac_new[1]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i1.GSR = "ENABLED";
    LUT4 i8_4_lut_adj_168 (.A(n9_adj_181), .B(n16), .C(n12_adj_3), .D(n2_adj_180), 
         .Z(n2215)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i8_4_lut_adj_168.init = 16'hfffe;
    LUT4 select_214_Select_9_i9_2_lut (.A(f1_y_n4[9]), .B(n1099[9]), .Z(n9_adj_133)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_214_Select_9_i9_2_lut.init = 16'h8888;
    LUT4 select_215_Select_0_i9_2_lut (.A(a5_c_0), .B(n1099[9]), .Z(n9_adj_181)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_0_i9_2_lut.init = 16'h8888;
    LUT4 select_215_Select_14_i2_2_lut (.A(b2_c_14), .B(n1099[2]), .Z(n2_adj_199)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam select_215_Select_14_i2_2_lut.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 shift_left_4_i12_3_lut (.A(f1_mac_new[6]), .B(f1_mac_new[5]), .C(scale_c_0), 
         .Z(n12_adj_74)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i12_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i43_3_lut (.A(n25), .B(n29), .C(scale_c_2), .Z(n42[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i43_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    LUT4 shift_left_4_i29_3_lut (.A(n11), .B(n13_adj_75), .C(scale_c_1), 
         .Z(n29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i29_3_lut.init = 16'hcaca;
    LUT4 i279_3_lut_4_lut (.A(lr_clk_c), .B(last_clk), .C(n1099[10]), 
         .D(n1099[15]), .Z(n1972)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(183[10] 186[8])
    defparam i279_3_lut_4_lut.init = 16'hf7f0;
    LUT4 shift_left_4_i13_3_lut (.A(f1_mac_new[5]), .B(f1_mac_new[4]), .C(scale_c_0), 
         .Z(n13_adj_75)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i13_3_lut.init = 16'hcaca;
    LUT4 shift_left_4_i44_3_lut (.A(n26), .B(n30), .C(scale_c_2), .Z(n42[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i44_3_lut.init = 16'hcaca;
    FD1P3IX f1_mac_old__i17 (.D(f1_mac_new[17]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i17.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i16 (.D(f1_mac_new[16]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[16]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i16.GSR = "ENABLED";
    FD1P3IX f1_y_n1_i0_i2 (.D(n34), .SP(n1697), .CD(n2247), .CK(state_clk_c), 
            .Q(f1_y_n1[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i2.GSR = "ENABLED";
    FD1P3IX f1_y_n1_i0_i3 (.D(n33), .SP(n1697), .CD(n2247), .CK(state_clk_c), 
            .Q(f1_y_n1[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_y_n1_i0_i3.GSR = "ENABLED";
    OFS1P3DX audio_out_i0_i16 (.D(f1_y_n1[17]), .SP(n1697), .SCLK(state_clk_c), 
            .CD(GND_net), .Q(audio_out_c_15));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam audio_out_i0_i16.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D add_3_18 (.A0(f1_mac_old[16]), .B0(f1_coeff_x_value[16]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[17]), .B1(f1_coeff_x_value[17]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2207), .S0(f1_mac_new[16]), 
          .S1(f1_mac_new[17]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_18.INIT0 = 16'h5666;
    defparam add_3_18.INIT1 = 16'h5666;
    defparam add_3_18.INJECT1_0 = "NO";
    defparam add_3_18.INJECT1_1 = "NO";
    CCU2D add_3_16 (.A0(f1_mac_old[14]), .B0(f1_coeff_x_value[14]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[15]), .B1(f1_coeff_x_value[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(f1_mac_new[14]), 
          .S1(f1_mac_new[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_16.INIT0 = 16'h5666;
    defparam add_3_16.INIT1 = 16'h5666;
    defparam add_3_16.INJECT1_0 = "NO";
    defparam add_3_16.INJECT1_1 = "NO";
    FD1P3IX f1_mac_old__i2 (.D(f1_mac_new[2]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[2]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i2.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i3 (.D(f1_mac_new[3]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i3.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i4 (.D(f1_mac_new[4]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[4]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i4.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i5 (.D(f1_mac_new[5]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i5.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i6 (.D(f1_mac_new[6]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[6]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i6.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i7 (.D(f1_mac_new[7]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i7.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i8 (.D(f1_mac_new[8]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[8]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i8.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i9 (.D(f1_mac_new[9]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i9.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i10 (.D(f1_mac_new[10]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[10]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i10.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i11 (.D(f1_mac_new[11]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i11.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i12 (.D(f1_mac_new[12]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[12]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i12.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i13 (.D(f1_mac_new[13]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i13.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i14 (.D(f1_mac_new[14]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[14]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i14.GSR = "ENABLED";
    FD1P3IX f1_mac_old__i15 (.D(f1_mac_new[15]), .SP(n1942), .CD(n1959), 
            .CK(state_clk_c), .Q(f1_mac_old[15]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(50[8] 196[4])
    defparam f1_mac_old__i15.GSR = "ENABLED";
    LUT4 i645_3_lut_4_lut (.A(n1099[15]), .B(n1099[10]), .C(n1099[1]), 
         .D(reset_c), .Z(n1942)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i645_3_lut_4_lut.init = 16'h00f1;
    LUT4 shift_left_4_i30_3_lut (.A(n12_adj_74), .B(n14), .C(scale_c_1), 
         .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i30_3_lut.init = 16'hcaca;
    PFUMX shift_left_4_i38 (.BLUT(n2_adj_70), .ALUT(n20), .C0(n2335), 
          .Z(n42[16]));
    CCU2D add_3_14 (.A0(f1_mac_old[12]), .B0(f1_coeff_x_value[12]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[13]), .B1(f1_coeff_x_value[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(f1_mac_new[12]), 
          .S1(f1_mac_new[13]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_14.INIT0 = 16'h5666;
    defparam add_3_14.INIT1 = 16'h5666;
    defparam add_3_14.INJECT1_0 = "NO";
    defparam add_3_14.INJECT1_1 = "NO";
    CCU2D add_3_12 (.A0(f1_mac_old[10]), .B0(f1_coeff_x_value[10]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[11]), .B1(f1_coeff_x_value[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(f1_mac_new[10]), 
          .S1(f1_mac_new[11]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_12.INIT0 = 16'h5666;
    defparam add_3_12.INIT1 = 16'h5666;
    defparam add_3_12.INJECT1_0 = "NO";
    defparam add_3_12.INJECT1_1 = "NO";
    CCU2D add_3_10 (.A0(f1_mac_old[8]), .B0(f1_coeff_x_value[8]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[9]), .B1(f1_coeff_x_value[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(f1_mac_new[8]), 
          .S1(f1_mac_new[9]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_10.INIT0 = 16'h5666;
    defparam add_3_10.INIT1 = 16'h5666;
    defparam add_3_10.INJECT1_0 = "NO";
    defparam add_3_10.INJECT1_1 = "NO";
    LUT4 shift_left_4_i14_3_lut (.A(f1_mac_new[4]), .B(f1_mac_new[3]), .C(scale_c_0), 
         .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i14_3_lut.init = 16'hcaca;
    CCU2D add_3_8 (.A0(f1_mac_old[6]), .B0(f1_coeff_x_value[6]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[7]), .B1(f1_coeff_x_value[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2202), .COUT(n2203), .S0(f1_mac_new[6]), 
          .S1(f1_mac_new[7]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_8.INIT0 = 16'h5666;
    defparam add_3_8.INIT1 = 16'h5666;
    defparam add_3_8.INJECT1_0 = "NO";
    defparam add_3_8.INJECT1_1 = "NO";
    CCU2D add_3_6 (.A0(f1_mac_old[4]), .B0(f1_coeff_x_value[4]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[5]), .B1(f1_coeff_x_value[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2201), .COUT(n2202), .S0(f1_mac_new[4]), 
          .S1(f1_mac_new[5]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_6.INIT0 = 16'h5666;
    defparam add_3_6.INIT1 = 16'h5666;
    defparam add_3_6.INJECT1_0 = "NO";
    defparam add_3_6.INJECT1_1 = "NO";
    CCU2D add_3_4 (.A0(f1_mac_old[2]), .B0(f1_coeff_x_value[2]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[3]), .B1(f1_coeff_x_value[3]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(f1_mac_new[2]), 
          .S1(f1_mac_new[3]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_4.INIT0 = 16'h5666;
    defparam add_3_4.INIT1 = 16'h5666;
    defparam add_3_4.INJECT1_0 = "NO";
    defparam add_3_4.INJECT1_1 = "NO";
    CCU2D add_3_2 (.A0(f1_mac_old[0]), .B0(f1_coeff_x_value[0]), .C0(GND_net), 
          .D0(GND_net), .A1(f1_mac_old[1]), .B1(f1_coeff_x_value[1]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2200), .S1(f1_mac_new[1]));   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(40[21:50])
    defparam add_3_2.INIT0 = 16'h7000;
    defparam add_3_2.INIT1 = 16'h5666;
    defparam add_3_2.INJECT1_0 = "NO";
    defparam add_3_2.INJECT1_1 = "NO";
    LUT4 i648_2_lut_3_lut (.A(n1099[15]), .B(n1099[10]), .C(reset_c), 
         .Z(n2009)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i648_2_lut_3_lut.init = 16'h0101;
    PFUMX shift_left_4_i37 (.BLUT(n1), .ALUT(n19), .C0(n2335), .Z(n42[17]));
    LUT4 shift_left_4_i45_3_lut (.A(n27), .B(n31), .C(scale_c_2), .Z(n42[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(159[16:33])
    defparam shift_left_4_i45_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut_adj_169 (.A(n13_adj_136), .B(f1_y_n1[9]), .C(n10_adj_146), 
         .D(n1099[6]), .Z(n16_adj_134)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/iir_cornell.v(58[3] 194[10])
    defparam i7_4_lut_adj_169.init = 16'hfefa;
    
endmodule
//
// Verilog Description of module signed_mult
//

module signed_mult (f1_coeff, f1_value, GND_net, VCC_net, f1_coeff_x_value) /* synthesis syn_module_defined=1 */ ;
    input [17:0]f1_coeff;
    input [17:0]f1_value;
    input GND_net;
    input VCC_net;
    output [17:0]f1_coeff_x_value;
    
    
    wire mult_18s_18s_0_mult_4_8_n2, mult_18s_18s_0_mult_2_8_n2, mult_18s_18s_0_mult_0_8_n2, 
        mult_18s_18s_0_mult_0_8_n1, mult_18s_18s_0_pp_1_2, mult_18s_18s_0_mult_2_8_n1, 
        mult_18s_18s_0_pp_2_4, mult_18s_18s_0_mult_4_8_n1, mult_18s_18s_0_pp_3_6, 
        mult_18s_18s_0_mult_6_8_n1, mult_18s_18s_0_pp_4_8, mult_18s_18s_0_mult_8_8_n1, 
        mult_18s_18s_0_pp_5_10, mult_18s_18s_0_mult_10_8_n1, mult_18s_18s_0_pp_6_12, 
        mult_18s_18s_0_mult_12_8_n1, mult_18s_18s_0_pp_7_14, mult_18s_18s_0_mult_14_8_n1, 
        mult_18s_18s_0_pp_8_16, mult_18s_18s_0_mult_16_0_n0, mult_18s_18s_0_mult_16_1_n1, 
        mult_18s_18s_0_mult_16_1_n0, mult_18s_18s_0_mult_16_2_n1, mult_18s_18s_0_mult_16_2_n0, 
        mult_18s_18s_0_mult_16_3_n1, mult_18s_18s_0_mult_16_3_n0, mult_18s_18s_0_mult_16_4_n1, 
        mult_18s_18s_0_mult_16_4_n0, mult_18s_18s_0_mult_16_5_n1, mult_18s_18s_0_mult_16_5_n0, 
        mult_18s_18s_0_mult_16_6_n1, mult_18s_18s_0_mult_16_6_n0, mult_18s_18s_0_mult_16_7_n1, 
        mult_18s_18s_0_mult_16_7_n0, mult_18s_18s_0_mult_16_8_n2, mult_18s_18s_0_mult_16_8_n0, 
        mult_18s_18s_0_cin_lr_0, mult_18s_18s_0_pp_0_19, mfco, mult_18s_18s_0_cin_lr_2, 
        mult_18s_18s_0_pp_1_21, mfco_1, mult_18s_18s_0_cin_lr_4, mult_18s_18s_0_pp_2_23, 
        mfco_2, mult_18s_18s_0_cin_lr_6, mult_18s_18s_0_pp_3_25, mfco_3, 
        mult_18s_18s_0_cin_lr_8, mult_18s_18s_0_pp_4_27, mfco_4, mult_18s_18s_0_cin_lr_10, 
        mult_18s_18s_0_pp_5_29, mfco_5, mult_18s_18s_0_cin_lr_12, mult_18s_18s_0_pp_6_31, 
        mfco_6, mult_18s_18s_0_cin_lr_14, mult_18s_18s_0_pp_7_33, mfco_7, 
        mult_18s_18s_0_cin_lr_16, mult_18s_18s_0_pp_8_35, mfco_8, co_mult_18s_18s_0_0_1, 
        mult_18s_18s_0_pp_0_2, co_mult_18s_18s_0_0_2, s_mult_18s_18s_0_0_4, 
        mult_18s_18s_0_pp_0_4, mult_18s_18s_0_pp_0_3, mult_18s_18s_0_pp_1_4, 
        mult_18s_18s_0_pp_1_3, co_mult_18s_18s_0_0_3, s_mult_18s_18s_0_0_5, 
        s_mult_18s_18s_0_0_6, mult_18s_18s_0_pp_0_6, mult_18s_18s_0_pp_0_5, 
        mult_18s_18s_0_pp_1_6, mult_18s_18s_0_pp_1_5, co_mult_18s_18s_0_0_4, 
        s_mult_18s_18s_0_0_7, s_mult_18s_18s_0_0_8, mult_18s_18s_0_pp_0_8, 
        mult_18s_18s_0_pp_0_7, mult_18s_18s_0_pp_1_8, mult_18s_18s_0_pp_1_7, 
        co_mult_18s_18s_0_0_5, s_mult_18s_18s_0_0_9, s_mult_18s_18s_0_0_10, 
        mult_18s_18s_0_pp_0_10, mult_18s_18s_0_pp_0_9, mult_18s_18s_0_pp_1_10, 
        mult_18s_18s_0_pp_1_9, co_mult_18s_18s_0_0_6, s_mult_18s_18s_0_0_11, 
        s_mult_18s_18s_0_0_12, mult_18s_18s_0_pp_0_12, mult_18s_18s_0_pp_0_11, 
        mult_18s_18s_0_pp_1_12, mult_18s_18s_0_pp_1_11, co_mult_18s_18s_0_0_7, 
        s_mult_18s_18s_0_0_13, s_mult_18s_18s_0_0_14, mult_18s_18s_0_pp_0_14, 
        mult_18s_18s_0_pp_0_13, mult_18s_18s_0_pp_1_14, mult_18s_18s_0_pp_1_13, 
        co_mult_18s_18s_0_0_8, s_mult_18s_18s_0_0_15, s_mult_18s_18s_0_0_16, 
        mult_18s_18s_0_pp_0_16, mult_18s_18s_0_pp_0_15, mult_18s_18s_0_pp_1_16, 
        mult_18s_18s_0_pp_1_15, co_mult_18s_18s_0_0_9, s_mult_18s_18s_0_0_17, 
        s_mult_18s_18s_0_0_18, mult_18s_18s_0_pp_0_18, mult_18s_18s_0_pp_0_17, 
        mult_18s_18s_0_pp_1_18, mult_18s_18s_0_pp_1_17, co_mult_18s_18s_0_0_10, 
        s_mult_18s_18s_0_0_19, s_mult_18s_18s_0_0_20, mult_18s_18s_0_pp_1_20, 
        mult_18s_18s_0_pp_1_19, co_mult_18s_18s_0_0_11, s_mult_18s_18s_0_0_21, 
        s_mult_18s_18s_0_0_22, s_mult_18s_18s_0_0_23, co_mult_18s_18s_0_1_1, 
        s_mult_18s_18s_0_1_6, mult_18s_18s_0_pp_2_6, co_mult_18s_18s_0_1_2, 
        s_mult_18s_18s_0_1_7, s_mult_18s_18s_0_1_8, mult_18s_18s_0_pp_2_8, 
        mult_18s_18s_0_pp_2_7, mult_18s_18s_0_pp_3_8, mult_18s_18s_0_pp_3_7, 
        co_mult_18s_18s_0_1_3, s_mult_18s_18s_0_1_9, s_mult_18s_18s_0_1_10, 
        mult_18s_18s_0_pp_2_10, mult_18s_18s_0_pp_2_9, mult_18s_18s_0_pp_3_10, 
        mult_18s_18s_0_pp_3_9, co_mult_18s_18s_0_1_4, s_mult_18s_18s_0_1_11, 
        s_mult_18s_18s_0_1_12, mult_18s_18s_0_pp_2_12, mult_18s_18s_0_pp_2_11, 
        mult_18s_18s_0_pp_3_12, mult_18s_18s_0_pp_3_11, co_mult_18s_18s_0_1_5, 
        s_mult_18s_18s_0_1_13, s_mult_18s_18s_0_1_14, mult_18s_18s_0_pp_2_14, 
        mult_18s_18s_0_pp_2_13, mult_18s_18s_0_pp_3_14, mult_18s_18s_0_pp_3_13, 
        co_mult_18s_18s_0_1_6, s_mult_18s_18s_0_1_15, s_mult_18s_18s_0_1_16, 
        mult_18s_18s_0_pp_2_16, mult_18s_18s_0_pp_2_15, mult_18s_18s_0_pp_3_16, 
        mult_18s_18s_0_pp_3_15, co_mult_18s_18s_0_1_7, s_mult_18s_18s_0_1_17, 
        s_mult_18s_18s_0_1_18, mult_18s_18s_0_pp_2_18, mult_18s_18s_0_pp_2_17, 
        mult_18s_18s_0_pp_3_18, mult_18s_18s_0_pp_3_17, co_mult_18s_18s_0_1_8, 
        s_mult_18s_18s_0_1_19, s_mult_18s_18s_0_1_20, mult_18s_18s_0_pp_2_20, 
        mult_18s_18s_0_pp_2_19, mult_18s_18s_0_pp_3_20, mult_18s_18s_0_pp_3_19, 
        co_mult_18s_18s_0_1_9, s_mult_18s_18s_0_1_21, s_mult_18s_18s_0_1_22, 
        mult_18s_18s_0_pp_2_22, mult_18s_18s_0_pp_2_21, mult_18s_18s_0_pp_3_22, 
        mult_18s_18s_0_pp_3_21, co_mult_18s_18s_0_1_10, s_mult_18s_18s_0_1_23, 
        s_mult_18s_18s_0_1_24, mult_18s_18s_0_pp_3_24, mult_18s_18s_0_pp_3_23, 
        co_mult_18s_18s_0_1_11, s_mult_18s_18s_0_1_25, s_mult_18s_18s_0_1_26, 
        s_mult_18s_18s_0_1_27, co_mult_18s_18s_0_2_1, s_mult_18s_18s_0_2_10, 
        mult_18s_18s_0_pp_4_10, co_mult_18s_18s_0_2_2, s_mult_18s_18s_0_2_12, 
        s_mult_18s_18s_0_2_11, mult_18s_18s_0_pp_4_12, mult_18s_18s_0_pp_4_11, 
        mult_18s_18s_0_pp_5_12, mult_18s_18s_0_pp_5_11, co_mult_18s_18s_0_2_3, 
        s_mult_18s_18s_0_2_13, s_mult_18s_18s_0_2_14, mult_18s_18s_0_pp_4_14, 
        mult_18s_18s_0_pp_4_13, mult_18s_18s_0_pp_5_14, mult_18s_18s_0_pp_5_13, 
        co_mult_18s_18s_0_2_4, s_mult_18s_18s_0_2_15, s_mult_18s_18s_0_2_16, 
        mult_18s_18s_0_pp_4_16, mult_18s_18s_0_pp_4_15, mult_18s_18s_0_pp_5_16, 
        mult_18s_18s_0_pp_5_15, co_mult_18s_18s_0_2_5, s_mult_18s_18s_0_2_17, 
        s_mult_18s_18s_0_2_18, mult_18s_18s_0_pp_4_18, mult_18s_18s_0_pp_4_17, 
        mult_18s_18s_0_pp_5_18, mult_18s_18s_0_pp_5_17, co_mult_18s_18s_0_2_6, 
        s_mult_18s_18s_0_2_19, s_mult_18s_18s_0_2_20, mult_18s_18s_0_pp_4_20, 
        mult_18s_18s_0_pp_4_19, mult_18s_18s_0_pp_5_20, mult_18s_18s_0_pp_5_19, 
        co_mult_18s_18s_0_2_7, s_mult_18s_18s_0_2_21, s_mult_18s_18s_0_2_22, 
        mult_18s_18s_0_pp_4_22, mult_18s_18s_0_pp_4_21, mult_18s_18s_0_pp_5_22, 
        mult_18s_18s_0_pp_5_21, co_mult_18s_18s_0_2_8, s_mult_18s_18s_0_2_23, 
        s_mult_18s_18s_0_2_24, mult_18s_18s_0_pp_4_24, mult_18s_18s_0_pp_4_23, 
        mult_18s_18s_0_pp_5_24, mult_18s_18s_0_pp_5_23, co_mult_18s_18s_0_2_9, 
        s_mult_18s_18s_0_2_25, s_mult_18s_18s_0_2_26, mult_18s_18s_0_pp_4_26, 
        mult_18s_18s_0_pp_4_25, mult_18s_18s_0_pp_5_26, mult_18s_18s_0_pp_5_25, 
        co_mult_18s_18s_0_2_10, s_mult_18s_18s_0_2_27, s_mult_18s_18s_0_2_28, 
        mult_18s_18s_0_pp_5_28, mult_18s_18s_0_pp_5_27, co_mult_18s_18s_0_2_11, 
        s_mult_18s_18s_0_2_29, s_mult_18s_18s_0_2_30, s_mult_18s_18s_0_2_31, 
        co_mult_18s_18s_0_3_1, s_mult_18s_18s_0_3_14, mult_18s_18s_0_pp_6_14, 
        co_mult_18s_18s_0_3_2, s_mult_18s_18s_0_3_15, s_mult_18s_18s_0_3_16, 
        mult_18s_18s_0_pp_6_16, mult_18s_18s_0_pp_6_15, mult_18s_18s_0_pp_7_16, 
        mult_18s_18s_0_pp_7_15, co_mult_18s_18s_0_3_3, s_mult_18s_18s_0_3_17, 
        s_mult_18s_18s_0_3_18, mult_18s_18s_0_pp_6_18, mult_18s_18s_0_pp_6_17, 
        mult_18s_18s_0_pp_7_18, mult_18s_18s_0_pp_7_17, co_mult_18s_18s_0_3_4, 
        s_mult_18s_18s_0_3_19, s_mult_18s_18s_0_3_20, mult_18s_18s_0_pp_6_20, 
        mult_18s_18s_0_pp_6_19, mult_18s_18s_0_pp_7_20, mult_18s_18s_0_pp_7_19, 
        co_mult_18s_18s_0_3_5, s_mult_18s_18s_0_3_21, s_mult_18s_18s_0_3_22, 
        mult_18s_18s_0_pp_6_22, mult_18s_18s_0_pp_6_21, mult_18s_18s_0_pp_7_22, 
        mult_18s_18s_0_pp_7_21, co_mult_18s_18s_0_3_6, s_mult_18s_18s_0_3_23, 
        s_mult_18s_18s_0_3_24, mult_18s_18s_0_pp_6_24, mult_18s_18s_0_pp_6_23, 
        mult_18s_18s_0_pp_7_24, mult_18s_18s_0_pp_7_23, co_mult_18s_18s_0_3_7, 
        s_mult_18s_18s_0_3_25, s_mult_18s_18s_0_3_26, mult_18s_18s_0_pp_6_26, 
        mult_18s_18s_0_pp_6_25, mult_18s_18s_0_pp_7_26, mult_18s_18s_0_pp_7_25, 
        co_mult_18s_18s_0_3_8, s_mult_18s_18s_0_3_27, s_mult_18s_18s_0_3_28, 
        mult_18s_18s_0_pp_6_28, mult_18s_18s_0_pp_6_27, mult_18s_18s_0_pp_7_28, 
        mult_18s_18s_0_pp_7_27, co_mult_18s_18s_0_3_9, s_mult_18s_18s_0_3_29, 
        s_mult_18s_18s_0_3_30, mult_18s_18s_0_pp_6_30, mult_18s_18s_0_pp_6_29, 
        mult_18s_18s_0_pp_7_30, mult_18s_18s_0_pp_7_29, co_mult_18s_18s_0_3_10, 
        s_mult_18s_18s_0_3_31, s_mult_18s_18s_0_3_32, mult_18s_18s_0_pp_7_32, 
        mult_18s_18s_0_pp_7_31, co_mult_18s_18s_0_3_11, s_mult_18s_18s_0_3_33, 
        s_mult_18s_18s_0_3_34, s_mult_18s_18s_0_3_35, co_mult_18s_18s_0_4_1, 
        co_mult_18s_18s_0_4_2, mult_18s_18s_0_pp_2_5, co_mult_18s_18s_0_4_3, 
        s_mult_18s_18s_0_4_8, co_mult_18s_18s_0_4_4, s_mult_18s_18s_0_4_9, 
        s_mult_18s_18s_0_4_10, co_mult_18s_18s_0_4_5, s_mult_18s_18s_0_4_11, 
        s_mult_18s_18s_0_4_12, co_mult_18s_18s_0_4_6, s_mult_18s_18s_0_4_13, 
        s_mult_18s_18s_0_4_14, co_mult_18s_18s_0_4_7, s_mult_18s_18s_0_4_15, 
        s_mult_18s_18s_0_4_16, co_mult_18s_18s_0_4_8, s_mult_18s_18s_0_4_17, 
        s_mult_18s_18s_0_4_18, co_mult_18s_18s_0_4_9, s_mult_18s_18s_0_4_19, 
        s_mult_18s_18s_0_4_20, co_mult_18s_18s_0_4_10, s_mult_18s_18s_0_4_21, 
        s_mult_18s_18s_0_4_22, co_mult_18s_18s_0_4_11, s_mult_18s_18s_0_4_23, 
        s_mult_18s_18s_0_4_24, co_mult_18s_18s_0_4_12, s_mult_18s_18s_0_4_25, 
        s_mult_18s_18s_0_4_26, co_mult_18s_18s_0_4_13, s_mult_18s_18s_0_4_27, 
        s_mult_18s_18s_0_4_28, s_mult_18s_18s_0_4_29, co_mult_18s_18s_0_5_1, 
        s_mult_18s_18s_0_5_12, co_mult_18s_18s_0_5_2, s_mult_18s_18s_0_5_13, 
        s_mult_18s_18s_0_5_14, mult_18s_18s_0_pp_6_13, co_mult_18s_18s_0_5_3, 
        s_mult_18s_18s_0_5_15, s_mult_18s_18s_0_5_16, co_mult_18s_18s_0_5_4, 
        s_mult_18s_18s_0_5_17, s_mult_18s_18s_0_5_18, co_mult_18s_18s_0_5_5, 
        s_mult_18s_18s_0_5_19, s_mult_18s_18s_0_5_20, co_mult_18s_18s_0_5_6, 
        s_mult_18s_18s_0_5_21, s_mult_18s_18s_0_5_22, co_mult_18s_18s_0_5_7, 
        s_mult_18s_18s_0_5_23, s_mult_18s_18s_0_5_24, co_mult_18s_18s_0_5_8, 
        s_mult_18s_18s_0_5_25, s_mult_18s_18s_0_5_26, co_mult_18s_18s_0_5_9, 
        s_mult_18s_18s_0_5_27, s_mult_18s_18s_0_5_28, co_mult_18s_18s_0_5_10, 
        s_mult_18s_18s_0_5_29, s_mult_18s_18s_0_5_30, co_mult_18s_18s_0_5_11, 
        s_mult_18s_18s_0_5_31, s_mult_18s_18s_0_5_32, co_mult_18s_18s_0_5_12, 
        s_mult_18s_18s_0_5_33, s_mult_18s_18s_0_5_34, s_mult_18s_18s_0_5_35, 
        co_mult_18s_18s_0_6_1, co_mult_18s_18s_0_6_2, mult_18s_18s_0_pp_4_9, 
        co_mult_18s_18s_0_6_3, co_mult_18s_18s_0_6_4, co_mult_18s_18s_0_6_5, 
        s_mult_18s_18s_0_6_16, co_mult_18s_18s_0_6_6, s_mult_18s_18s_0_6_17, 
        s_mult_18s_18s_0_6_18, co_mult_18s_18s_0_6_7, s_mult_18s_18s_0_6_19, 
        s_mult_18s_18s_0_6_20, co_mult_18s_18s_0_6_8, s_mult_18s_18s_0_6_21, 
        s_mult_18s_18s_0_6_22, co_mult_18s_18s_0_6_9, s_mult_18s_18s_0_6_23, 
        s_mult_18s_18s_0_6_24, co_mult_18s_18s_0_6_10, s_mult_18s_18s_0_6_25, 
        s_mult_18s_18s_0_6_26, co_mult_18s_18s_0_6_11, s_mult_18s_18s_0_6_27, 
        s_mult_18s_18s_0_6_28, co_mult_18s_18s_0_6_12, s_mult_18s_18s_0_6_29, 
        s_mult_18s_18s_0_6_30, co_mult_18s_18s_0_6_13, s_mult_18s_18s_0_6_31, 
        s_mult_18s_18s_0_6_32, co_mult_18s_18s_0_6_14, s_mult_18s_18s_0_6_33, 
        s_mult_18s_18s_0_6_34, s_mult_18s_18s_0_6_35, co_t_mult_18s_18s_0_7_1, 
        co_t_mult_18s_18s_0_7_2, mult_18s_18s_0_pp_8_18, mult_18s_18s_0_pp_8_17, 
        co_t_mult_18s_18s_0_7_3, mult_18s_18s_0_pp_8_20, mult_18s_18s_0_pp_8_19, 
        co_t_mult_18s_18s_0_7_4, mult_18s_18s_0_pp_8_22, mult_18s_18s_0_pp_8_21, 
        co_t_mult_18s_18s_0_7_5, mult_18s_18s_0_pp_8_24, mult_18s_18s_0_pp_8_23, 
        co_t_mult_18s_18s_0_7_6, mult_18s_18s_0_pp_8_26, mult_18s_18s_0_pp_8_25, 
        co_t_mult_18s_18s_0_7_7, mult_18s_18s_0_pp_8_28, mult_18s_18s_0_pp_8_27, 
        co_t_mult_18s_18s_0_7_8, mult_18s_18s_0_pp_8_30, mult_18s_18s_0_pp_8_29, 
        co_t_mult_18s_18s_0_7_9, mult_18s_18s_0_pp_8_32, mult_18s_18s_0_pp_8_31, 
        co_t_mult_18s_18s_0_7_10, mult_18s_18s_0_pp_8_34, mult_18s_18s_0_pp_8_33, 
        mco, mco_1, mco_2, mco_3, mco_4, mco_5, mco_6, mco_7, 
        mco_8, mco_9, mco_10, mco_11, mco_12, mco_13, mco_14, 
        mco_15, mco_16, mco_17, mco_18, mco_19, mco_20, mco_21, 
        mco_22, mco_23, mco_24, mco_25, mco_26, mco_27, mco_28, 
        mco_29, mco_30, mco_31, mult_18s_18s_0_mult_6_8_n2, mco_32, 
        mco_33, mco_34, mco_35, mco_36, mco_37, mco_38, mco_39, 
        mult_18s_18s_0_mult_8_8_n2, mco_40, mco_41, mco_42, mco_43, 
        mco_44, mco_45, mco_46, mco_47, mult_18s_18s_0_mult_10_8_n2, 
        mco_48, mco_49, mco_50, mco_51, mco_52, mco_53, mco_54, 
        mco_55, mult_18s_18s_0_mult_12_8_n2, mco_56, mco_57, mco_58, 
        mco_59, mco_60, mco_61, mco_62, mco_63, mult_18s_18s_0_mult_14_8_n2, 
        mult_18s_18s_0_mult_16_0_n1, mco_64, mco_65, mco_66, mco_67, 
        mco_68, mco_69, mco_70, mco_71;
    
    ND2 ND2_t35 (.A(f1_coeff[17]), .B(f1_value[4]), .Z(mult_18s_18s_0_mult_4_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t38 (.A(f1_coeff[17]), .B(f1_value[2]), .Z(mult_18s_18s_0_mult_2_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t41 (.A(f1_coeff[17]), .B(f1_value[0]), .Z(mult_18s_18s_0_mult_0_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t40 (.A(f1_coeff[17]), .B(f1_value[1]), .Z(mult_18s_18s_0_mult_0_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t39 (.A(f1_coeff[0]), .B(f1_value[2]), .Z(mult_18s_18s_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(588[10:66])
    ND2 ND2_t37 (.A(f1_coeff[17]), .B(f1_value[3]), .Z(mult_18s_18s_0_mult_2_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t36 (.A(f1_coeff[0]), .B(f1_value[4]), .Z(mult_18s_18s_0_pp_2_4)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(594[10:66])
    ND2 ND2_t34 (.A(f1_coeff[17]), .B(f1_value[5]), .Z(mult_18s_18s_0_mult_4_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t33 (.A(f1_coeff[0]), .B(f1_value[6]), .Z(mult_18s_18s_0_pp_3_6)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(600[10:66])
    ND2 ND2_t31 (.A(f1_coeff[17]), .B(f1_value[7]), .Z(mult_18s_18s_0_mult_6_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t30 (.A(f1_coeff[0]), .B(f1_value[8]), .Z(mult_18s_18s_0_pp_4_8)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(606[10:66])
    ND2 ND2_t28 (.A(f1_coeff[17]), .B(f1_value[9]), .Z(mult_18s_18s_0_mult_8_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t27 (.A(f1_coeff[0]), .B(f1_value[10]), .Z(mult_18s_18s_0_pp_5_10)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(612[10:68])
    ND2 ND2_t25 (.A(f1_coeff[17]), .B(f1_value[11]), .Z(mult_18s_18s_0_mult_10_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t24 (.A(f1_coeff[0]), .B(f1_value[12]), .Z(mult_18s_18s_0_pp_6_12)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(618[10:68])
    ND2 ND2_t22 (.A(f1_coeff[17]), .B(f1_value[13]), .Z(mult_18s_18s_0_mult_12_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t21 (.A(f1_coeff[0]), .B(f1_value[14]), .Z(mult_18s_18s_0_pp_7_14)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(624[10:68])
    ND2 ND2_t19 (.A(f1_coeff[17]), .B(f1_value[15]), .Z(mult_18s_18s_0_mult_14_8_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    AND2 AND2_t18 (.A(f1_coeff[0]), .B(f1_value[16]), .Z(mult_18s_18s_0_pp_8_16)) /* synthesis syn_instantiated=1 */ ;   // mult_18s_18s.v(630[10:68])
    ND2 ND2_t16 (.A(f1_coeff[0]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_0_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t15 (.A(f1_coeff[3]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_1_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t14 (.A(f1_coeff[2]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_1_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t13 (.A(f1_coeff[5]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_2_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t12 (.A(f1_coeff[4]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_2_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t11 (.A(f1_coeff[7]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_3_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t10 (.A(f1_coeff[6]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_3_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t9 (.A(f1_coeff[9]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_4_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t8 (.A(f1_coeff[8]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_4_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t7 (.A(f1_coeff[11]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_5_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t6 (.A(f1_coeff[10]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_5_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t5 (.A(f1_coeff[13]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_6_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t4 (.A(f1_coeff[12]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_6_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t3 (.A(f1_coeff[15]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_7_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t2 (.A(f1_coeff[14]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_7_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t1 (.A(f1_coeff[17]), .B(f1_value[16]), .Z(mult_18s_18s_0_mult_16_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t0 (.A(f1_coeff[16]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_8_n0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_0_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco), .S0(mult_18s_18s_0_pp_0_19)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_2 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_2_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_1), .S0(mult_18s_18s_0_pp_1_21)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_4 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_4_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_2), .S0(mult_18s_18s_0_pp_2_23)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_6 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_6_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_3), .S0(mult_18s_18s_0_pp_3_25)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_8 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_8_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_4), .S0(mult_18s_18s_0_pp_4_27)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_10 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_10_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_5), .S0(mult_18s_18s_0_pp_5_29)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_12_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_6), .S0(mult_18s_18s_0_pp_6_31)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_14 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_14_9 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_7), .S0(mult_18s_18s_0_pp_7_33)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_cin_lr_add_16 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_18s_18s_0_cin_lr_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_Cadd_16_9 (.A0(VCC_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(mfco_8), .S0(mult_18s_18s_0_pp_8_35)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_0_1 (.A0(GND_net), .A1(mult_18s_18s_0_pp_0_2), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_1_2), .CI(GND_net), .COUT(co_mult_18s_18s_0_0_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_2 (.A0(mult_18s_18s_0_pp_0_3), .A1(mult_18s_18s_0_pp_0_4), 
           .B0(mult_18s_18s_0_pp_1_3), .B1(mult_18s_18s_0_pp_1_4), .CI(co_mult_18s_18s_0_0_1), 
           .COUT(co_mult_18s_18s_0_0_2), .S1(s_mult_18s_18s_0_0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_3 (.A0(mult_18s_18s_0_pp_0_5), .A1(mult_18s_18s_0_pp_0_6), 
           .B0(mult_18s_18s_0_pp_1_5), .B1(mult_18s_18s_0_pp_1_6), .CI(co_mult_18s_18s_0_0_2), 
           .COUT(co_mult_18s_18s_0_0_3), .S0(s_mult_18s_18s_0_0_5), .S1(s_mult_18s_18s_0_0_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_4 (.A0(mult_18s_18s_0_pp_0_7), .A1(mult_18s_18s_0_pp_0_8), 
           .B0(mult_18s_18s_0_pp_1_7), .B1(mult_18s_18s_0_pp_1_8), .CI(co_mult_18s_18s_0_0_3), 
           .COUT(co_mult_18s_18s_0_0_4), .S0(s_mult_18s_18s_0_0_7), .S1(s_mult_18s_18s_0_0_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_5 (.A0(mult_18s_18s_0_pp_0_9), .A1(mult_18s_18s_0_pp_0_10), 
           .B0(mult_18s_18s_0_pp_1_9), .B1(mult_18s_18s_0_pp_1_10), .CI(co_mult_18s_18s_0_0_4), 
           .COUT(co_mult_18s_18s_0_0_5), .S0(s_mult_18s_18s_0_0_9), .S1(s_mult_18s_18s_0_0_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_6 (.A0(mult_18s_18s_0_pp_0_11), .A1(mult_18s_18s_0_pp_0_12), 
           .B0(mult_18s_18s_0_pp_1_11), .B1(mult_18s_18s_0_pp_1_12), .CI(co_mult_18s_18s_0_0_5), 
           .COUT(co_mult_18s_18s_0_0_6), .S0(s_mult_18s_18s_0_0_11), .S1(s_mult_18s_18s_0_0_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_7 (.A0(mult_18s_18s_0_pp_0_13), .A1(mult_18s_18s_0_pp_0_14), 
           .B0(mult_18s_18s_0_pp_1_13), .B1(mult_18s_18s_0_pp_1_14), .CI(co_mult_18s_18s_0_0_6), 
           .COUT(co_mult_18s_18s_0_0_7), .S0(s_mult_18s_18s_0_0_13), .S1(s_mult_18s_18s_0_0_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_8 (.A0(mult_18s_18s_0_pp_0_15), .A1(mult_18s_18s_0_pp_0_16), 
           .B0(mult_18s_18s_0_pp_1_15), .B1(mult_18s_18s_0_pp_1_16), .CI(co_mult_18s_18s_0_0_7), 
           .COUT(co_mult_18s_18s_0_0_8), .S0(s_mult_18s_18s_0_0_15), .S1(s_mult_18s_18s_0_0_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_9 (.A0(mult_18s_18s_0_pp_0_17), .A1(mult_18s_18s_0_pp_0_18), 
           .B0(mult_18s_18s_0_pp_1_17), .B1(mult_18s_18s_0_pp_1_18), .CI(co_mult_18s_18s_0_0_8), 
           .COUT(co_mult_18s_18s_0_0_9), .S0(s_mult_18s_18s_0_0_17), .S1(s_mult_18s_18s_0_0_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_10 (.A0(mult_18s_18s_0_pp_0_19), .A1(GND_net), 
           .B0(mult_18s_18s_0_pp_1_19), .B1(mult_18s_18s_0_pp_1_20), .CI(co_mult_18s_18s_0_0_9), 
           .COUT(co_mult_18s_18s_0_0_10), .S0(s_mult_18s_18s_0_0_19), .S1(s_mult_18s_18s_0_0_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_0_11 (.A0(GND_net), .A1(GND_net), .B0(mult_18s_18s_0_pp_1_21), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_0_10), .COUT(co_mult_18s_18s_0_0_11), 
           .S0(s_mult_18s_18s_0_0_21), .S1(s_mult_18s_18s_0_0_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_0_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_0_11), .S0(s_mult_18s_18s_0_0_23)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_1_1 (.A0(GND_net), .A1(mult_18s_18s_0_pp_2_6), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_3_6), .CI(GND_net), .COUT(co_mult_18s_18s_0_1_1), 
           .S1(s_mult_18s_18s_0_1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_2 (.A0(mult_18s_18s_0_pp_2_7), .A1(mult_18s_18s_0_pp_2_8), 
           .B0(mult_18s_18s_0_pp_3_7), .B1(mult_18s_18s_0_pp_3_8), .CI(co_mult_18s_18s_0_1_1), 
           .COUT(co_mult_18s_18s_0_1_2), .S0(s_mult_18s_18s_0_1_7), .S1(s_mult_18s_18s_0_1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_3 (.A0(mult_18s_18s_0_pp_2_9), .A1(mult_18s_18s_0_pp_2_10), 
           .B0(mult_18s_18s_0_pp_3_9), .B1(mult_18s_18s_0_pp_3_10), .CI(co_mult_18s_18s_0_1_2), 
           .COUT(co_mult_18s_18s_0_1_3), .S0(s_mult_18s_18s_0_1_9), .S1(s_mult_18s_18s_0_1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_4 (.A0(mult_18s_18s_0_pp_2_11), .A1(mult_18s_18s_0_pp_2_12), 
           .B0(mult_18s_18s_0_pp_3_11), .B1(mult_18s_18s_0_pp_3_12), .CI(co_mult_18s_18s_0_1_3), 
           .COUT(co_mult_18s_18s_0_1_4), .S0(s_mult_18s_18s_0_1_11), .S1(s_mult_18s_18s_0_1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_5 (.A0(mult_18s_18s_0_pp_2_13), .A1(mult_18s_18s_0_pp_2_14), 
           .B0(mult_18s_18s_0_pp_3_13), .B1(mult_18s_18s_0_pp_3_14), .CI(co_mult_18s_18s_0_1_4), 
           .COUT(co_mult_18s_18s_0_1_5), .S0(s_mult_18s_18s_0_1_13), .S1(s_mult_18s_18s_0_1_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_6 (.A0(mult_18s_18s_0_pp_2_15), .A1(mult_18s_18s_0_pp_2_16), 
           .B0(mult_18s_18s_0_pp_3_15), .B1(mult_18s_18s_0_pp_3_16), .CI(co_mult_18s_18s_0_1_5), 
           .COUT(co_mult_18s_18s_0_1_6), .S0(s_mult_18s_18s_0_1_15), .S1(s_mult_18s_18s_0_1_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_7 (.A0(mult_18s_18s_0_pp_2_17), .A1(mult_18s_18s_0_pp_2_18), 
           .B0(mult_18s_18s_0_pp_3_17), .B1(mult_18s_18s_0_pp_3_18), .CI(co_mult_18s_18s_0_1_6), 
           .COUT(co_mult_18s_18s_0_1_7), .S0(s_mult_18s_18s_0_1_17), .S1(s_mult_18s_18s_0_1_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_8 (.A0(mult_18s_18s_0_pp_2_19), .A1(mult_18s_18s_0_pp_2_20), 
           .B0(mult_18s_18s_0_pp_3_19), .B1(mult_18s_18s_0_pp_3_20), .CI(co_mult_18s_18s_0_1_7), 
           .COUT(co_mult_18s_18s_0_1_8), .S0(s_mult_18s_18s_0_1_19), .S1(s_mult_18s_18s_0_1_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_9 (.A0(mult_18s_18s_0_pp_2_21), .A1(mult_18s_18s_0_pp_2_22), 
           .B0(mult_18s_18s_0_pp_3_21), .B1(mult_18s_18s_0_pp_3_22), .CI(co_mult_18s_18s_0_1_8), 
           .COUT(co_mult_18s_18s_0_1_9), .S0(s_mult_18s_18s_0_1_21), .S1(s_mult_18s_18s_0_1_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_10 (.A0(mult_18s_18s_0_pp_2_23), .A1(GND_net), 
           .B0(mult_18s_18s_0_pp_3_23), .B1(mult_18s_18s_0_pp_3_24), .CI(co_mult_18s_18s_0_1_9), 
           .COUT(co_mult_18s_18s_0_1_10), .S0(s_mult_18s_18s_0_1_23), .S1(s_mult_18s_18s_0_1_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_1_11 (.A0(GND_net), .A1(GND_net), .B0(mult_18s_18s_0_pp_3_25), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_1_10), .COUT(co_mult_18s_18s_0_1_11), 
           .S0(s_mult_18s_18s_0_1_25), .S1(s_mult_18s_18s_0_1_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_1_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_1_11), .S0(s_mult_18s_18s_0_1_27)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_2_1 (.A0(GND_net), .A1(mult_18s_18s_0_pp_4_10), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_5_10), .CI(GND_net), .COUT(co_mult_18s_18s_0_2_1), 
           .S1(s_mult_18s_18s_0_2_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_2 (.A0(mult_18s_18s_0_pp_4_11), .A1(mult_18s_18s_0_pp_4_12), 
           .B0(mult_18s_18s_0_pp_5_11), .B1(mult_18s_18s_0_pp_5_12), .CI(co_mult_18s_18s_0_2_1), 
           .COUT(co_mult_18s_18s_0_2_2), .S0(s_mult_18s_18s_0_2_11), .S1(s_mult_18s_18s_0_2_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_3 (.A0(mult_18s_18s_0_pp_4_13), .A1(mult_18s_18s_0_pp_4_14), 
           .B0(mult_18s_18s_0_pp_5_13), .B1(mult_18s_18s_0_pp_5_14), .CI(co_mult_18s_18s_0_2_2), 
           .COUT(co_mult_18s_18s_0_2_3), .S0(s_mult_18s_18s_0_2_13), .S1(s_mult_18s_18s_0_2_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_4 (.A0(mult_18s_18s_0_pp_4_15), .A1(mult_18s_18s_0_pp_4_16), 
           .B0(mult_18s_18s_0_pp_5_15), .B1(mult_18s_18s_0_pp_5_16), .CI(co_mult_18s_18s_0_2_3), 
           .COUT(co_mult_18s_18s_0_2_4), .S0(s_mult_18s_18s_0_2_15), .S1(s_mult_18s_18s_0_2_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_5 (.A0(mult_18s_18s_0_pp_4_17), .A1(mult_18s_18s_0_pp_4_18), 
           .B0(mult_18s_18s_0_pp_5_17), .B1(mult_18s_18s_0_pp_5_18), .CI(co_mult_18s_18s_0_2_4), 
           .COUT(co_mult_18s_18s_0_2_5), .S0(s_mult_18s_18s_0_2_17), .S1(s_mult_18s_18s_0_2_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_6 (.A0(mult_18s_18s_0_pp_4_19), .A1(mult_18s_18s_0_pp_4_20), 
           .B0(mult_18s_18s_0_pp_5_19), .B1(mult_18s_18s_0_pp_5_20), .CI(co_mult_18s_18s_0_2_5), 
           .COUT(co_mult_18s_18s_0_2_6), .S0(s_mult_18s_18s_0_2_19), .S1(s_mult_18s_18s_0_2_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_7 (.A0(mult_18s_18s_0_pp_4_21), .A1(mult_18s_18s_0_pp_4_22), 
           .B0(mult_18s_18s_0_pp_5_21), .B1(mult_18s_18s_0_pp_5_22), .CI(co_mult_18s_18s_0_2_6), 
           .COUT(co_mult_18s_18s_0_2_7), .S0(s_mult_18s_18s_0_2_21), .S1(s_mult_18s_18s_0_2_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_8 (.A0(mult_18s_18s_0_pp_4_23), .A1(mult_18s_18s_0_pp_4_24), 
           .B0(mult_18s_18s_0_pp_5_23), .B1(mult_18s_18s_0_pp_5_24), .CI(co_mult_18s_18s_0_2_7), 
           .COUT(co_mult_18s_18s_0_2_8), .S0(s_mult_18s_18s_0_2_23), .S1(s_mult_18s_18s_0_2_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_9 (.A0(mult_18s_18s_0_pp_4_25), .A1(mult_18s_18s_0_pp_4_26), 
           .B0(mult_18s_18s_0_pp_5_25), .B1(mult_18s_18s_0_pp_5_26), .CI(co_mult_18s_18s_0_2_8), 
           .COUT(co_mult_18s_18s_0_2_9), .S0(s_mult_18s_18s_0_2_25), .S1(s_mult_18s_18s_0_2_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_10 (.A0(mult_18s_18s_0_pp_4_27), .A1(GND_net), 
           .B0(mult_18s_18s_0_pp_5_27), .B1(mult_18s_18s_0_pp_5_28), .CI(co_mult_18s_18s_0_2_9), 
           .COUT(co_mult_18s_18s_0_2_10), .S0(s_mult_18s_18s_0_2_27), .S1(s_mult_18s_18s_0_2_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_2_11 (.A0(GND_net), .A1(GND_net), .B0(mult_18s_18s_0_pp_5_29), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_2_10), .COUT(co_mult_18s_18s_0_2_11), 
           .S0(s_mult_18s_18s_0_2_29), .S1(s_mult_18s_18s_0_2_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_2_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_2_11), .S0(s_mult_18s_18s_0_2_31)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_3_1 (.A0(GND_net), .A1(mult_18s_18s_0_pp_6_14), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_7_14), .CI(GND_net), .COUT(co_mult_18s_18s_0_3_1), 
           .S1(s_mult_18s_18s_0_3_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_2 (.A0(mult_18s_18s_0_pp_6_15), .A1(mult_18s_18s_0_pp_6_16), 
           .B0(mult_18s_18s_0_pp_7_15), .B1(mult_18s_18s_0_pp_7_16), .CI(co_mult_18s_18s_0_3_1), 
           .COUT(co_mult_18s_18s_0_3_2), .S0(s_mult_18s_18s_0_3_15), .S1(s_mult_18s_18s_0_3_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_3 (.A0(mult_18s_18s_0_pp_6_17), .A1(mult_18s_18s_0_pp_6_18), 
           .B0(mult_18s_18s_0_pp_7_17), .B1(mult_18s_18s_0_pp_7_18), .CI(co_mult_18s_18s_0_3_2), 
           .COUT(co_mult_18s_18s_0_3_3), .S0(s_mult_18s_18s_0_3_17), .S1(s_mult_18s_18s_0_3_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_4 (.A0(mult_18s_18s_0_pp_6_19), .A1(mult_18s_18s_0_pp_6_20), 
           .B0(mult_18s_18s_0_pp_7_19), .B1(mult_18s_18s_0_pp_7_20), .CI(co_mult_18s_18s_0_3_3), 
           .COUT(co_mult_18s_18s_0_3_4), .S0(s_mult_18s_18s_0_3_19), .S1(s_mult_18s_18s_0_3_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_5 (.A0(mult_18s_18s_0_pp_6_21), .A1(mult_18s_18s_0_pp_6_22), 
           .B0(mult_18s_18s_0_pp_7_21), .B1(mult_18s_18s_0_pp_7_22), .CI(co_mult_18s_18s_0_3_4), 
           .COUT(co_mult_18s_18s_0_3_5), .S0(s_mult_18s_18s_0_3_21), .S1(s_mult_18s_18s_0_3_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_6 (.A0(mult_18s_18s_0_pp_6_23), .A1(mult_18s_18s_0_pp_6_24), 
           .B0(mult_18s_18s_0_pp_7_23), .B1(mult_18s_18s_0_pp_7_24), .CI(co_mult_18s_18s_0_3_5), 
           .COUT(co_mult_18s_18s_0_3_6), .S0(s_mult_18s_18s_0_3_23), .S1(s_mult_18s_18s_0_3_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_7 (.A0(mult_18s_18s_0_pp_6_25), .A1(mult_18s_18s_0_pp_6_26), 
           .B0(mult_18s_18s_0_pp_7_25), .B1(mult_18s_18s_0_pp_7_26), .CI(co_mult_18s_18s_0_3_6), 
           .COUT(co_mult_18s_18s_0_3_7), .S0(s_mult_18s_18s_0_3_25), .S1(s_mult_18s_18s_0_3_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_8 (.A0(mult_18s_18s_0_pp_6_27), .A1(mult_18s_18s_0_pp_6_28), 
           .B0(mult_18s_18s_0_pp_7_27), .B1(mult_18s_18s_0_pp_7_28), .CI(co_mult_18s_18s_0_3_7), 
           .COUT(co_mult_18s_18s_0_3_8), .S0(s_mult_18s_18s_0_3_27), .S1(s_mult_18s_18s_0_3_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_9 (.A0(mult_18s_18s_0_pp_6_29), .A1(mult_18s_18s_0_pp_6_30), 
           .B0(mult_18s_18s_0_pp_7_29), .B1(mult_18s_18s_0_pp_7_30), .CI(co_mult_18s_18s_0_3_8), 
           .COUT(co_mult_18s_18s_0_3_9), .S0(s_mult_18s_18s_0_3_29), .S1(s_mult_18s_18s_0_3_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_10 (.A0(mult_18s_18s_0_pp_6_31), .A1(GND_net), 
           .B0(mult_18s_18s_0_pp_7_31), .B1(mult_18s_18s_0_pp_7_32), .CI(co_mult_18s_18s_0_3_9), 
           .COUT(co_mult_18s_18s_0_3_10), .S0(s_mult_18s_18s_0_3_31), .S1(s_mult_18s_18s_0_3_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_3_11 (.A0(GND_net), .A1(GND_net), .B0(mult_18s_18s_0_pp_7_33), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_3_10), .COUT(co_mult_18s_18s_0_3_11), 
           .S0(s_mult_18s_18s_0_3_33), .S1(s_mult_18s_18s_0_3_34)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_3_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_3_11), .S0(s_mult_18s_18s_0_3_35)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_4_1 (.A0(GND_net), .A1(s_mult_18s_18s_0_0_4), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_2_4), .CI(GND_net), .COUT(co_mult_18s_18s_0_4_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_2 (.A0(s_mult_18s_18s_0_0_5), .A1(s_mult_18s_18s_0_0_6), 
           .B0(mult_18s_18s_0_pp_2_5), .B1(s_mult_18s_18s_0_1_6), .CI(co_mult_18s_18s_0_4_1), 
           .COUT(co_mult_18s_18s_0_4_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_3 (.A0(s_mult_18s_18s_0_0_7), .A1(s_mult_18s_18s_0_0_8), 
           .B0(s_mult_18s_18s_0_1_7), .B1(s_mult_18s_18s_0_1_8), .CI(co_mult_18s_18s_0_4_2), 
           .COUT(co_mult_18s_18s_0_4_3), .S1(s_mult_18s_18s_0_4_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_4 (.A0(s_mult_18s_18s_0_0_9), .A1(s_mult_18s_18s_0_0_10), 
           .B0(s_mult_18s_18s_0_1_9), .B1(s_mult_18s_18s_0_1_10), .CI(co_mult_18s_18s_0_4_3), 
           .COUT(co_mult_18s_18s_0_4_4), .S0(s_mult_18s_18s_0_4_9), .S1(s_mult_18s_18s_0_4_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_5 (.A0(s_mult_18s_18s_0_0_11), .A1(s_mult_18s_18s_0_0_12), 
           .B0(s_mult_18s_18s_0_1_11), .B1(s_mult_18s_18s_0_1_12), .CI(co_mult_18s_18s_0_4_4), 
           .COUT(co_mult_18s_18s_0_4_5), .S0(s_mult_18s_18s_0_4_11), .S1(s_mult_18s_18s_0_4_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_6 (.A0(s_mult_18s_18s_0_0_13), .A1(s_mult_18s_18s_0_0_14), 
           .B0(s_mult_18s_18s_0_1_13), .B1(s_mult_18s_18s_0_1_14), .CI(co_mult_18s_18s_0_4_5), 
           .COUT(co_mult_18s_18s_0_4_6), .S0(s_mult_18s_18s_0_4_13), .S1(s_mult_18s_18s_0_4_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_7 (.A0(s_mult_18s_18s_0_0_15), .A1(s_mult_18s_18s_0_0_16), 
           .B0(s_mult_18s_18s_0_1_15), .B1(s_mult_18s_18s_0_1_16), .CI(co_mult_18s_18s_0_4_6), 
           .COUT(co_mult_18s_18s_0_4_7), .S0(s_mult_18s_18s_0_4_15), .S1(s_mult_18s_18s_0_4_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_8 (.A0(s_mult_18s_18s_0_0_17), .A1(s_mult_18s_18s_0_0_18), 
           .B0(s_mult_18s_18s_0_1_17), .B1(s_mult_18s_18s_0_1_18), .CI(co_mult_18s_18s_0_4_7), 
           .COUT(co_mult_18s_18s_0_4_8), .S0(s_mult_18s_18s_0_4_17), .S1(s_mult_18s_18s_0_4_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_9 (.A0(s_mult_18s_18s_0_0_19), .A1(s_mult_18s_18s_0_0_20), 
           .B0(s_mult_18s_18s_0_1_19), .B1(s_mult_18s_18s_0_1_20), .CI(co_mult_18s_18s_0_4_8), 
           .COUT(co_mult_18s_18s_0_4_9), .S0(s_mult_18s_18s_0_4_19), .S1(s_mult_18s_18s_0_4_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_10 (.A0(s_mult_18s_18s_0_0_21), .A1(s_mult_18s_18s_0_0_22), 
           .B0(s_mult_18s_18s_0_1_21), .B1(s_mult_18s_18s_0_1_22), .CI(co_mult_18s_18s_0_4_9), 
           .COUT(co_mult_18s_18s_0_4_10), .S0(s_mult_18s_18s_0_4_21), .S1(s_mult_18s_18s_0_4_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_11 (.A0(s_mult_18s_18s_0_0_23), .A1(GND_net), 
           .B0(s_mult_18s_18s_0_1_23), .B1(s_mult_18s_18s_0_1_24), .CI(co_mult_18s_18s_0_4_10), 
           .COUT(co_mult_18s_18s_0_4_11), .S0(s_mult_18s_18s_0_4_23), .S1(s_mult_18s_18s_0_4_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_12 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_1_25), 
           .B1(s_mult_18s_18s_0_1_26), .CI(co_mult_18s_18s_0_4_11), .COUT(co_mult_18s_18s_0_4_12), 
           .S0(s_mult_18s_18s_0_4_25), .S1(s_mult_18s_18s_0_4_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_4_13 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_1_27), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_4_12), .COUT(co_mult_18s_18s_0_4_13), 
           .S0(s_mult_18s_18s_0_4_27), .S1(s_mult_18s_18s_0_4_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_4_14 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_4_13), .S0(s_mult_18s_18s_0_4_29)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_5_1 (.A0(GND_net), .A1(s_mult_18s_18s_0_2_12), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_6_12), .CI(GND_net), .COUT(co_mult_18s_18s_0_5_1), 
           .S1(s_mult_18s_18s_0_5_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_2 (.A0(s_mult_18s_18s_0_2_13), .A1(s_mult_18s_18s_0_2_14), 
           .B0(mult_18s_18s_0_pp_6_13), .B1(s_mult_18s_18s_0_3_14), .CI(co_mult_18s_18s_0_5_1), 
           .COUT(co_mult_18s_18s_0_5_2), .S0(s_mult_18s_18s_0_5_13), .S1(s_mult_18s_18s_0_5_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_3 (.A0(s_mult_18s_18s_0_2_15), .A1(s_mult_18s_18s_0_2_16), 
           .B0(s_mult_18s_18s_0_3_15), .B1(s_mult_18s_18s_0_3_16), .CI(co_mult_18s_18s_0_5_2), 
           .COUT(co_mult_18s_18s_0_5_3), .S0(s_mult_18s_18s_0_5_15), .S1(s_mult_18s_18s_0_5_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_4 (.A0(s_mult_18s_18s_0_2_17), .A1(s_mult_18s_18s_0_2_18), 
           .B0(s_mult_18s_18s_0_3_17), .B1(s_mult_18s_18s_0_3_18), .CI(co_mult_18s_18s_0_5_3), 
           .COUT(co_mult_18s_18s_0_5_4), .S0(s_mult_18s_18s_0_5_17), .S1(s_mult_18s_18s_0_5_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_5 (.A0(s_mult_18s_18s_0_2_19), .A1(s_mult_18s_18s_0_2_20), 
           .B0(s_mult_18s_18s_0_3_19), .B1(s_mult_18s_18s_0_3_20), .CI(co_mult_18s_18s_0_5_4), 
           .COUT(co_mult_18s_18s_0_5_5), .S0(s_mult_18s_18s_0_5_19), .S1(s_mult_18s_18s_0_5_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_6 (.A0(s_mult_18s_18s_0_2_21), .A1(s_mult_18s_18s_0_2_22), 
           .B0(s_mult_18s_18s_0_3_21), .B1(s_mult_18s_18s_0_3_22), .CI(co_mult_18s_18s_0_5_5), 
           .COUT(co_mult_18s_18s_0_5_6), .S0(s_mult_18s_18s_0_5_21), .S1(s_mult_18s_18s_0_5_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_7 (.A0(s_mult_18s_18s_0_2_23), .A1(s_mult_18s_18s_0_2_24), 
           .B0(s_mult_18s_18s_0_3_23), .B1(s_mult_18s_18s_0_3_24), .CI(co_mult_18s_18s_0_5_6), 
           .COUT(co_mult_18s_18s_0_5_7), .S0(s_mult_18s_18s_0_5_23), .S1(s_mult_18s_18s_0_5_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_8 (.A0(s_mult_18s_18s_0_2_25), .A1(s_mult_18s_18s_0_2_26), 
           .B0(s_mult_18s_18s_0_3_25), .B1(s_mult_18s_18s_0_3_26), .CI(co_mult_18s_18s_0_5_7), 
           .COUT(co_mult_18s_18s_0_5_8), .S0(s_mult_18s_18s_0_5_25), .S1(s_mult_18s_18s_0_5_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_9 (.A0(s_mult_18s_18s_0_2_27), .A1(s_mult_18s_18s_0_2_28), 
           .B0(s_mult_18s_18s_0_3_27), .B1(s_mult_18s_18s_0_3_28), .CI(co_mult_18s_18s_0_5_8), 
           .COUT(co_mult_18s_18s_0_5_9), .S0(s_mult_18s_18s_0_5_27), .S1(s_mult_18s_18s_0_5_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_10 (.A0(s_mult_18s_18s_0_2_29), .A1(s_mult_18s_18s_0_2_30), 
           .B0(s_mult_18s_18s_0_3_29), .B1(s_mult_18s_18s_0_3_30), .CI(co_mult_18s_18s_0_5_9), 
           .COUT(co_mult_18s_18s_0_5_10), .S0(s_mult_18s_18s_0_5_29), .S1(s_mult_18s_18s_0_5_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_11 (.A0(s_mult_18s_18s_0_2_31), .A1(GND_net), 
           .B0(s_mult_18s_18s_0_3_31), .B1(s_mult_18s_18s_0_3_32), .CI(co_mult_18s_18s_0_5_10), 
           .COUT(co_mult_18s_18s_0_5_11), .S0(s_mult_18s_18s_0_5_31), .S1(s_mult_18s_18s_0_5_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_12 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_3_33), 
           .B1(s_mult_18s_18s_0_3_34), .CI(co_mult_18s_18s_0_5_11), .COUT(co_mult_18s_18s_0_5_12), 
           .S0(s_mult_18s_18s_0_5_33), .S1(s_mult_18s_18s_0_5_34)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_5_13 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_3_35), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_5_12), .S0(s_mult_18s_18s_0_5_35)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_mult_18s_18s_0_6_1 (.A0(GND_net), .A1(s_mult_18s_18s_0_4_8), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_4_8), .CI(GND_net), .COUT(co_mult_18s_18s_0_6_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_2 (.A0(s_mult_18s_18s_0_4_9), .A1(s_mult_18s_18s_0_4_10), 
           .B0(mult_18s_18s_0_pp_4_9), .B1(s_mult_18s_18s_0_2_10), .CI(co_mult_18s_18s_0_6_1), 
           .COUT(co_mult_18s_18s_0_6_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_3 (.A0(s_mult_18s_18s_0_4_11), .A1(s_mult_18s_18s_0_4_12), 
           .B0(s_mult_18s_18s_0_2_11), .B1(s_mult_18s_18s_0_5_12), .CI(co_mult_18s_18s_0_6_2), 
           .COUT(co_mult_18s_18s_0_6_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_4 (.A0(s_mult_18s_18s_0_4_13), .A1(s_mult_18s_18s_0_4_14), 
           .B0(s_mult_18s_18s_0_5_13), .B1(s_mult_18s_18s_0_5_14), .CI(co_mult_18s_18s_0_6_3), 
           .COUT(co_mult_18s_18s_0_6_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_5 (.A0(s_mult_18s_18s_0_4_15), .A1(s_mult_18s_18s_0_4_16), 
           .B0(s_mult_18s_18s_0_5_15), .B1(s_mult_18s_18s_0_5_16), .CI(co_mult_18s_18s_0_6_4), 
           .COUT(co_mult_18s_18s_0_6_5), .S1(s_mult_18s_18s_0_6_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_6 (.A0(s_mult_18s_18s_0_4_17), .A1(s_mult_18s_18s_0_4_18), 
           .B0(s_mult_18s_18s_0_5_17), .B1(s_mult_18s_18s_0_5_18), .CI(co_mult_18s_18s_0_6_5), 
           .COUT(co_mult_18s_18s_0_6_6), .S0(s_mult_18s_18s_0_6_17), .S1(s_mult_18s_18s_0_6_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_7 (.A0(s_mult_18s_18s_0_4_19), .A1(s_mult_18s_18s_0_4_20), 
           .B0(s_mult_18s_18s_0_5_19), .B1(s_mult_18s_18s_0_5_20), .CI(co_mult_18s_18s_0_6_6), 
           .COUT(co_mult_18s_18s_0_6_7), .S0(s_mult_18s_18s_0_6_19), .S1(s_mult_18s_18s_0_6_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_8 (.A0(s_mult_18s_18s_0_4_21), .A1(s_mult_18s_18s_0_4_22), 
           .B0(s_mult_18s_18s_0_5_21), .B1(s_mult_18s_18s_0_5_22), .CI(co_mult_18s_18s_0_6_7), 
           .COUT(co_mult_18s_18s_0_6_8), .S0(s_mult_18s_18s_0_6_21), .S1(s_mult_18s_18s_0_6_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_9 (.A0(s_mult_18s_18s_0_4_23), .A1(s_mult_18s_18s_0_4_24), 
           .B0(s_mult_18s_18s_0_5_23), .B1(s_mult_18s_18s_0_5_24), .CI(co_mult_18s_18s_0_6_8), 
           .COUT(co_mult_18s_18s_0_6_9), .S0(s_mult_18s_18s_0_6_23), .S1(s_mult_18s_18s_0_6_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_10 (.A0(s_mult_18s_18s_0_4_25), .A1(s_mult_18s_18s_0_4_26), 
           .B0(s_mult_18s_18s_0_5_25), .B1(s_mult_18s_18s_0_5_26), .CI(co_mult_18s_18s_0_6_9), 
           .COUT(co_mult_18s_18s_0_6_10), .S0(s_mult_18s_18s_0_6_25), .S1(s_mult_18s_18s_0_6_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_11 (.A0(s_mult_18s_18s_0_4_27), .A1(s_mult_18s_18s_0_4_28), 
           .B0(s_mult_18s_18s_0_5_27), .B1(s_mult_18s_18s_0_5_28), .CI(co_mult_18s_18s_0_6_10), 
           .COUT(co_mult_18s_18s_0_6_11), .S0(s_mult_18s_18s_0_6_27), .S1(s_mult_18s_18s_0_6_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_12 (.A0(s_mult_18s_18s_0_4_29), .A1(GND_net), 
           .B0(s_mult_18s_18s_0_5_29), .B1(s_mult_18s_18s_0_5_30), .CI(co_mult_18s_18s_0_6_11), 
           .COUT(co_mult_18s_18s_0_6_12), .S0(s_mult_18s_18s_0_6_29), .S1(s_mult_18s_18s_0_6_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_13 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_5_31), 
           .B1(s_mult_18s_18s_0_5_32), .CI(co_mult_18s_18s_0_6_12), .COUT(co_mult_18s_18s_0_6_13), 
           .S0(s_mult_18s_18s_0_6_31), .S1(s_mult_18s_18s_0_6_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_14 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_5_33), 
           .B1(s_mult_18s_18s_0_5_34), .CI(co_mult_18s_18s_0_6_13), .COUT(co_mult_18s_18s_0_6_14), 
           .S0(s_mult_18s_18s_0_6_33), .S1(s_mult_18s_18s_0_6_34)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B mult_18s_18s_0_add_6_15 (.A0(GND_net), .A1(GND_net), .B0(s_mult_18s_18s_0_5_35), 
           .B1(GND_net), .CI(co_mult_18s_18s_0_6_14), .S0(s_mult_18s_18s_0_6_35)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B Cadd_t_mult_18s_18s_0_7_1 (.A0(GND_net), .A1(s_mult_18s_18s_0_6_16), 
           .B0(GND_net), .B1(mult_18s_18s_0_pp_8_16), .CI(GND_net), .COUT(co_t_mult_18s_18s_0_7_1), 
           .S1(f1_coeff_x_value[0])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_2 (.A0(s_mult_18s_18s_0_6_17), .A1(s_mult_18s_18s_0_6_18), 
           .B0(mult_18s_18s_0_pp_8_17), .B1(mult_18s_18s_0_pp_8_18), .CI(co_t_mult_18s_18s_0_7_1), 
           .COUT(co_t_mult_18s_18s_0_7_2), .S0(f1_coeff_x_value[1]), .S1(f1_coeff_x_value[2])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_3 (.A0(s_mult_18s_18s_0_6_19), .A1(s_mult_18s_18s_0_6_20), 
           .B0(mult_18s_18s_0_pp_8_19), .B1(mult_18s_18s_0_pp_8_20), .CI(co_t_mult_18s_18s_0_7_2), 
           .COUT(co_t_mult_18s_18s_0_7_3), .S0(f1_coeff_x_value[3]), .S1(f1_coeff_x_value[4])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_4 (.A0(s_mult_18s_18s_0_6_21), .A1(s_mult_18s_18s_0_6_22), 
           .B0(mult_18s_18s_0_pp_8_21), .B1(mult_18s_18s_0_pp_8_22), .CI(co_t_mult_18s_18s_0_7_3), 
           .COUT(co_t_mult_18s_18s_0_7_4), .S0(f1_coeff_x_value[5]), .S1(f1_coeff_x_value[6])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_5 (.A0(s_mult_18s_18s_0_6_23), .A1(s_mult_18s_18s_0_6_24), 
           .B0(mult_18s_18s_0_pp_8_23), .B1(mult_18s_18s_0_pp_8_24), .CI(co_t_mult_18s_18s_0_7_4), 
           .COUT(co_t_mult_18s_18s_0_7_5), .S0(f1_coeff_x_value[7]), .S1(f1_coeff_x_value[8])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_6 (.A0(s_mult_18s_18s_0_6_25), .A1(s_mult_18s_18s_0_6_26), 
           .B0(mult_18s_18s_0_pp_8_25), .B1(mult_18s_18s_0_pp_8_26), .CI(co_t_mult_18s_18s_0_7_5), 
           .COUT(co_t_mult_18s_18s_0_7_6), .S0(f1_coeff_x_value[9]), .S1(f1_coeff_x_value[10])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_7 (.A0(s_mult_18s_18s_0_6_27), .A1(s_mult_18s_18s_0_6_28), 
           .B0(mult_18s_18s_0_pp_8_27), .B1(mult_18s_18s_0_pp_8_28), .CI(co_t_mult_18s_18s_0_7_6), 
           .COUT(co_t_mult_18s_18s_0_7_7), .S0(f1_coeff_x_value[11]), .S1(f1_coeff_x_value[12])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_8 (.A0(s_mult_18s_18s_0_6_29), .A1(s_mult_18s_18s_0_6_30), 
           .B0(mult_18s_18s_0_pp_8_29), .B1(mult_18s_18s_0_pp_8_30), .CI(co_t_mult_18s_18s_0_7_7), 
           .COUT(co_t_mult_18s_18s_0_7_8), .S0(f1_coeff_x_value[13]), .S1(f1_coeff_x_value[14])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_9 (.A0(s_mult_18s_18s_0_6_31), .A1(s_mult_18s_18s_0_6_32), 
           .B0(mult_18s_18s_0_pp_8_31), .B1(mult_18s_18s_0_pp_8_32), .CI(co_t_mult_18s_18s_0_7_8), 
           .COUT(co_t_mult_18s_18s_0_7_9), .S0(f1_coeff_x_value[15]), .S1(f1_coeff_x_value[16])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_10 (.A0(s_mult_18s_18s_0_6_33), .A1(s_mult_18s_18s_0_6_34), 
           .B0(mult_18s_18s_0_pp_8_33), .B1(mult_18s_18s_0_pp_8_34), .CI(co_t_mult_18s_18s_0_7_9), 
           .COUT(co_t_mult_18s_18s_0_7_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    FADD2B t_mult_18s_18s_0_add_7_11 (.A0(s_mult_18s_18s_0_6_35), .A1(GND_net), 
           .B0(mult_18s_18s_0_pp_8_35), .B1(GND_net), .CI(co_t_mult_18s_18s_0_7_10), 
           .S0(f1_coeff_x_value[17])) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), .A2(f1_coeff[1]), 
          .A3(f1_coeff[2]), .B0(f1_value[1]), .B1(f1_value[0]), .B2(f1_value[1]), 
          .B3(f1_value[0]), .CI(mult_18s_18s_0_cin_lr_0), .CO(mco), .P1(mult_18s_18s_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), .A2(f1_coeff[3]), 
          .A3(f1_coeff[4]), .B0(f1_value[1]), .B1(f1_value[0]), .B2(f1_value[1]), 
          .B3(f1_value[0]), .CI(mco), .CO(mco_1), .P0(mult_18s_18s_0_pp_0_3), 
          .P1(mult_18s_18s_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), .A2(f1_coeff[5]), 
          .A3(f1_coeff[6]), .B0(f1_value[1]), .B1(f1_value[0]), .B2(f1_value[1]), 
          .B3(f1_value[0]), .CI(mco_1), .CO(mco_2), .P0(mult_18s_18s_0_pp_0_5), 
          .P1(mult_18s_18s_0_pp_0_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), .A2(f1_coeff[7]), 
          .A3(f1_coeff[8]), .B0(f1_value[1]), .B1(f1_value[0]), .B2(f1_value[1]), 
          .B3(f1_value[0]), .CI(mco_2), .CO(mco_3), .P0(mult_18s_18s_0_pp_0_7), 
          .P1(mult_18s_18s_0_pp_0_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), .A2(f1_coeff[9]), 
          .A3(f1_coeff[10]), .B0(f1_value[1]), .B1(f1_value[0]), .B2(f1_value[1]), 
          .B3(f1_value[0]), .CI(mco_3), .CO(mco_4), .P0(mult_18s_18s_0_pp_0_9), 
          .P1(mult_18s_18s_0_pp_0_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[1]), .B1(f1_value[0]), 
          .B2(f1_value[1]), .B3(f1_value[0]), .CI(mco_4), .CO(mco_5), 
          .P0(mult_18s_18s_0_pp_0_11), .P1(mult_18s_18s_0_pp_0_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[1]), .B1(f1_value[0]), 
          .B2(f1_value[1]), .B3(f1_value[0]), .CI(mco_5), .CO(mco_6), 
          .P0(mult_18s_18s_0_pp_0_13), .P1(mult_18s_18s_0_pp_0_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[1]), .B1(f1_value[0]), 
          .B2(f1_value[1]), .B3(f1_value[0]), .CI(mco_6), .CO(mco_7), 
          .P0(mult_18s_18s_0_pp_0_15), .P1(mult_18s_18s_0_pp_0_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_0_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_0_8_n2), 
          .A2(mult_18s_18s_0_mult_0_8_n1), .A3(VCC_net), .B0(f1_value[1]), 
          .B1(VCC_net), .B2(VCC_net), .B3(VCC_net), .CI(mco_7), .CO(mfco), 
          .P0(mult_18s_18s_0_pp_0_17), .P1(mult_18s_18s_0_pp_0_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), .A2(f1_coeff[1]), 
          .A3(f1_coeff[2]), .B0(f1_value[3]), .B1(f1_value[2]), .B2(f1_value[3]), 
          .B3(f1_value[2]), .CI(mult_18s_18s_0_cin_lr_2), .CO(mco_8), 
          .P0(mult_18s_18s_0_pp_1_3), .P1(mult_18s_18s_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), .A2(f1_coeff[3]), 
          .A3(f1_coeff[4]), .B0(f1_value[3]), .B1(f1_value[2]), .B2(f1_value[3]), 
          .B3(f1_value[2]), .CI(mco_8), .CO(mco_9), .P0(mult_18s_18s_0_pp_1_5), 
          .P1(mult_18s_18s_0_pp_1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), .A2(f1_coeff[5]), 
          .A3(f1_coeff[6]), .B0(f1_value[3]), .B1(f1_value[2]), .B2(f1_value[3]), 
          .B3(f1_value[2]), .CI(mco_9), .CO(mco_10), .P0(mult_18s_18s_0_pp_1_7), 
          .P1(mult_18s_18s_0_pp_1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), .A2(f1_coeff[7]), 
          .A3(f1_coeff[8]), .B0(f1_value[3]), .B1(f1_value[2]), .B2(f1_value[3]), 
          .B3(f1_value[2]), .CI(mco_10), .CO(mco_11), .P0(mult_18s_18s_0_pp_1_9), 
          .P1(mult_18s_18s_0_pp_1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), .A2(f1_coeff[9]), 
          .A3(f1_coeff[10]), .B0(f1_value[3]), .B1(f1_value[2]), .B2(f1_value[3]), 
          .B3(f1_value[2]), .CI(mco_11), .CO(mco_12), .P0(mult_18s_18s_0_pp_1_11), 
          .P1(mult_18s_18s_0_pp_1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[3]), .B1(f1_value[2]), 
          .B2(f1_value[3]), .B3(f1_value[2]), .CI(mco_12), .CO(mco_13), 
          .P0(mult_18s_18s_0_pp_1_13), .P1(mult_18s_18s_0_pp_1_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[3]), .B1(f1_value[2]), 
          .B2(f1_value[3]), .B3(f1_value[2]), .CI(mco_13), .CO(mco_14), 
          .P0(mult_18s_18s_0_pp_1_15), .P1(mult_18s_18s_0_pp_1_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[3]), .B1(f1_value[2]), 
          .B2(f1_value[3]), .B3(f1_value[2]), .CI(mco_14), .CO(mco_15), 
          .P0(mult_18s_18s_0_pp_1_17), .P1(mult_18s_18s_0_pp_1_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_2_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_2_8_n2), 
          .A2(mult_18s_18s_0_mult_2_8_n1), .A3(GND_net), .B0(f1_value[3]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[2]), .CI(mco_15), 
          .CO(mfco_1), .P0(mult_18s_18s_0_pp_1_19), .P1(mult_18s_18s_0_pp_1_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), .A2(f1_coeff[1]), 
          .A3(f1_coeff[2]), .B0(f1_value[5]), .B1(f1_value[4]), .B2(f1_value[5]), 
          .B3(f1_value[4]), .CI(mult_18s_18s_0_cin_lr_4), .CO(mco_16), 
          .P0(mult_18s_18s_0_pp_2_5), .P1(mult_18s_18s_0_pp_2_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), .A2(f1_coeff[3]), 
          .A3(f1_coeff[4]), .B0(f1_value[5]), .B1(f1_value[4]), .B2(f1_value[5]), 
          .B3(f1_value[4]), .CI(mco_16), .CO(mco_17), .P0(mult_18s_18s_0_pp_2_7), 
          .P1(mult_18s_18s_0_pp_2_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), .A2(f1_coeff[5]), 
          .A3(f1_coeff[6]), .B0(f1_value[5]), .B1(f1_value[4]), .B2(f1_value[5]), 
          .B3(f1_value[4]), .CI(mco_17), .CO(mco_18), .P0(mult_18s_18s_0_pp_2_9), 
          .P1(mult_18s_18s_0_pp_2_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), .A2(f1_coeff[7]), 
          .A3(f1_coeff[8]), .B0(f1_value[5]), .B1(f1_value[4]), .B2(f1_value[5]), 
          .B3(f1_value[4]), .CI(mco_18), .CO(mco_19), .P0(mult_18s_18s_0_pp_2_11), 
          .P1(mult_18s_18s_0_pp_2_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), .A2(f1_coeff[9]), 
          .A3(f1_coeff[10]), .B0(f1_value[5]), .B1(f1_value[4]), .B2(f1_value[5]), 
          .B3(f1_value[4]), .CI(mco_19), .CO(mco_20), .P0(mult_18s_18s_0_pp_2_13), 
          .P1(mult_18s_18s_0_pp_2_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[5]), .B1(f1_value[4]), 
          .B2(f1_value[5]), .B3(f1_value[4]), .CI(mco_20), .CO(mco_21), 
          .P0(mult_18s_18s_0_pp_2_15), .P1(mult_18s_18s_0_pp_2_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[5]), .B1(f1_value[4]), 
          .B2(f1_value[5]), .B3(f1_value[4]), .CI(mco_21), .CO(mco_22), 
          .P0(mult_18s_18s_0_pp_2_17), .P1(mult_18s_18s_0_pp_2_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[5]), .B1(f1_value[4]), 
          .B2(f1_value[5]), .B3(f1_value[4]), .CI(mco_22), .CO(mco_23), 
          .P0(mult_18s_18s_0_pp_2_19), .P1(mult_18s_18s_0_pp_2_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_4_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_4_8_n2), 
          .A2(mult_18s_18s_0_mult_4_8_n1), .A3(GND_net), .B0(f1_value[5]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[4]), .CI(mco_23), 
          .CO(mfco_2), .P0(mult_18s_18s_0_pp_2_21), .P1(mult_18s_18s_0_pp_2_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), .A2(f1_coeff[1]), 
          .A3(f1_coeff[2]), .B0(f1_value[7]), .B1(f1_value[6]), .B2(f1_value[7]), 
          .B3(f1_value[6]), .CI(mult_18s_18s_0_cin_lr_6), .CO(mco_24), 
          .P0(mult_18s_18s_0_pp_3_7), .P1(mult_18s_18s_0_pp_3_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), .A2(f1_coeff[3]), 
          .A3(f1_coeff[4]), .B0(f1_value[7]), .B1(f1_value[6]), .B2(f1_value[7]), 
          .B3(f1_value[6]), .CI(mco_24), .CO(mco_25), .P0(mult_18s_18s_0_pp_3_9), 
          .P1(mult_18s_18s_0_pp_3_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), .A2(f1_coeff[5]), 
          .A3(f1_coeff[6]), .B0(f1_value[7]), .B1(f1_value[6]), .B2(f1_value[7]), 
          .B3(f1_value[6]), .CI(mco_25), .CO(mco_26), .P0(mult_18s_18s_0_pp_3_11), 
          .P1(mult_18s_18s_0_pp_3_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), .A2(f1_coeff[7]), 
          .A3(f1_coeff[8]), .B0(f1_value[7]), .B1(f1_value[6]), .B2(f1_value[7]), 
          .B3(f1_value[6]), .CI(mco_26), .CO(mco_27), .P0(mult_18s_18s_0_pp_3_13), 
          .P1(mult_18s_18s_0_pp_3_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), .A2(f1_coeff[9]), 
          .A3(f1_coeff[10]), .B0(f1_value[7]), .B1(f1_value[6]), .B2(f1_value[7]), 
          .B3(f1_value[6]), .CI(mco_27), .CO(mco_28), .P0(mult_18s_18s_0_pp_3_15), 
          .P1(mult_18s_18s_0_pp_3_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[7]), .B1(f1_value[6]), 
          .B2(f1_value[7]), .B3(f1_value[6]), .CI(mco_28), .CO(mco_29), 
          .P0(mult_18s_18s_0_pp_3_17), .P1(mult_18s_18s_0_pp_3_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[7]), .B1(f1_value[6]), 
          .B2(f1_value[7]), .B3(f1_value[6]), .CI(mco_29), .CO(mco_30), 
          .P0(mult_18s_18s_0_pp_3_19), .P1(mult_18s_18s_0_pp_3_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[7]), .B1(f1_value[6]), 
          .B2(f1_value[7]), .B3(f1_value[6]), .CI(mco_30), .CO(mco_31), 
          .P0(mult_18s_18s_0_pp_3_21), .P1(mult_18s_18s_0_pp_3_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_6_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_6_8_n2), 
          .A2(mult_18s_18s_0_mult_6_8_n1), .A3(GND_net), .B0(f1_value[7]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[6]), .CI(mco_31), 
          .CO(mfco_3), .P0(mult_18s_18s_0_pp_3_23), .P1(mult_18s_18s_0_pp_3_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), .A2(f1_coeff[1]), 
          .A3(f1_coeff[2]), .B0(f1_value[9]), .B1(f1_value[8]), .B2(f1_value[9]), 
          .B3(f1_value[8]), .CI(mult_18s_18s_0_cin_lr_8), .CO(mco_32), 
          .P0(mult_18s_18s_0_pp_4_9), .P1(mult_18s_18s_0_pp_4_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), .A2(f1_coeff[3]), 
          .A3(f1_coeff[4]), .B0(f1_value[9]), .B1(f1_value[8]), .B2(f1_value[9]), 
          .B3(f1_value[8]), .CI(mco_32), .CO(mco_33), .P0(mult_18s_18s_0_pp_4_11), 
          .P1(mult_18s_18s_0_pp_4_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), .A2(f1_coeff[5]), 
          .A3(f1_coeff[6]), .B0(f1_value[9]), .B1(f1_value[8]), .B2(f1_value[9]), 
          .B3(f1_value[8]), .CI(mco_33), .CO(mco_34), .P0(mult_18s_18s_0_pp_4_13), 
          .P1(mult_18s_18s_0_pp_4_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), .A2(f1_coeff[7]), 
          .A3(f1_coeff[8]), .B0(f1_value[9]), .B1(f1_value[8]), .B2(f1_value[9]), 
          .B3(f1_value[8]), .CI(mco_34), .CO(mco_35), .P0(mult_18s_18s_0_pp_4_15), 
          .P1(mult_18s_18s_0_pp_4_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), .A2(f1_coeff[9]), 
          .A3(f1_coeff[10]), .B0(f1_value[9]), .B1(f1_value[8]), .B2(f1_value[9]), 
          .B3(f1_value[8]), .CI(mco_35), .CO(mco_36), .P0(mult_18s_18s_0_pp_4_17), 
          .P1(mult_18s_18s_0_pp_4_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[9]), .B1(f1_value[8]), 
          .B2(f1_value[9]), .B3(f1_value[8]), .CI(mco_36), .CO(mco_37), 
          .P0(mult_18s_18s_0_pp_4_19), .P1(mult_18s_18s_0_pp_4_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[9]), .B1(f1_value[8]), 
          .B2(f1_value[9]), .B3(f1_value[8]), .CI(mco_37), .CO(mco_38), 
          .P0(mult_18s_18s_0_pp_4_21), .P1(mult_18s_18s_0_pp_4_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[9]), .B1(f1_value[8]), 
          .B2(f1_value[9]), .B3(f1_value[8]), .CI(mco_38), .CO(mco_39), 
          .P0(mult_18s_18s_0_pp_4_23), .P1(mult_18s_18s_0_pp_4_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_8_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_8_8_n2), 
          .A2(mult_18s_18s_0_mult_8_8_n1), .A3(GND_net), .B0(f1_value[9]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[8]), .CI(mco_39), 
          .CO(mfco_4), .P0(mult_18s_18s_0_pp_4_25), .P1(mult_18s_18s_0_pp_4_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), 
          .A2(f1_coeff[1]), .A3(f1_coeff[2]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mult_18s_18s_0_cin_lr_10), 
          .CO(mco_40), .P0(mult_18s_18s_0_pp_5_11), .P1(mult_18s_18s_0_pp_5_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), 
          .A2(f1_coeff[3]), .A3(f1_coeff[4]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_40), .CO(mco_41), 
          .P0(mult_18s_18s_0_pp_5_13), .P1(mult_18s_18s_0_pp_5_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), 
          .A2(f1_coeff[5]), .A3(f1_coeff[6]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_41), .CO(mco_42), 
          .P0(mult_18s_18s_0_pp_5_15), .P1(mult_18s_18s_0_pp_5_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), 
          .A2(f1_coeff[7]), .A3(f1_coeff[8]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_42), .CO(mco_43), 
          .P0(mult_18s_18s_0_pp_5_17), .P1(mult_18s_18s_0_pp_5_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), 
          .A2(f1_coeff[9]), .A3(f1_coeff[10]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_43), .CO(mco_44), 
          .P0(mult_18s_18s_0_pp_5_19), .P1(mult_18s_18s_0_pp_5_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_44), .CO(mco_45), 
          .P0(mult_18s_18s_0_pp_5_21), .P1(mult_18s_18s_0_pp_5_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_45), .CO(mco_46), 
          .P0(mult_18s_18s_0_pp_5_23), .P1(mult_18s_18s_0_pp_5_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[11]), .B1(f1_value[10]), 
          .B2(f1_value[11]), .B3(f1_value[10]), .CI(mco_46), .CO(mco_47), 
          .P0(mult_18s_18s_0_pp_5_25), .P1(mult_18s_18s_0_pp_5_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_10_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_10_8_n2), 
          .A2(mult_18s_18s_0_mult_10_8_n1), .A3(GND_net), .B0(f1_value[11]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[10]), .CI(mco_47), 
          .CO(mfco_5), .P0(mult_18s_18s_0_pp_5_27), .P1(mult_18s_18s_0_pp_5_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), 
          .A2(f1_coeff[1]), .A3(f1_coeff[2]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mult_18s_18s_0_cin_lr_12), 
          .CO(mco_48), .P0(mult_18s_18s_0_pp_6_13), .P1(mult_18s_18s_0_pp_6_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), 
          .A2(f1_coeff[3]), .A3(f1_coeff[4]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_48), .CO(mco_49), 
          .P0(mult_18s_18s_0_pp_6_15), .P1(mult_18s_18s_0_pp_6_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), 
          .A2(f1_coeff[5]), .A3(f1_coeff[6]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_49), .CO(mco_50), 
          .P0(mult_18s_18s_0_pp_6_17), .P1(mult_18s_18s_0_pp_6_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), 
          .A2(f1_coeff[7]), .A3(f1_coeff[8]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_50), .CO(mco_51), 
          .P0(mult_18s_18s_0_pp_6_19), .P1(mult_18s_18s_0_pp_6_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), 
          .A2(f1_coeff[9]), .A3(f1_coeff[10]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_51), .CO(mco_52), 
          .P0(mult_18s_18s_0_pp_6_21), .P1(mult_18s_18s_0_pp_6_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_52), .CO(mco_53), 
          .P0(mult_18s_18s_0_pp_6_23), .P1(mult_18s_18s_0_pp_6_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_53), .CO(mco_54), 
          .P0(mult_18s_18s_0_pp_6_25), .P1(mult_18s_18s_0_pp_6_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[13]), .B1(f1_value[12]), 
          .B2(f1_value[13]), .B3(f1_value[12]), .CI(mco_54), .CO(mco_55), 
          .P0(mult_18s_18s_0_pp_6_27), .P1(mult_18s_18s_0_pp_6_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_12_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_12_8_n2), 
          .A2(mult_18s_18s_0_mult_12_8_n1), .A3(GND_net), .B0(f1_value[13]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[12]), .CI(mco_55), 
          .CO(mfco_6), .P0(mult_18s_18s_0_pp_6_29), .P1(mult_18s_18s_0_pp_6_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_0 (.A0(f1_coeff[0]), .A1(f1_coeff[1]), 
          .A2(f1_coeff[1]), .A3(f1_coeff[2]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mult_18s_18s_0_cin_lr_14), 
          .CO(mco_56), .P0(mult_18s_18s_0_pp_7_15), .P1(mult_18s_18s_0_pp_7_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_1 (.A0(f1_coeff[2]), .A1(f1_coeff[3]), 
          .A2(f1_coeff[3]), .A3(f1_coeff[4]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_56), .CO(mco_57), 
          .P0(mult_18s_18s_0_pp_7_17), .P1(mult_18s_18s_0_pp_7_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_2 (.A0(f1_coeff[4]), .A1(f1_coeff[5]), 
          .A2(f1_coeff[5]), .A3(f1_coeff[6]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_57), .CO(mco_58), 
          .P0(mult_18s_18s_0_pp_7_19), .P1(mult_18s_18s_0_pp_7_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_3 (.A0(f1_coeff[6]), .A1(f1_coeff[7]), 
          .A2(f1_coeff[7]), .A3(f1_coeff[8]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_58), .CO(mco_59), 
          .P0(mult_18s_18s_0_pp_7_21), .P1(mult_18s_18s_0_pp_7_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_4 (.A0(f1_coeff[8]), .A1(f1_coeff[9]), 
          .A2(f1_coeff[9]), .A3(f1_coeff[10]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_59), .CO(mco_60), 
          .P0(mult_18s_18s_0_pp_7_23), .P1(mult_18s_18s_0_pp_7_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_5 (.A0(f1_coeff[10]), .A1(f1_coeff[11]), 
          .A2(f1_coeff[11]), .A3(f1_coeff[12]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_60), .CO(mco_61), 
          .P0(mult_18s_18s_0_pp_7_25), .P1(mult_18s_18s_0_pp_7_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_6 (.A0(f1_coeff[12]), .A1(f1_coeff[13]), 
          .A2(f1_coeff[13]), .A3(f1_coeff[14]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_61), .CO(mco_62), 
          .P0(mult_18s_18s_0_pp_7_27), .P1(mult_18s_18s_0_pp_7_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_7 (.A0(f1_coeff[14]), .A1(f1_coeff[15]), 
          .A2(f1_coeff[15]), .A3(f1_coeff[16]), .B0(f1_value[15]), .B1(f1_value[14]), 
          .B2(f1_value[15]), .B3(f1_value[14]), .CI(mco_62), .CO(mco_63), 
          .P0(mult_18s_18s_0_pp_7_29), .P1(mult_18s_18s_0_pp_7_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_14_8 (.A0(f1_coeff[16]), .A1(mult_18s_18s_0_mult_14_8_n2), 
          .A2(mult_18s_18s_0_mult_14_8_n1), .A3(GND_net), .B0(f1_value[15]), 
          .B1(VCC_net), .B2(VCC_net), .B3(f1_value[14]), .CI(mco_63), 
          .CO(mfco_7), .P0(mult_18s_18s_0_pp_7_31), .P1(mult_18s_18s_0_pp_7_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_0 (.A0(mult_18s_18s_0_mult_16_0_n0), .A1(f1_coeff[1]), 
          .A2(mult_18s_18s_0_mult_16_0_n1), .A3(f1_coeff[2]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mult_18s_18s_0_cin_lr_16), 
          .CO(mco_64), .P0(mult_18s_18s_0_pp_8_17), .P1(mult_18s_18s_0_pp_8_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_1 (.A0(mult_18s_18s_0_mult_16_1_n0), .A1(f1_coeff[3]), 
          .A2(mult_18s_18s_0_mult_16_1_n1), .A3(f1_coeff[4]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_64), 
          .CO(mco_65), .P0(mult_18s_18s_0_pp_8_19), .P1(mult_18s_18s_0_pp_8_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_2 (.A0(mult_18s_18s_0_mult_16_2_n0), .A1(f1_coeff[5]), 
          .A2(mult_18s_18s_0_mult_16_2_n1), .A3(f1_coeff[6]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_65), 
          .CO(mco_66), .P0(mult_18s_18s_0_pp_8_21), .P1(mult_18s_18s_0_pp_8_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_3 (.A0(mult_18s_18s_0_mult_16_3_n0), .A1(f1_coeff[7]), 
          .A2(mult_18s_18s_0_mult_16_3_n1), .A3(f1_coeff[8]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_66), 
          .CO(mco_67), .P0(mult_18s_18s_0_pp_8_23), .P1(mult_18s_18s_0_pp_8_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_4 (.A0(mult_18s_18s_0_mult_16_4_n0), .A1(f1_coeff[9]), 
          .A2(mult_18s_18s_0_mult_16_4_n1), .A3(f1_coeff[10]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_67), 
          .CO(mco_68), .P0(mult_18s_18s_0_pp_8_25), .P1(mult_18s_18s_0_pp_8_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_5 (.A0(mult_18s_18s_0_mult_16_5_n0), .A1(f1_coeff[11]), 
          .A2(mult_18s_18s_0_mult_16_5_n1), .A3(f1_coeff[12]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_68), 
          .CO(mco_69), .P0(mult_18s_18s_0_pp_8_27), .P1(mult_18s_18s_0_pp_8_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_6 (.A0(mult_18s_18s_0_mult_16_6_n0), .A1(f1_coeff[13]), 
          .A2(mult_18s_18s_0_mult_16_6_n1), .A3(f1_coeff[14]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_69), 
          .CO(mco_70), .P0(mult_18s_18s_0_pp_8_29), .P1(mult_18s_18s_0_pp_8_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_7 (.A0(mult_18s_18s_0_mult_16_7_n0), .A1(f1_coeff[15]), 
          .A2(mult_18s_18s_0_mult_16_7_n1), .A3(f1_coeff[16]), .B0(VCC_net), 
          .B1(f1_value[16]), .B2(VCC_net), .B3(f1_value[16]), .CI(mco_70), 
          .CO(mco_71), .P0(mult_18s_18s_0_pp_8_31), .P1(mult_18s_18s_0_pp_8_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    MULT2 mult_18s_18s_0_mult_16_8 (.A0(mult_18s_18s_0_mult_16_8_n0), .A1(mult_18s_18s_0_mult_16_8_n2), 
          .A2(f1_coeff[17]), .A3(GND_net), .B0(VCC_net), .B1(VCC_net), 
          .B2(f1_value[17]), .B3(f1_value[16]), .CI(mco_71), .CO(mfco_8), 
          .P0(mult_18s_18s_0_pp_8_33), .P1(mult_18s_18s_0_pp_8_34)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t32 (.A(f1_coeff[17]), .B(f1_value[6]), .Z(mult_18s_18s_0_mult_6_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t29 (.A(f1_coeff[17]), .B(f1_value[8]), .Z(mult_18s_18s_0_mult_8_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t26 (.A(f1_coeff[17]), .B(f1_value[10]), .Z(mult_18s_18s_0_mult_10_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t23 (.A(f1_coeff[17]), .B(f1_value[12]), .Z(mult_18s_18s_0_mult_12_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t20 (.A(f1_coeff[17]), .B(f1_value[14]), .Z(mult_18s_18s_0_mult_14_8_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    ND2 ND2_t17 (.A(f1_coeff[1]), .B(f1_value[17]), .Z(mult_18s_18s_0_mult_16_0_n1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/sec29/desktop/i2s_iot/signed_mul.v(10[20:25])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

