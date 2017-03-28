// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Sat Feb 25 16:48:14 2017
//
// Verilog Description of module i2s_tx
//

module i2s_tx (i_sys_clk, i_sys_rst, i_left_data, i_right_data, i_left_vld, 
            i_right_vld, o_sck, o_ws, o_sd) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(11[8:14])
    input i_sys_clk;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(34[32:41])
    input i_sys_rst;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(35[32:41])
    input [15:0]i_left_data;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    input [15:0]i_right_data;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    input i_left_vld;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(39[32:42])
    input i_right_vld;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(40[32:43])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(42[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(43[32:36])
    output o_sd;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(44[32:36])
    
    
    wire GND_net, VCC_net, o_sck_c_c, i_sys_rst_c, i_left_data_c_15, 
        i_left_data_c_14, i_left_data_c_13, i_left_data_c_12, i_left_data_c_11, 
        i_left_data_c_10, i_left_data_c_9, i_left_data_c_8, i_left_data_c_7, 
        i_left_data_c_6, i_left_data_c_5, i_left_data_c_4, i_left_data_c_3, 
        i_left_data_c_2, i_left_data_c_1, i_left_data_c_0, i_right_data_c_15, 
        i_right_data_c_14, i_right_data_c_13, i_right_data_c_12, i_right_data_c_11, 
        i_right_data_c_10, i_right_data_c_9, i_right_data_c_8, i_right_data_c_7, 
        i_right_data_c_6, i_right_data_c_5, i_right_data_c_4, i_right_data_c_3, 
        i_right_data_c_2, i_right_data_c_1, i_right_data_c_0, i_left_vld_c, 
        i_right_vld_c, o_ws_c, o_sd_c;
    wire [15:0]left_data_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(47[32:43])
    wire [15:0]right_data_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(48[32:44])
    wire [15:0]data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(49[32:42])
    wire [15:0]wr_count_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(50[32:42])
    wire [15:0]left_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(59[32:54])
    wire [15:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(60[32:55])
    
    wire left_vld_reg_i, right_vld_reg_i;
    wire [15:0]n6;
    wire [15:0]n40;
    wire [15:0]n75;
    wire [15:0]n127;
    
    wire n490, n489, n488, n476, n477, n482, n480, n475;
    wire [15:0]n186;
    wire [15:0]n203;
    
    wire n237, n240, n487, n486, n485, n484, n483, n481, n479, 
        n478, n510;
    wire [3:0]n519;
    
    wire n434, n509;
    
    VHI i2 (.Z(VCC_net));
    LUT4 inv_5_i8_1_lut (.A(i_left_data_c_7), .Z(n6[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i8_1_lut.init = 16'h5555;
    OFS1P3DX sd_i_48 (.D(data_reg_i[15]), .SP(VCC_net), .SCLK(n237), .CD(GND_net), 
            .Q(o_sd_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(157[13:47])
    defparam sd_i_48.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i0 (.D(n75[0]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i0.GSR = "ENABLED";
    FD1S3AX data_reg_i_i0 (.D(n203[0]), .CK(n237), .Q(data_reg_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i0.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i1 (.D(n40[1]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i1.GSR = "ENABLED";
    LUT4 inv_5_i2_1_lut (.A(i_left_data_c_1), .Z(n6[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i2_1_lut.init = 16'h5555;
    CCU2D add_9_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(left_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n475), .S1(n75[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_1.INIT0 = 16'hF000;
    defparam add_9_1.INIT1 = 16'h5555;
    defparam add_9_1.INJECT1_0 = "NO";
    defparam add_9_1.INJECT1_1 = "NO";
    FD1S3AX ws_i_47 (.D(n240), .CK(n237), .Q(o_ws_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(146[13] 149[16])
    defparam ws_i_47.GSR = "ENABLED";
    CCU2D add_9_3 (.A0(left_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n475), .COUT(n476), .S0(n75[1]), 
          .S1(n75[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_3.INIT0 = 16'h5aaa;
    defparam add_9_3.INIT1 = 16'h5aaa;
    defparam add_9_3.INJECT1_0 = "NO";
    defparam add_9_3.INJECT1_1 = "NO";
    FD1S3AX left_data_ones_compl_i_i15 (.D(n6[15]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i15.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i0 (.D(n40[0]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i0.GSR = "ENABLED";
    CCU2D add_9_13 (.A0(left_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n480), .COUT(n481), .S0(n75[11]), 
          .S1(n75[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_13.INIT0 = 16'h5aaa;
    defparam add_9_13.INIT1 = 16'h5aaa;
    defparam add_9_13.INJECT1_0 = "NO";
    defparam add_9_13.INJECT1_1 = "NO";
    OB o_sck_pad (.I(o_sck_c_c), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(42[32:37])
    IFS1P3DX right_vld_reg_i_40 (.D(i_right_vld_c), .SP(VCC_net), .SCLK(o_sck_c_c), 
            .CD(GND_net), .Q(right_vld_reg_i));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(76[13:44])
    defparam right_vld_reg_i_40.GSR = "ENABLED";
    IB o_sck_c_pad (.I(i_sys_clk), .O(o_sck_c_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(34[32:41])
    LUT4 i101_2_lut (.A(wr_count_i[1]), .B(wr_count_i[0]), .Z(n519[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i101_2_lut.init = 16'h6666;
    LUT4 mux_24_i1_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[0]), 
         .D(n186[0]), .Z(n203[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i1_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i2_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[1]), 
         .D(n186[1]), .Z(n203[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i3_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[2]), 
         .D(n186[2]), .Z(n203[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i4_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[3]), 
         .D(n186[3]), .Z(n203[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i5_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[4]), 
         .D(n186[4]), .Z(n203[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i6_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[5]), 
         .D(n186[5]), .Z(n203[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i7_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[6]), 
         .D(n186[6]), .Z(n203[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i8_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[7]), 
         .D(n186[7]), .Z(n203[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i8_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i9_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[8]), 
         .D(n186[8]), .Z(n203[8])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i9_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i10_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[9]), 
         .D(n186[9]), .Z(n203[9])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i10_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i11_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[10]), 
         .D(n186[10]), .Z(n203[10])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i11_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i12_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[11]), 
         .D(n186[11]), .Z(n203[11])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i12_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i13_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[12]), 
         .D(n186[12]), .Z(n203[12])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i13_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_24_i14_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[13]), 
         .D(n186[13]), .Z(n203[13])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i14_3_lut_4_lut.init = 16'hfd20;
    LUT4 inv_7_i16_1_lut (.A(i_right_data_c_15), .Z(n40[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i16_1_lut.init = 16'h5555;
    LUT4 inv_7_i15_1_lut (.A(i_right_data_c_14), .Z(n40[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i15_1_lut.init = 16'h5555;
    LUT4 inv_7_i14_1_lut (.A(i_right_data_c_13), .Z(n40[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i14_1_lut.init = 16'h5555;
    OB o_sd_pad (.I(o_sd_c), .O(o_sd));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(44[32:36])
    FD1S3AX left_data_ones_compl_i_i14 (.D(n6[14]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i13 (.D(n6[13]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i12 (.D(n6[12]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i11 (.D(n6[11]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i10 (.D(n6[10]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i9 (.D(n6[9]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i8 (.D(n6[8]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i7 (.D(n6[7]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i6 (.D(n6[6]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i5 (.D(n6[5]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i5.GSR = "ENABLED";
    LUT4 inv_5_i7_1_lut (.A(i_left_data_c_6), .Z(n6[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i7_1_lut.init = 16'h5555;
    CCU2D add_9_7 (.A0(left_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n477), .COUT(n478), .S0(n75[5]), 
          .S1(n75[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_7.INIT0 = 16'h5aaa;
    defparam add_9_7.INIT1 = 16'h5aaa;
    defparam add_9_7.INJECT1_0 = "NO";
    defparam add_9_7.INJECT1_1 = "NO";
    CCU2D add_9_11 (.A0(left_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n479), .COUT(n480), .S0(n75[9]), 
          .S1(n75[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_11.INIT0 = 16'h5aaa;
    defparam add_9_11.INIT1 = 16'h5aaa;
    defparam add_9_11.INJECT1_0 = "NO";
    defparam add_9_11.INJECT1_1 = "NO";
    FD1S3AX left_data_ones_compl_i_i4 (.D(n6[4]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i3 (.D(n6[3]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3IX wr_count_i_70_71__i1 (.D(n519[0]), .CK(n237), .CD(n509), .Q(wr_count_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(175[35:49])
    defparam wr_count_i_70_71__i1.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i2 (.D(n6[2]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i2.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i0 (.D(n127[0]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i0.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i1 (.D(n6[1]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i1.GSR = "ENABLED";
    FD1S3AX left_data_ones_compl_i_i0 (.D(n6[0]), .CK(o_sck_c_c), .Q(left_data_ones_compl_i[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[13:54])
    defparam left_data_ones_compl_i_i0.GSR = "ENABLED";
    LUT4 inv_7_i13_1_lut (.A(i_right_data_c_12), .Z(n40[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i13_1_lut.init = 16'h5555;
    FD1S3AX right_data_ones_compl_i_i2 (.D(n40[2]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i2.GSR = "ENABLED";
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(43[32:36])
    GSR GSR_INST (.GSR(n434));
    CCU2D add_9_9 (.A0(left_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n478), .COUT(n479), .S0(n75[7]), 
          .S1(n75[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_9.INIT0 = 16'h5aaa;
    defparam add_9_9.INIT1 = 16'h5aaa;
    defparam add_9_9.INJECT1_0 = "NO";
    defparam add_9_9.INJECT1_1 = "NO";
    IB i_sys_rst_pad (.I(i_sys_rst), .O(i_sys_rst_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(35[32:41])
    IB i_left_data_pad_15 (.I(i_left_data[15]), .O(i_left_data_c_15));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_14 (.I(i_left_data[14]), .O(i_left_data_c_14));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_13 (.I(i_left_data[13]), .O(i_left_data_c_13));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_12 (.I(i_left_data[12]), .O(i_left_data_c_12));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_11 (.I(i_left_data[11]), .O(i_left_data_c_11));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_10 (.I(i_left_data[10]), .O(i_left_data_c_10));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_9 (.I(i_left_data[9]), .O(i_left_data_c_9));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_8 (.I(i_left_data[8]), .O(i_left_data_c_8));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_7 (.I(i_left_data[7]), .O(i_left_data_c_7));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_6 (.I(i_left_data[6]), .O(i_left_data_c_6));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_5 (.I(i_left_data[5]), .O(i_left_data_c_5));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_4 (.I(i_left_data[4]), .O(i_left_data_c_4));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_3 (.I(i_left_data[3]), .O(i_left_data_c_3));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_2 (.I(i_left_data[2]), .O(i_left_data_c_2));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_1 (.I(i_left_data[1]), .O(i_left_data_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_left_data_pad_0 (.I(i_left_data[0]), .O(i_left_data_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(37[32:43])
    IB i_right_data_pad_15 (.I(i_right_data[15]), .O(i_right_data_c_15));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_14 (.I(i_right_data[14]), .O(i_right_data_c_14));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_13 (.I(i_right_data[13]), .O(i_right_data_c_13));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_12 (.I(i_right_data[12]), .O(i_right_data_c_12));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_11 (.I(i_right_data[11]), .O(i_right_data_c_11));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_10 (.I(i_right_data[10]), .O(i_right_data_c_10));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_9 (.I(i_right_data[9]), .O(i_right_data_c_9));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_8 (.I(i_right_data[8]), .O(i_right_data_c_8));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_7 (.I(i_right_data[7]), .O(i_right_data_c_7));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_6 (.I(i_right_data[6]), .O(i_right_data_c_6));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_5 (.I(i_right_data[5]), .O(i_right_data_c_5));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_4 (.I(i_right_data[4]), .O(i_right_data_c_4));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_3 (.I(i_right_data[3]), .O(i_right_data_c_3));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_2 (.I(i_right_data[2]), .O(i_right_data_c_2));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_1 (.I(i_right_data[1]), .O(i_right_data_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_right_data_pad_0 (.I(i_right_data[0]), .O(i_right_data_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(38[32:44])
    IB i_left_vld_pad (.I(i_left_vld), .O(i_left_vld_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(39[32:42])
    IB i_right_vld_pad (.I(i_right_vld), .O(i_right_vld_c));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(40[32:43])
    FD1S3AX right_data_ones_compl_i_i3 (.D(n40[3]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i4 (.D(n40[4]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i5 (.D(n40[5]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i5.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i6 (.D(n40[6]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i7 (.D(n40[7]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i8 (.D(n40[8]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i9 (.D(n40[9]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i10 (.D(n40[10]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i11 (.D(n40[11]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i12 (.D(n40[12]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i13 (.D(n40[13]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i14 (.D(n40[14]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3AX right_data_ones_compl_i_i15 (.D(n40[15]), .CK(o_sck_c_c), .Q(right_data_ones_compl_i[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[13:56])
    defparam right_data_ones_compl_i_i15.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i1 (.D(n75[1]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i1.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i2 (.D(n75[2]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i2.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i3 (.D(n75[3]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i3.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i4 (.D(n75[4]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i4.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i5 (.D(n75[5]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i5.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i6 (.D(n75[6]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i6.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i7 (.D(n75[7]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i7.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i8 (.D(n75[8]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i8.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i9 (.D(n75[9]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i9.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i10 (.D(n75[10]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i10.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i11 (.D(n75[11]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i11.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i12 (.D(n75[12]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i12.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i13 (.D(n75[13]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i13.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i14 (.D(n75[14]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i14.GSR = "ENABLED";
    FD1P3AX left_data_i_i0_i15 (.D(n75[15]), .SP(left_vld_reg_i), .CK(o_sck_c_c), 
            .Q(left_data_i[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(103[13] 104[59])
    defparam left_data_i_i0_i15.GSR = "ENABLED";
    FD1S3AX data_reg_i_i1 (.D(n203[1]), .CK(n237), .Q(data_reg_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i1.GSR = "ENABLED";
    FD1S3AX data_reg_i_i2 (.D(n203[2]), .CK(n237), .Q(data_reg_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i2.GSR = "ENABLED";
    FD1S3AX data_reg_i_i3 (.D(n203[3]), .CK(n237), .Q(data_reg_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i3.GSR = "ENABLED";
    FD1S3AX data_reg_i_i4 (.D(n203[4]), .CK(n237), .Q(data_reg_i[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i4.GSR = "ENABLED";
    FD1S3AX data_reg_i_i5 (.D(n203[5]), .CK(n237), .Q(data_reg_i[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i5.GSR = "ENABLED";
    FD1S3AX data_reg_i_i6 (.D(n203[6]), .CK(n237), .Q(data_reg_i[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i6.GSR = "ENABLED";
    FD1S3AX data_reg_i_i7 (.D(n203[7]), .CK(n237), .Q(data_reg_i[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i7.GSR = "ENABLED";
    FD1S3AX data_reg_i_i8 (.D(n203[8]), .CK(n237), .Q(data_reg_i[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i8.GSR = "ENABLED";
    FD1S3AX data_reg_i_i9 (.D(n203[9]), .CK(n237), .Q(data_reg_i[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i9.GSR = "ENABLED";
    FD1S3AX data_reg_i_i10 (.D(n203[10]), .CK(n237), .Q(data_reg_i[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i10.GSR = "ENABLED";
    FD1S3AX data_reg_i_i11 (.D(n203[11]), .CK(n237), .Q(data_reg_i[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i11.GSR = "ENABLED";
    FD1S3AX data_reg_i_i12 (.D(n203[12]), .CK(n237), .Q(data_reg_i[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i12.GSR = "ENABLED";
    FD1S3AX data_reg_i_i13 (.D(n203[13]), .CK(n237), .Q(data_reg_i[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i13.GSR = "ENABLED";
    FD1S3AX data_reg_i_i14 (.D(n203[14]), .CK(n237), .Q(data_reg_i[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i14.GSR = "ENABLED";
    FD1S3AX data_reg_i_i15 (.D(n203[15]), .CK(n237), .Q(data_reg_i[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(132[13] 140[16])
    defparam data_reg_i_i15.GSR = "ENABLED";
    FD1S3IX wr_count_i_70_71__i2 (.D(n519[1]), .CK(n237), .CD(n509), .Q(wr_count_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(175[35:49])
    defparam wr_count_i_70_71__i2.GSR = "ENABLED";
    LUT4 inv_7_i12_1_lut (.A(i_right_data_c_11), .Z(n40[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i12_1_lut.init = 16'h5555;
    LUT4 inv_7_i11_1_lut (.A(i_right_data_c_10), .Z(n40[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i11_1_lut.init = 16'h5555;
    LUT4 inv_7_i10_1_lut (.A(i_right_data_c_9), .Z(n40[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i10_1_lut.init = 16'h5555;
    LUT4 inv_7_i9_1_lut (.A(i_right_data_c_8), .Z(n40[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i9_1_lut.init = 16'h5555;
    LUT4 inv_7_i8_1_lut (.A(i_right_data_c_7), .Z(n40[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i8_1_lut.init = 16'h5555;
    LUT4 inv_7_i7_1_lut (.A(i_right_data_c_6), .Z(n40[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i7_1_lut.init = 16'h5555;
    LUT4 inv_7_i6_1_lut (.A(i_right_data_c_5), .Z(n40[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i6_1_lut.init = 16'h5555;
    LUT4 inv_7_i5_1_lut (.A(i_right_data_c_4), .Z(n40[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i5_1_lut.init = 16'h5555;
    LUT4 inv_7_i4_1_lut (.A(i_right_data_c_3), .Z(n40[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i4_1_lut.init = 16'h5555;
    LUT4 i80_1_lut (.A(i_sys_rst_c), .Z(n434)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(35[32:41])
    defparam i80_1_lut.init = 16'h5555;
    LUT4 inv_7_i3_1_lut (.A(i_right_data_c_2), .Z(n40[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i3_1_lut.init = 16'h5555;
    LUT4 inv_5_i1_1_lut (.A(i_left_data_c_0), .Z(n6[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i1_1_lut.init = 16'h5555;
    LUT4 inv_5_i3_1_lut (.A(i_left_data_c_2), .Z(n6[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i3_1_lut.init = 16'h5555;
    LUT4 i99_1_lut (.A(wr_count_i[0]), .Z(n519[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i99_1_lut.init = 16'h5555;
    LUT4 inv_5_i4_1_lut (.A(i_left_data_c_3), .Z(n6[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i4_1_lut.init = 16'h5555;
    LUT4 inv_5_i5_1_lut (.A(i_left_data_c_4), .Z(n6[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i5_1_lut.init = 16'h5555;
    LUT4 mux_23_i4_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[3]), 
         .D(data_reg_i[2]), .Z(n186[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_24_i15_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[14]), 
         .D(n186[14]), .Z(n203[14])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i15_3_lut_4_lut.init = 16'hfd20;
    LUT4 inv_5_i6_1_lut (.A(i_left_data_c_5), .Z(n6[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i6_1_lut.init = 16'h5555;
    LUT4 mux_23_i5_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[4]), 
         .D(data_reg_i[3]), .Z(n186[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_24_i16_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(right_data_i[15]), 
         .D(n186[15]), .Z(n203[15])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam mux_24_i16_3_lut_4_lut.init = 16'hfd20;
    CCU2D add_12_17 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n490), .S0(n127[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_17.INIT0 = 16'h5aaa;
    defparam add_12_17.INIT1 = 16'h0000;
    defparam add_12_17.INJECT1_0 = "NO";
    defparam add_12_17.INJECT1_1 = "NO";
    CCU2D add_12_15 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n489), .COUT(n490), .S0(n127[13]), 
          .S1(n127[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_15.INIT0 = 16'h5aaa;
    defparam add_12_15.INIT1 = 16'h5aaa;
    defparam add_12_15.INJECT1_0 = "NO";
    defparam add_12_15.INJECT1_1 = "NO";
    CCU2D add_12_13 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n488), .COUT(n489), .S0(n127[11]), 
          .S1(n127[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_13.INIT0 = 16'h5aaa;
    defparam add_12_13.INIT1 = 16'h5aaa;
    defparam add_12_13.INJECT1_0 = "NO";
    defparam add_12_13.INJECT1_1 = "NO";
    CCU2D add_12_11 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n487), .COUT(n488), .S0(n127[9]), 
          .S1(n127[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_11.INIT0 = 16'h5aaa;
    defparam add_12_11.INIT1 = 16'h5aaa;
    defparam add_12_11.INJECT1_0 = "NO";
    defparam add_12_11.INJECT1_1 = "NO";
    CCU2D add_12_9 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n486), .COUT(n487), .S0(n127[7]), 
          .S1(n127[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_9.INIT0 = 16'h5aaa;
    defparam add_12_9.INIT1 = 16'h5aaa;
    defparam add_12_9.INJECT1_0 = "NO";
    defparam add_12_9.INJECT1_1 = "NO";
    CCU2D add_12_7 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n485), .COUT(n486), .S0(n127[5]), 
          .S1(n127[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_7.INIT0 = 16'h5aaa;
    defparam add_12_7.INIT1 = 16'h5aaa;
    defparam add_12_7.INJECT1_0 = "NO";
    defparam add_12_7.INJECT1_1 = "NO";
    CCU2D add_12_5 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n484), .COUT(n485), .S0(n127[3]), 
          .S1(n127[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_5.INIT0 = 16'h5aaa;
    defparam add_12_5.INIT1 = 16'h5aaa;
    defparam add_12_5.INJECT1_0 = "NO";
    defparam add_12_5.INJECT1_1 = "NO";
    CCU2D add_12_3 (.A0(right_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n483), .COUT(n484), .S0(n127[1]), 
          .S1(n127[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_3.INIT0 = 16'h5aaa;
    defparam add_12_3.INIT1 = 16'h5aaa;
    defparam add_12_3.INJECT1_0 = "NO";
    defparam add_12_3.INJECT1_1 = "NO";
    CCU2D add_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(right_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n483), .S1(n127[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(114[33:60])
    defparam add_12_1.INIT0 = 16'hF000;
    defparam add_12_1.INIT1 = 16'h5555;
    defparam add_12_1.INJECT1_0 = "NO";
    defparam add_12_1.INJECT1_1 = "NO";
    CCU2D add_9_17 (.A0(left_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n482), .S0(n75[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_17.INIT0 = 16'h5aaa;
    defparam add_9_17.INIT1 = 16'h0000;
    defparam add_9_17.INJECT1_0 = "NO";
    defparam add_9_17.INJECT1_1 = "NO";
    CCU2D add_9_15 (.A0(left_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n481), .COUT(n482), .S0(n75[13]), 
          .S1(n75[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_15.INIT0 = 16'h5aaa;
    defparam add_9_15.INIT1 = 16'h5aaa;
    defparam add_9_15.INJECT1_0 = "NO";
    defparam add_9_15.INJECT1_1 = "NO";
    CCU2D add_9_5 (.A0(left_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n476), .COUT(n477), .S0(n75[3]), 
          .S1(n75[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(104[32:58])
    defparam add_9_5.INIT0 = 16'h5aaa;
    defparam add_9_5.INIT1 = 16'h5aaa;
    defparam add_9_5.INJECT1_0 = "NO";
    defparam add_9_5.INJECT1_1 = "NO";
    LUT4 mux_23_i1_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[0]), 
         .D(data_reg_i[15]), .Z(n186[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i1_3_lut_4_lut.init = 16'hf780;
    FD1S3IX wr_count_i_70_71__i3 (.D(n519[2]), .CK(n237), .CD(n509), .Q(wr_count_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(175[35:49])
    defparam wr_count_i_70_71__i3.GSR = "ENABLED";
    FD1S3IX wr_count_i_70_71__i4 (.D(n519[3]), .CK(n237), .CD(n509), .Q(wr_count_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(175[35:49])
    defparam wr_count_i_70_71__i4.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i1 (.D(n127[1]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i1.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i2 (.D(n127[2]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i2.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i3 (.D(n127[3]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i3.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i4 (.D(n127[4]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i4.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i5 (.D(n127[5]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[5]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i5.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i6 (.D(n127[6]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i6.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i7 (.D(n127[7]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[7]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i7.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i8 (.D(n127[8]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i8.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i9 (.D(n127[9]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[9]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i9.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i10 (.D(n127[10]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i10.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i11 (.D(n127[11]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[11]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i11.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i12 (.D(n127[12]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i12.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i13 (.D(n127[13]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[13]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i13.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i14 (.D(n127[14]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i14.GSR = "ENABLED";
    FD1P3AX right_data_i_i0_i15 (.D(n127[15]), .SP(right_vld_reg_i), .CK(o_sck_c_c), 
            .Q(right_data_i[15]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(113[13] 114[61])
    defparam right_data_i_i0_i15.GSR = "ENABLED";
    IFS1P3DX left_vld_reg_i_39 (.D(i_left_vld_c), .SP(VCC_net), .SCLK(o_sck_c_c), 
            .CD(GND_net), .Q(left_vld_reg_i));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(69[13:42])
    defparam left_vld_reg_i_39.GSR = "ENABLED";
    LUT4 mux_23_i2_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[1]), 
         .D(data_reg_i[0]), .Z(n186[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i6_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[5]), 
         .D(data_reg_i[4]), .Z(n186[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i7_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[6]), 
         .D(data_reg_i[5]), .Z(n186[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 inv_7_i2_1_lut (.A(i_right_data_c_1), .Z(n40[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i2_1_lut.init = 16'h5555;
    LUT4 inv_5_i16_1_lut (.A(i_left_data_c_15), .Z(n6[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i16_1_lut.init = 16'h5555;
    LUT4 inv_7_i1_1_lut (.A(i_right_data_c_0), .Z(n40[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(93[40:55])
    defparam inv_7_i1_1_lut.init = 16'h5555;
    LUT4 inv_5_i15_1_lut (.A(i_left_data_c_14), .Z(n6[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i15_1_lut.init = 16'h5555;
    LUT4 inv_5_i14_1_lut (.A(i_left_data_c_13), .Z(n6[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i14_1_lut.init = 16'h5555;
    LUT4 inv_5_i13_1_lut (.A(i_left_data_c_12), .Z(n6[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i13_1_lut.init = 16'h5555;
    LUT4 inv_5_i12_1_lut (.A(i_left_data_c_11), .Z(n6[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i12_1_lut.init = 16'h5555;
    LUT4 inv_5_i11_1_lut (.A(i_left_data_c_10), .Z(n6[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i11_1_lut.init = 16'h5555;
    LUT4 inv_5_i10_1_lut (.A(i_left_data_c_9), .Z(n6[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i10_1_lut.init = 16'h5555;
    LUT4 mux_23_i8_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[7]), 
         .D(data_reg_i[6]), .Z(n186[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i9_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[8]), 
         .D(data_reg_i[7]), .Z(n186[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i9_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i10_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[9]), 
         .D(data_reg_i[8]), .Z(n186[9])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i10_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i11_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[10]), 
         .D(data_reg_i[9]), .Z(n186[10])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i11_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i12_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[11]), 
         .D(data_reg_i[10]), .Z(n186[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i12_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i13_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[12]), 
         .D(data_reg_i[11]), .Z(n186[12])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i13_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i14_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[13]), 
         .D(data_reg_i[12]), .Z(n186[13])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i14_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i15_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[14]), 
         .D(data_reg_i[13]), .Z(n186[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i15_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_23_i16_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[15]), 
         .D(data_reg_i[14]), .Z(n186[15])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i16_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_4_lut (.A(n510), .B(wr_count_i[2]), .C(wr_count_i[3]), 
         .D(o_ws_c), .Z(n240)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h7f80;
    LUT4 i104_2_lut_rep_17 (.A(wr_count_i[1]), .B(wr_count_i[0]), .Z(n510)) /* synthesis lut_function=(A (B)) */ ;
    defparam i104_2_lut_rep_17.init = 16'h8888;
    LUT4 i3_3_lut_rep_16_4_lut (.A(wr_count_i[1]), .B(wr_count_i[0]), .C(wr_count_i[3]), 
         .D(wr_count_i[2]), .Z(n509)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_3_lut_rep_16_4_lut.init = 16'h8000;
    LUT4 i108_2_lut_3_lut (.A(wr_count_i[1]), .B(wr_count_i[0]), .C(wr_count_i[2]), 
         .Z(n519[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i108_2_lut_3_lut.init = 16'h7878;
    LUT4 i115_3_lut_4_lut (.A(wr_count_i[1]), .B(wr_count_i[0]), .C(wr_count_i[2]), 
         .D(wr_count_i[3]), .Z(n519[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i115_3_lut_4_lut.init = 16'h7f80;
    LUT4 inv_5_i9_1_lut (.A(i_left_data_c_8), .Z(n6[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(85[39:53])
    defparam inv_5_i9_1_lut.init = 16'h5555;
    INV i125 (.A(o_sck_c_c), .Z(n237));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(34[32:41])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 mux_23_i3_3_lut_4_lut (.A(n509), .B(o_ws_c), .C(left_data_i[2]), 
         .D(data_reg_i[1]), .Z(n186[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_tx.v(135[29:65])
    defparam mux_23_i3_3_lut_4_lut.init = 16'hf780;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

