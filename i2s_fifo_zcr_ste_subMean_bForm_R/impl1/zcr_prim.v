// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Thu Mar 02 13:13:05 2017
//
// Verilog Description of module zcr
//

module zcr (clk, data, reset, zcr_count, zcr_valid) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(1[8:11])
    input clk;   // c:/users/sec29/desktop/i2s_iot/zcr.v(12[7:10])
    input [15:0]data;   // c:/users/sec29/desktop/i2s_iot/zcr.v(13[25:29])
    input reset;   // c:/users/sec29/desktop/i2s_iot/zcr.v(14[7:12])
    output [5:0]zcr_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    output zcr_valid;   // c:/users/sec29/desktop/i2s_iot/zcr.v(16[12:21])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(12[7:10])
    
    wire GND_net, VCC_net, data_c_0, reset_c, zcr_count_c_5, zcr_count_c_4, 
        zcr_count_c_3, zcr_count_c_2, zcr_count_c_1, zcr_count_c_0;
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    
    wire n1054, n378, n1106, n1003, n1103, n1005;
    wire [5:0]n102;
    
    wire n1117, n376, zcr_window_0_0, n374;
    wire [4:0]n154;
    
    wire n382, n1116, zcr_window_1_0, zcr_window_2_0, zcr_window_3_0, 
        zcr_window_4_0, zcr_window_5_0, zcr_window_6_0, zcr_window_7_0, 
        zcr_window_8_0, zcr_window_9_0, zcr_window_10_0, zcr_window_11_0, 
        zcr_window_12_0, zcr_window_13_0, zcr_window_14_0, zcr_window_15_0, 
        zcr_window_16_0, zcr_window_17_0, zcr_window_18_0, zcr_window_19_0, 
        zcr_window_20_0, zcr_window_21_0, zcr_window_22_0, zcr_window_23_0, 
        zcr_window_24_0, n330, n1062, n310, n311, n306, n1082, 
        n1070, n1067, n1085, n332, n1066, n334, n1079, n1063, 
        n1185, n380, n384, n307, n1055, n1114, n1113, n1111, 
        n1110, n1108, n1107, n1004, n1105, n1104, n1084, n1102, 
        n1081, n1101, n1099, n1095, n34, n1184, n1183, n1078, 
        n11, n20, n144, n145, n1075, n1072, n1069, n1229, n1098, 
        n1096, n1181, n1180, n1179, n1094, n1076, n1178, n1177, 
        n1100, n1112, n349, n1002, n1065, n1176, n264, n1186, 
        n1189, n1188, n1187, n262, n1097, n1109;
    wire [4:0]n33;
    
    wire n1073, n1173, n1172, n1174, n1171, n1115;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_2_lut_3_lut_4_lut (.A(window_count[2]), .B(n1185), .C(window_count[1]), 
         .D(n1180), .Z(n1069)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    FD1P3DX zcr_count__i1 (.D(n374), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i1.GSR = "DISABLED";
    OB zcr_count_pad_5 (.I(zcr_count_c_5), .O(zcr_count[5]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    FD1S3DX window_count_94_95__i1 (.D(n1005), .CK(clk_c), .CD(reset_c), 
            .Q(window_count[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam window_count_94_95__i1.GSR = "DISABLED";
    MUX41 Mux_37_i224_1052 (.D0(zcr_window_20_0), .D1(zcr_window_21_0), 
          .D2(zcr_window_22_0), .D3(zcr_window_23_0), .SD1(n1181), .SD2(n154[1]), 
          .Z(n1116));
    GSR GSR_INST (.GSR(n144));
    IFS1P3DX i41_42 (.D(data_c_0), .SP(n145), .SCLK(clk_c), .CD(GND_net), 
            .Q(zcr_window_0_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i41_42.GSR = "ENABLED";
    FD1P3AX i89_90 (.D(data_c_0), .SP(n1073), .CK(clk_c), .Q(zcr_window_1_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i89_90.GSR = "ENABLED";
    FD1P3AX i137_138 (.D(data_c_0), .SP(n334), .CK(clk_c), .Q(zcr_window_2_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i137_138.GSR = "ENABLED";
    FD1P3AX i185_186 (.D(data_c_0), .SP(n1084), .CK(clk_c), .Q(zcr_window_3_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i185_186.GSR = "ENABLED";
    FD1P3AX i233_234 (.D(data_c_0), .SP(n332), .CK(clk_c), .Q(zcr_window_4_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i233_234.GSR = "ENABLED";
    FD1P3AX i281_282 (.D(data_c_0), .SP(n1069), .CK(clk_c), .Q(zcr_window_5_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i281_282.GSR = "ENABLED";
    FD1P3AX i329_330 (.D(data_c_0), .SP(n330), .CK(clk_c), .Q(zcr_window_6_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i329_330.GSR = "ENABLED";
    FD1P3AX i377_378 (.D(data_c_0), .SP(n1070), .CK(clk_c), .Q(zcr_window_7_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i377_378.GSR = "ENABLED";
    FD1P3AX i425_426 (.D(data_c_0), .SP(n1072), .CK(clk_c), .Q(zcr_window_8_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i425_426.GSR = "ENABLED";
    FD1P3AX i473_474 (.D(data_c_0), .SP(n1081), .CK(clk_c), .Q(zcr_window_9_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i473_474.GSR = "ENABLED";
    FD1P3AX i521_522 (.D(data_c_0), .SP(n1085), .CK(clk_c), .Q(zcr_window_10_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i521_522.GSR = "ENABLED";
    FD1P3AX i569_570 (.D(data_c_0), .SP(n1062), .CK(clk_c), .Q(zcr_window_11_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i569_570.GSR = "ENABLED";
    FD1P3AX i617_618 (.D(data_c_0), .SP(n1076), .CK(clk_c), .Q(zcr_window_12_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i617_618.GSR = "ENABLED";
    FD1P3AX i665_666 (.D(data_c_0), .SP(n1082), .CK(clk_c), .Q(zcr_window_13_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i665_666.GSR = "ENABLED";
    CCU2D add_69_5 (.A0(zcr_count_c_3), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(zcr_count_c_4), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1003), .COUT(n1004), .S0(n102[3]), .S1(n102[4]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(54[18:29])
    defparam add_69_5.INIT0 = 16'h5aaa;
    defparam add_69_5.INIT1 = 16'h5aaa;
    defparam add_69_5.INJECT1_0 = "NO";
    defparam add_69_5.INJECT1_1 = "NO";
    MUX41 Mux_19_i147_1049 (.D0(zcr_window_12_0), .D1(zcr_window_13_0), 
          .D2(zcr_window_14_0), .D3(zcr_window_15_0), .SD1(zcr_count_c_0), 
          .SD2(zcr_count_c_1), .Z(n1113));
    FD1P3AX i713_714 (.D(data_c_0), .SP(n1075), .CK(clk_c), .Q(zcr_window_14_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i713_714.GSR = "ENABLED";
    CCU2D add_69_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1105), .B1(n1102), .C1(zcr_count_c_0), .D1(GND_net), 
          .COUT(n1002), .S1(n102[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(54[18:29])
    defparam add_69_1.INIT0 = 16'hF000;
    defparam add_69_1.INIT1 = 16'h9696;
    defparam add_69_1.INJECT1_0 = "NO";
    defparam add_69_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_26 (.A(window_count[0]), .B(window_count[3]), .Z(n1180)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_26.init = 16'h2222;
    FD1P3AX i761_762 (.D(data_c_0), .SP(n1063), .CK(clk_c), .Q(zcr_window_15_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i761_762.GSR = "ENABLED";
    MUX41 Mux_19_i223_1031 (.D0(zcr_window_20_0), .D1(zcr_window_21_0), 
          .D2(zcr_window_22_0), .D3(zcr_window_23_0), .SD1(zcr_count_c_0), 
          .SD2(zcr_count_c_1), .Z(n1095));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    L6MUX21 i1039 (.D0(n1100), .D1(n1101), .SD(n262), .Z(n1102));
    LUT4 i1_4_lut_then_4_lut (.A(window_count[3]), .B(window_count[2]), 
         .C(window_count[0]), .D(window_count[1]), .Z(n1188)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1_4_lut_then_4_lut.init = 16'h5557;
    L6MUX21 i1042 (.D0(n1103), .D1(n1104), .SD(zcr_count_c_4), .Z(n1105));
    LUT4 i1_4_lut_else_4_lut (.A(window_count[3]), .B(window_count[2]), 
         .C(window_count[0]), .D(window_count[1]), .Z(n1187)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1033_3_lut (.A(n1094), .B(n1095), .C(zcr_count_c_2), .Z(n1096)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1033_3_lut.init = 16'hcaca;
    FD1P3AX i809_810 (.D(data_c_0), .SP(n1065), .CK(clk_c), .Q(zcr_window_16_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i809_810.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_33 (.A(window_count[3]), .B(window_count[4]), .Z(n1229)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1_2_lut_rep_33.init = 16'h8888;
    LUT4 i1074_3_lut_4_lut (.A(window_count[2]), .B(n1171), .C(n34), .D(zcr_count_c_5), 
         .Z(n349)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1074_3_lut_4_lut.init = 16'h111f;
    LUT4 i1_3_lut_4_lut_3_lut_4_lut (.A(window_count[3]), .B(window_count[4]), 
         .C(window_count[0]), .D(window_count[1]), .Z(n33[1])) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1_3_lut_4_lut_3_lut_4_lut.init = 16'h0770;
    LUT4 i1_2_lut_3_lut_4_lut_adj_1 (.A(window_count[2]), .B(n1185), .C(window_count[1]), 
         .D(n1180), .Z(n1070)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_1.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(reset_c), .B(n1183), .C(n1176), 
         .D(window_count[4]), .Z(n1065)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h0100;
    LUT4 i1_2_lut_3_lut (.A(window_count[1]), .B(n1172), .C(window_count[2]), 
         .Z(n1081)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut.init = 16'h0404;
    PFUMX i1037 (.BLUT(n1117), .ALUT(n1054), .C0(n264), .Z(n1100));
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(reset_c), .B(n1183), .C(n1180), 
         .D(window_count[4]), .Z(n1067)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_4 (.A(window_count[1]), .B(n1172), .C(window_count[2]), 
         .Z(n1082)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_adj_4.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(reset_c), .B(n1183), .C(n1179), 
         .D(window_count[4]), .Z(n1066)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(reset_c), .B(n1183), .C(n1180), 
         .D(window_count[4]), .Z(n1073)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0010;
    LUT4 i34_4_lut (.A(zcr_count_c_4), .B(zcr_count_c_0), .C(zcr_count_c_3), 
         .D(zcr_count_c_2), .Z(n20)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(C+(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam i34_4_lut.init = 16'ha085;
    PFUMX i1038 (.BLUT(n1111), .ALUT(n1099), .C0(n264), .Z(n1101));
    LUT4 i1_2_lut (.A(zcr_count_c_3), .B(zcr_count_c_4), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1045_3_lut (.A(n1106), .B(n1107), .C(zcr_count_c_2), .Z(n1108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1045_3_lut.init = 16'hcaca;
    LUT4 i1051_3_lut (.A(n1112), .B(n1113), .C(zcr_count_c_2), .Z(n1114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1051_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(reset_c), .B(n1183), .C(n1179), 
         .D(window_count[4]), .Z(n1072)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0010;
    LUT4 i599_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(n102[1]), 
         .D(window_count[2]), .Z(n384)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i599_2_lut_3_lut_4_lut.init = 16'hf0e0;
    FD1P3AX i857_858 (.D(data_c_0), .SP(n1067), .CK(clk_c), .Q(zcr_window_17_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i857_858.GSR = "ENABLED";
    MUX41 Mux_37_i76_1046 (.D0(zcr_window_4_0), .D1(zcr_window_5_0), .D2(zcr_window_6_0), 
          .D3(zcr_window_7_0), .SD1(n1181), .SD2(n154[1]), .Z(n1110));
    MUX41 Mux_19_i78_1043 (.D0(zcr_window_4_0), .D1(zcr_window_5_0), .D2(zcr_window_6_0), 
          .D3(zcr_window_7_0), .SD1(zcr_count_c_0), .SD2(zcr_count_c_1), 
          .Z(n1107));
    LUT4 i1_3_lut_4_lut (.A(window_count[2]), .B(n1186), .C(n1173), .D(window_count[3]), 
         .Z(n33[3])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0708;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(window_count[4]), .B(n1180), .C(n1177), 
         .D(reset_c), .Z(n310)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'h0080;
    CCU2D add_69_3 (.A0(zcr_count_c_1), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(zcr_count_c_2), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1002), .COUT(n1003), .S0(n102[1]), .S1(n102[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(54[18:29])
    defparam add_69_3.INIT0 = 16'h5aaa;
    defparam add_69_3.INIT1 = 16'h5aaa;
    defparam add_69_3.INJECT1_0 = "NO";
    defparam add_69_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(window_count[4]), .B(n1180), .C(n1184), 
         .D(window_count[1]), .Z(n306)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h8000;
    PFUMX i1041 (.BLUT(n1096), .ALUT(n1055), .C0(zcr_count_c_3), .Z(n1104));
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(window_count[4]), .B(n1180), .C(n1184), 
         .D(window_count[1]), .Z(n1078)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(window_count[4]), .B(n1176), .C(n1177), 
         .D(reset_c), .Z(n311)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(window_count[4]), .B(n1176), .C(n1184), 
         .D(window_count[1]), .Z(n307)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h2000;
    LUT4 i598_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(n102[2]), 
         .D(window_count[2]), .Z(n382)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i598_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i597_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(n102[3]), 
         .D(window_count[2]), .Z(n380)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i597_2_lut_3_lut_4_lut.init = 16'hf0e0;
    FD1P3AX i905_906 (.D(data_c_0), .SP(n311), .CK(clk_c), .Q(zcr_window_18_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i905_906.GSR = "ENABLED";
    MUX41 Mux_19_i223 (.D0(zcr_window_16_0), .D1(zcr_window_17_0), .D2(zcr_window_18_0), 
          .D3(zcr_window_19_0), .SD1(zcr_count_c_0), .SD2(zcr_count_c_1), 
          .Z(n1094));
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(window_count[4]), .B(n1176), .C(n1184), 
         .D(window_count[1]), .Z(n1079)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h0020;
    LUT4 i596_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(n102[4]), 
         .D(window_count[2]), .Z(n378)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i596_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1054_3_lut_4_lut (.A(zcr_count_c_2), .B(n1178), .C(n1116), .D(n1115), 
         .Z(n1117)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i1054_3_lut_4_lut.init = 16'hf690;
    LUT4 i1048_3_lut_4_lut (.A(zcr_count_c_2), .B(n1178), .C(n1110), .D(n1109), 
         .Z(n1111)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i1048_3_lut_4_lut.init = 16'hf690;
    MUX41 Mux_37_i145_1034 (.D0(zcr_window_12_0), .D1(zcr_window_13_0), 
          .D2(zcr_window_14_0), .D3(zcr_window_15_0), .SD1(n1181), .SD2(n154[1]), 
          .Z(n1098));
    LUT4 i1_2_lut_rep_25 (.A(window_count[3]), .B(window_count[0]), .Z(n1179)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_25.init = 16'h2222;
    FD1P3AX i953_954 (.D(data_c_0), .SP(n310), .CK(clk_c), .Q(zcr_window_19_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i953_954.GSR = "ENABLED";
    FD1S3DX window_count_94_95__i5 (.D(n1189), .CK(clk_c), .CD(reset_c), 
            .Q(window_count[4]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam window_count_94_95__i5.GSR = "DISABLED";
    FD1S3DX window_count_94_95__i4 (.D(n33[3]), .CK(clk_c), .CD(reset_c), 
            .Q(window_count[3]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam window_count_94_95__i4.GSR = "DISABLED";
    FD1S3DX window_count_94_95__i3 (.D(n33[2]), .CK(clk_c), .CD(reset_c), 
            .Q(window_count[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam window_count_94_95__i3.GSR = "DISABLED";
    FD1S3DX window_count_94_95__i2 (.D(n33[1]), .CK(clk_c), .CD(reset_c), 
            .Q(window_count[1]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam window_count_94_95__i2.GSR = "DISABLED";
    FD1P3AX i1001_1002 (.D(data_c_0), .SP(n1079), .CK(clk_c), .Q(zcr_window_20_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i1001_1002.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_14 (.A(window_count[1]), .B(n1172), .C(window_count[2]), 
         .Z(n1063)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_adj_14.init = 16'h8080;
    LUT4 i107_1_lut_rep_27 (.A(zcr_count_c_0), .Z(n1181)) /* synthesis lut_function=(!(A)) */ ;
    defparam i107_1_lut_rep_27.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(window_count[2]), .B(n1185), .C(window_count[1]), 
         .D(n1179), .Z(n1075)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_4_lut (.A(zcr_count_c_0), .B(zcr_count_c_1), .C(zcr_window_24_0), 
         .D(zcr_count_c_2), .Z(n1055)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(window_count[1]), .B(n1172), .C(window_count[2]), 
         .Z(n1062)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_adj_16.init = 16'h0808;
    LUT4 i2_3_lut_rep_19_4_lut (.A(window_count[3]), .B(window_count[4]), 
         .C(n1183), .D(window_count[0]), .Z(n1173)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i2_3_lut_rep_19_4_lut.init = 16'h8880;
    LUT4 i1071_3_lut_4_lut (.A(window_count[3]), .B(window_count[4]), .C(window_count[0]), 
         .D(n1183), .Z(n1005)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1071_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(zcr_count_c_1), .B(zcr_count_c_0), 
         .C(zcr_count_c_3), .D(zcr_count_c_2), .Z(n264)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'hf0e1;
    LUT4 i1_2_lut_adj_18 (.A(zcr_count_c_1), .B(zcr_count_c_0), .Z(n154[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_18.init = 16'h9999;
    LUT4 i114_2_lut_rep_24 (.A(zcr_count_c_1), .B(zcr_count_c_0), .Z(n1178)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i114_2_lut_rep_24.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(window_count[1]), .B(window_count[2]), 
         .C(n1179), .D(n1185), .Z(n1085)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h0020;
    FD1P3AX i1049_1050 (.D(data_c_0), .SP(n1078), .CK(clk_c), .Q(zcr_window_21_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i1049_1050.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(window_count[1]), .B(window_count[2]), 
         .C(n1180), .D(n1185), .Z(n1084)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'h0020;
    FD1P3AX i1097_1098 (.D(data_c_0), .SP(n307), .CK(clk_c), .Q(zcr_window_22_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i1097_1098.GSR = "ENABLED";
    FD1P3DX zcr_count__i2 (.D(n384), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_1));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_23 (.A(window_count[1]), .B(window_count[2]), .Z(n1177)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_23.init = 16'h2222;
    FD1P3DX zcr_count__i3 (.D(n382), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_2));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i3.GSR = "DISABLED";
    FD1P3DX zcr_count__i4 (.D(n380), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_3));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i4.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i1_2_lut_rep_29 (.A(window_count[1]), .B(window_count[2]), .Z(n1183)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1_2_lut_rep_29.init = 16'heeee;
    PFUMX i32 (.BLUT(n20), .ALUT(n11), .C0(zcr_count_c_1), .Z(n34));
    CCU2D add_69_7 (.A0(zcr_count_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1004), 
          .S0(n102[5]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(54[18:29])
    defparam add_69_7.INIT0 = 16'h5aaa;
    defparam add_69_7.INIT1 = 16'h0000;
    defparam add_69_7.INJECT1_0 = "NO";
    defparam add_69_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(window_count[1]), .B(n1174), .C(n102[5]), 
         .D(window_count[2]), .Z(n376)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'hf0e0;
    FD1P3DX zcr_count__i5 (.D(n378), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_4));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i5.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_20_3_lut (.A(window_count[3]), .B(window_count[0]), 
         .C(window_count[4]), .Z(n1174)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_20_3_lut.init = 16'hfefe;
    LUT4 i1065_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(reset_c), 
         .D(window_count[2]), .Z(n145)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1065_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_30 (.A(reset_c), .B(window_count[2]), .Z(n1184)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_30.init = 16'h4444;
    FD1P3DX zcr_count__i6 (.D(n376), .SP(n349), .CK(clk_c), .CD(reset_c), 
            .Q(zcr_count_c_5));   // c:/users/sec29/desktop/i2s_iot/zcr.v(51[8] 55[10])
    defparam zcr_count__i6.GSR = "DISABLED";
    FD1P3AX i1145_1146 (.D(data_c_0), .SP(n306), .CK(clk_c), .Q(zcr_window_23_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i1145_1146.GSR = "ENABLED";
    LUT4 i262_2_lut_rep_31 (.A(reset_c), .B(window_count[4]), .Z(n1185)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i262_2_lut_rep_31.init = 16'heeee;
    FD1P3AX i1193_1194 (.D(data_c_0), .SP(n1066), .CK(clk_c), .Q(zcr_window_24_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(20[12:22])
    defparam i1193_1194.GSR = "DISABLED";
    LUT4 i1068_2_lut_4_lut (.A(window_count[0]), .B(n1229), .C(n1183), 
         .D(reset_c), .Z(n144)) /* synthesis lut_function=(!(A (B+(D))+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(19[11:23])
    defparam i1068_2_lut_4_lut.init = 16'h0037;
    LUT4 i1_2_lut_rep_17_3_lut_4_lut (.A(window_count[3]), .B(window_count[0]), 
         .C(window_count[1]), .D(window_count[4]), .Z(n1171)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_17_3_lut_4_lut.init = 16'hfffe;
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/sec29/desktop/i2s_iot/zcr.v(14[7:12])
    IB data_pad_0 (.I(data[0]), .O(data_c_0));   // c:/users/sec29/desktop/i2s_iot/zcr.v(13[25:29])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/sec29/desktop/i2s_iot/zcr.v(12[7:10])
    LUT4 i1_2_lut_rep_22 (.A(window_count[3]), .B(window_count[0]), .Z(n1176)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    OBZ zcr_valid_pad (.I(GND_net), .T(VCC_net), .O(zcr_valid));   // c:/users/sec29/desktop/i2s_iot/zcr.v(16[12:21])
    OB zcr_count_pad_0 (.I(zcr_count_c_0), .O(zcr_count[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    OB zcr_count_pad_1 (.I(zcr_count_c_1), .O(zcr_count[1]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    OB zcr_count_pad_2 (.I(zcr_count_c_2), .O(zcr_count[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    OB zcr_count_pad_3 (.I(zcr_count_c_3), .O(zcr_count[3]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    LUT4 i2_3_lut_rep_18_4_lut (.A(reset_c), .B(window_count[4]), .C(window_count[3]), 
         .D(window_count[0]), .Z(n1172)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_18_4_lut.init = 16'h1000;
    LUT4 i918_2_lut_rep_32 (.A(window_count[1]), .B(window_count[0]), .Z(n1186)) /* synthesis lut_function=(A (B)) */ ;
    defparam i918_2_lut_rep_32.init = 16'h8888;
    LUT4 i595_2_lut_3_lut_4_lut (.A(window_count[1]), .B(n1174), .C(n102[0]), 
         .D(window_count[2]), .Z(n374)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i595_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_3_lut_4_lut_adj_22 (.A(window_count[1]), .B(window_count[0]), 
         .C(window_count[2]), .D(n1173), .Z(n33[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_22.init = 16'h0078;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(window_count[4]), .B(n1176), .C(n1184), 
         .D(window_count[1]), .Z(n332)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0010;
    MUX41 Mux_37_i145 (.D0(zcr_window_8_0), .D1(zcr_window_9_0), .D2(zcr_window_10_0), 
          .D3(zcr_window_11_0), .SD1(n1181), .SD2(n154[1]), .Z(n1097));
    LUT4 i1_3_lut_4_lut_adj_24 (.A(zcr_count_c_2), .B(n1178), .C(zcr_count_c_3), 
         .D(zcr_count_c_4), .Z(n262)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_24.init = 16'h01fe;
    LUT4 i1_2_lut_4_lut (.A(zcr_count_c_2), .B(zcr_window_24_0), .C(zcr_count_c_1), 
         .D(zcr_count_c_0), .Z(n1054)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(reset_c), .B(n1177), .C(n1176), 
         .D(window_count[4]), .Z(n334)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h0004;
    MUX41 Mux_19_i78 (.D0(zcr_window_0_0), .D1(zcr_window_1_0), .D2(zcr_window_2_0), 
          .D3(zcr_window_3_0), .SD1(zcr_count_c_0), .SD2(zcr_count_c_1), 
          .Z(n1106));
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(window_count[1]), .B(n1184), .C(n1176), 
         .D(window_count[4]), .Z(n330)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h0008;
    LUT4 i1036_3_lut_4_lut (.A(zcr_count_c_2), .B(n1178), .C(n1098), .D(n1097), 
         .Z(n1099)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam i1036_3_lut_4_lut.init = 16'hf690;
    MUX41 Mux_37_i76 (.D0(zcr_window_0_0), .D1(zcr_window_1_0), .D2(zcr_window_2_0), 
          .D3(zcr_window_3_0), .SD1(n1181), .SD2(n154[1]), .Z(n1109));
    MUX41 Mux_19_i147 (.D0(zcr_window_8_0), .D1(zcr_window_9_0), .D2(zcr_window_10_0), 
          .D3(zcr_window_11_0), .SD1(zcr_count_c_0), .SD2(zcr_count_c_1), 
          .Z(n1112));
    PFUMX i1095 (.BLUT(n1187), .ALUT(n1188), .C0(window_count[4]), .Z(n1189));
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(window_count[2]), .B(n1185), .C(window_count[1]), 
         .D(n1179), .Z(n1076)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(31[17:31])
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'h0200;
    MUX41 Mux_37_i224 (.D0(zcr_window_16_0), .D1(zcr_window_17_0), .D2(zcr_window_18_0), 
          .D3(zcr_window_19_0), .SD1(n1181), .SD2(n154[1]), .Z(n1115));
    OB zcr_count_pad_4 (.I(zcr_count_c_4), .O(zcr_count[4]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(15[18:27])
    PFUMX i1040 (.BLUT(n1108), .ALUT(n1114), .C0(zcr_count_c_3), .Z(n1103));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

