// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Wed Apr 12 23:17:26 2017
//
// Verilog Description of module I2C_Controller
//

module I2C_Controller (CLOCK, I2C_SCLK, I2C_SDAT, I2C_DATA, GO, END, 
            W_R, ACK, RESET, SD_COUNTER, SDO) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(42[8:22])
    input CLOCK;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(56[9:14])
    output I2C_SCLK;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(62[9:17])
    inout I2C_SDAT;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(61[10:18])
    input [23:0]I2C_DATA;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    input GO;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(58[9:11])
    output END;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(63[9:12])
    input W_R;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(60[9:12])
    output ACK;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(64[9:12])
    input RESET;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(59[9:14])
    output [5:0]SD_COUNTER;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    output SDO;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(68[9:12])
    
    wire CLOCK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLOCK_c */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(56[9:14])
    
    wire GND_net, I2C_DATA_c_23, I2C_DATA_c_22, I2C_DATA_c_21, I2C_DATA_c_20, 
        I2C_DATA_c_19, I2C_DATA_c_18, I2C_DATA_c_17, I2C_DATA_c_16, 
        I2C_DATA_c_15, I2C_DATA_c_14, I2C_DATA_c_13, I2C_DATA_c_12, 
        I2C_DATA_c_11, I2C_DATA_c_10, I2C_DATA_c_9, I2C_DATA_c_8, I2C_DATA_c_7, 
        I2C_DATA_c_6, I2C_DATA_c_5, I2C_DATA_c_4, I2C_DATA_c_3, I2C_DATA_c_2, 
        I2C_DATA_c_1, I2C_DATA_c_0, GO_c, RESET_c, SDO_c, SCLK, 
        END_c;
    wire [23:0]SD;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(74[11:13])
    
    wire SD_COUNTER_c_5, SD_COUNTER_c_4, SD_COUNTER_c_3, SD_COUNTER_c_2, 
        SD_COUNTER_c_1, SD_COUNTER_c_0, I2C_SCLK_c, ACK1, ACK2, ACK3, 
        ACK_c, n1333, n1353, n780, n31, n1358, n3, n18, SDO_N_64, 
        n1362, n21, n1419, n1356, n1359, n10, I2C_SDAT_out, n1357, 
        CLOCK_c_enable_5, CLOCK_c_enable_6, n788, n782, n31_adj_1, 
        n1416, n1335, n1186, n165, n776, n778, n1338, n1336, 
        n1433, n1432, CLOCK_c_enable_7, n1431, CLOCK_c_enable_1, n1422, 
        n1355, n163, VCC_net, n1334, n1367, n1399, n1430, n1366, 
        n1365, n1429, n1428, n1354, n958, n1364, n1352, n162, 
        n1363, n1398, n1361, n1426, n1434, n15, n14, n1360, 
        CLOCK_c_enable_30, n1351, n1425, CLOCK_c_enable_2, n1350, 
        CLOCK_c_enable_8, n1331, n1435, n1424, n1423;
    
    VHI i1065 (.Z(VCC_net));
    OB SD_COUNTER_pad_1 (.I(SD_COUNTER_c_1), .O(SD_COUNTER[1]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    LUT4 i1_2_lut (.A(SD_COUNTER_c_2), .B(I2C_SDAT_out), .Z(n1333)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut.init = 16'h8888;
    IB I2C_DATA_pad_22 (.I(I2C_DATA[22]), .O(I2C_DATA_c_22));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    BB I2C_SDAT_pad (.I(GND_net), .T(SDO_c), .B(I2C_SDAT), .O(I2C_SDAT_out));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(61[10:18])
    IB I2C_DATA_pad_23 (.I(I2C_DATA[23]), .O(I2C_DATA_c_23));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB CLOCK_pad (.I(CLOCK), .O(CLOCK_c));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(56[9:14])
    LUT4 i14_4_lut_then_4_lut (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_2), .C(SD_COUNTER_c_1), 
         .D(SD_COUNTER_c_3), .Z(n1435)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i14_4_lut_then_4_lut.init = 16'h4000;
    FD1P3AX ACK1_46 (.D(n15), .SP(CLOCK_c_enable_1), .CK(CLOCK_c), .Q(ACK1));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam ACK1_46.GSR = "ENABLED";
    FD1P3AY END_49 (.D(SD_COUNTER_c_5), .SP(CLOCK_c_enable_2), .CK(CLOCK_c), 
            .Q(END_c));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam END_49.GSR = "ENABLED";
    FD1P3AX SD_i0_i0 (.D(I2C_DATA_c_0), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[0]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i0.GSR = "DISABLED";
    IB RESET_pad (.I(RESET), .O(RESET_c));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(59[9:14])
    IB GO_pad (.I(GO), .O(GO_c));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(58[9:11])
    IB I2C_DATA_pad_0 (.I(I2C_DATA[0]), .O(I2C_DATA_c_0));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_1 (.I(I2C_DATA[1]), .O(I2C_DATA_c_1));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_2 (.I(I2C_DATA[2]), .O(I2C_DATA_c_2));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_3 (.I(I2C_DATA[3]), .O(I2C_DATA_c_3));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_4 (.I(I2C_DATA[4]), .O(I2C_DATA_c_4));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_5 (.I(I2C_DATA[5]), .O(I2C_DATA_c_5));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_6 (.I(I2C_DATA[6]), .O(I2C_DATA_c_6));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_7 (.I(I2C_DATA[7]), .O(I2C_DATA_c_7));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_8 (.I(I2C_DATA[8]), .O(I2C_DATA_c_8));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_9 (.I(I2C_DATA[9]), .O(I2C_DATA_c_9));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_10 (.I(I2C_DATA[10]), .O(I2C_DATA_c_10));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_11 (.I(I2C_DATA[11]), .O(I2C_DATA_c_11));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_12 (.I(I2C_DATA[12]), .O(I2C_DATA_c_12));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_13 (.I(I2C_DATA[13]), .O(I2C_DATA_c_13));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_14 (.I(I2C_DATA[14]), .O(I2C_DATA_c_14));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    OB SD_COUNTER_pad_4 (.I(SD_COUNTER_c_4), .O(SD_COUNTER[4]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    OB SD_COUNTER_pad_3 (.I(SD_COUNTER_c_3), .O(SD_COUNTER[3]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    IB I2C_DATA_pad_15 (.I(I2C_DATA[15]), .O(I2C_DATA_c_15));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_16 (.I(I2C_DATA[16]), .O(I2C_DATA_c_16));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_17 (.I(I2C_DATA[17]), .O(I2C_DATA_c_17));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    OB SD_COUNTER_pad_5 (.I(SD_COUNTER_c_5), .O(SD_COUNTER[5]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    OB ACK_pad (.I(ACK_c), .O(ACK));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(64[9:12])
    OB END_pad (.I(END_c), .O(END));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(63[9:12])
    OB I2C_SCLK_pad (.I(I2C_SCLK_c), .O(I2C_SCLK));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(62[9:17])
    IB I2C_DATA_pad_18 (.I(I2C_DATA[18]), .O(I2C_DATA_c_18));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_19 (.I(I2C_DATA[19]), .O(I2C_DATA_c_19));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    IB I2C_DATA_pad_20 (.I(I2C_DATA[20]), .O(I2C_DATA_c_20));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    OB SDO_pad (.I(SDO_c), .O(SDO));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(68[9:12])
    OB SD_COUNTER_pad_2 (.I(SD_COUNTER_c_2), .O(SD_COUNTER[2]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    IB I2C_DATA_pad_21 (.I(I2C_DATA[21]), .O(I2C_DATA_c_21));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(57[15:23])
    FD1S3AY SD_COUNTER__i1 (.D(n18), .CK(CLOCK_c), .Q(SD_COUNTER_c_0));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i1.GSR = "ENABLED";
    OB SD_COUNTER_pad_0 (.I(SD_COUNTER_c_0), .O(SD_COUNTER[0]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    FD1P3AX SD_i0_i1 (.D(I2C_DATA_c_1), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[1]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_27 (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), .Z(n1432)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_2_lut_rep_27.init = 16'h8888;
    LUT4 i974_2_lut (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_2), .Z(n1336)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i974_2_lut.init = 16'heeee;
    LUT4 i976_2_lut (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_0), .Z(n1338)) /* synthesis lut_function=(A (B)) */ ;
    defparam i976_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), .C(SD_COUNTER_c_2), 
         .D(SD_COUNTER_c_0), .Z(n1331)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_28 (.A(SD_COUNTER_c_4), .B(SD_COUNTER_c_3), .Z(n1433)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_2_lut_rep_28.init = 16'h8888;
    LUT4 i994_3_lut (.A(SD[15]), .B(SD[14]), .C(SD_COUNTER_c_0), .Z(n1356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i994_3_lut.init = 16'hcaca;
    LUT4 i27_4_lut_4_lut (.A(SD_COUNTER_c_4), .B(SD_COUNTER_c_3), .C(SD_COUNTER_c_2), 
         .D(n1338), .Z(n14)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C)))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(56[9:14])
    defparam i27_4_lut_4_lut.init = 16'h7efe;
    PFUMX i1006 (.BLUT(n1366), .ALUT(n1367), .C0(SD_COUNTER_c_4), .Z(n31));
    LUT4 i3_3_lut_rep_18_4_lut (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), 
         .C(SD_COUNTER_c_2), .D(SD_COUNTER_c_0), .Z(n1423)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_18_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_1 (.A(SD_COUNTER_c_4), .B(n1432), .C(SD_COUNTER_c_0), 
         .D(n1333), .Z(n1335)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i2_3_lut_4_lut_adj_1.init = 16'h0800;
    LUT4 i1_2_lut_rep_23_3_lut (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), 
         .C(SD_COUNTER_c_0), .Z(n1428)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_23_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_25 (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_4), .Z(n1430)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_rep_25.init = 16'h8888;
    LUT4 i1028_2_lut_rep_16_4_lut (.A(SD_COUNTER_c_0), .B(n1429), .C(SD_COUNTER_c_2), 
         .D(SD_COUNTER_c_4), .Z(CLOCK_c_enable_2)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1028_2_lut_rep_16_4_lut.init = 16'h0001;
    LUT4 SD_COUNTER_c_2_bdd_4_lut_1054 (.A(SD_COUNTER_c_2), .B(SD_COUNTER_c_1), 
         .C(SD_COUNTER_c_3), .D(SD_COUNTER_c_4), .Z(n1416)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+(D)))) */ ;
    defparam SD_COUNTER_c_2_bdd_4_lut_1054.init = 16'h8001;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(SD_COUNTER_c_4), .B(SD_COUNTER_c_3), 
         .C(n1423), .D(n1425), .Z(n31_adj_1)) /* synthesis lut_function=(A (B (D))+!A !(C)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h8d05;
    LUT4 i2_3_lut_rep_21_4_lut (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_4), 
         .C(GO_c), .D(SD_COUNTER_c_3), .Z(n1426)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i2_3_lut_rep_21_4_lut.init = 16'h8000;
    LUT4 n1344_bdd_4_lut (.A(SD_COUNTER_c_4), .B(SD_COUNTER_c_2), .C(SD_COUNTER_c_5), 
         .D(SD_COUNTER_c_0), .Z(n1419)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam n1344_bdd_4_lut.init = 16'h0801;
    LUT4 i43_4_lut (.A(n31), .B(n1423), .C(SD_COUNTER_c_4), .D(SD_COUNTER_c_5), 
         .Z(SDO_N_64)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i43_4_lut.init = 16'h03aa;
    LUT4 i1004_3_lut (.A(n1362), .B(n1363), .C(SD_COUNTER_c_3), .Z(n1366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1004_3_lut.init = 16'hcaca;
    L6MUX21 i1001 (.D0(n10), .D1(n1358), .SD(SD_COUNTER_c_2), .Z(n1363));
    LUT4 i980_2_lut_rep_19_3_lut (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_4), 
         .C(SD_COUNTER_c_0), .Z(n1424)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i980_2_lut_rep_19_3_lut.init = 16'hfefe;
    LUT4 i1005_3_lut (.A(n1364), .B(n1365), .C(SD_COUNTER_c_3), .Z(n1367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1005_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(ACK3), .B(ACK2), .C(ACK1), .Z(ACK_c)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(81[10:27])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i995_3_lut (.A(SD[13]), .B(SD[12]), .C(SD_COUNTER_c_0), .Z(n1357)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i995_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_26 (.A(SD_COUNTER_c_2), .B(SD_COUNTER_c_1), .Z(n1431)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_rep_26.init = 16'h8888;
    LUT4 i1003_4_lut (.A(n1361), .B(n165), .C(SD_COUNTER_c_2), .D(SD_COUNTER_c_1), 
         .Z(n1365)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i1003_4_lut.init = 16'h0aca;
    L6MUX21 i1002 (.D0(n1355), .D1(n21), .SD(SD_COUNTER_c_2), .Z(n1364));
    PFUMX i993 (.BLUT(n1353), .ALUT(n1354), .C0(SD_COUNTER_c_1), .Z(n1355));
    LUT4 i1_2_lut_adj_2 (.A(SD_COUNTER_c_0), .B(SD[0]), .Z(n165)) /* synthesis lut_function=(A+(B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_2_lut_adj_2.init = 16'heeee;
    LUT4 i997_3_lut (.A(SD[4]), .B(SD[3]), .C(SD_COUNTER_c_0), .Z(n1359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i997_3_lut.init = 16'hcaca;
    PFUMX i1000 (.BLUT(n3), .ALUT(n1352), .C0(SD_COUNTER_c_2), .Z(n1362));
    LUT4 i1_4_lut (.A(SD_COUNTER_c_5), .B(SCLK), .C(CLOCK_c), .D(n14), 
         .Z(I2C_SCLK_c)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(56[9:14])
    defparam i1_4_lut.init = 16'hcdcc;
    PFUMX i999 (.BLUT(n1359), .ALUT(n1360), .C0(SD_COUNTER_c_1), .Z(n1361));
    PFUMX i823 (.BLUT(n162), .ALUT(n1186), .C0(SD_COUNTER_c_0), .Z(n21));
    LUT4 i1_3_lut_4_lut (.A(n1433), .B(n1425), .C(SD_COUNTER_c_5), .D(GO_c), 
         .Z(n780)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_3_lut_4_lut.init = 16'hf800;
    PFUMX i584 (.BLUT(n958), .ALUT(n163), .C0(SD_COUNTER_c_0), .Z(n10));
    LUT4 i1_2_lut_rep_17_4_lut (.A(n1430), .B(SD_COUNTER_c_3), .C(GO_c), 
         .D(n1431), .Z(n1422)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_rep_17_4_lut.init = 16'h8000;
    LUT4 i14_4_lut_else_4_lut (.A(SD_COUNTER_c_5), .B(SD_COUNTER_c_2), .C(SD_COUNTER_c_3), 
         .D(SD_COUNTER_c_0), .Z(n1434)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i14_4_lut_else_4_lut.init = 16'h0001;
    LUT4 i1014_3_lut (.A(n1350), .B(n1351), .C(SD_COUNTER_c_1), .Z(n1352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1014_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_20_3_lut (.A(SD_COUNTER_c_2), .B(SD_COUNTER_c_1), 
         .C(SD_COUNTER_c_0), .Z(n1425)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_rep_20_3_lut.init = 16'h8080;
    LUT4 n1417_bdd_2_lut_3_lut (.A(n1416), .B(SD_COUNTER_c_5), .C(SD_COUNTER_c_0), 
         .Z(CLOCK_c_enable_6)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n1417_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 i2_4_lut (.A(n1424), .B(SD_COUNTER_c_1), .C(SD_COUNTER_c_2), 
         .D(SD_COUNTER_c_3), .Z(CLOCK_c_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut.init = 16'h1001;
    LUT4 i1_4_lut_adj_3 (.A(GO_c), .B(n1422), .C(SD_COUNTER_c_1), .D(SD_COUNTER_c_0), 
         .Z(n776)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_3.init = 16'hceec;
    LUT4 i37_4_lut (.A(SD_COUNTER_c_2), .B(n1426), .C(n1338), .D(GO_c), 
         .Z(n788)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C (D))) */ ;
    defparam i37_4_lut.init = 16'hda80;
    LUT4 i1_3_lut_4_lut_adj_4 (.A(n1426), .B(n1431), .C(GO_c), .D(SD_COUNTER_c_0), 
         .Z(n18)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_3_lut_4_lut_adj_4.init = 16'h88f8;
    LUT4 i982_2_lut_rep_24 (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), .Z(n1429)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i982_2_lut_rep_24.init = 16'heeee;
    LUT4 i211_4_lut (.A(GO_c), .B(SD_COUNTER_c_3), .C(n1425), .D(n1430), 
         .Z(n782)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))) */ ;
    defparam i211_4_lut.init = 16'ha828;
    LUT4 i1_4_lut_adj_5 (.A(GO_c), .B(SD_COUNTER_c_4), .C(SD_COUNTER_c_5), 
         .D(n1331), .Z(n778)) /* synthesis lut_function=(A (B (C+!(D))+!B (D))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i1_4_lut_adj_5.init = 16'ha288;
    LUT4 n1419_bdd_2_lut_3_lut (.A(SD_COUNTER_c_1), .B(SD_COUNTER_c_3), 
         .C(n1419), .Z(CLOCK_c_enable_5)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n1419_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_adj_6 (.A(n1423), .B(SD_COUNTER_c_4), .C(n1399), 
         .D(SD_COUNTER_c_5), .Z(CLOCK_c_enable_7)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_6.init = 16'h11f1;
    LUT4 i991_3_lut (.A(SD[11]), .B(SD[10]), .C(SD_COUNTER_c_0), .Z(n1353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i991_3_lut.init = 16'hcaca;
    LUT4 i992_3_lut (.A(SD[9]), .B(SD[8]), .C(SD_COUNTER_c_0), .Z(n1354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i992_3_lut.init = 16'hcaca;
    PFUMX i996 (.BLUT(n1356), .ALUT(n1357), .C0(SD_COUNTER_c_1), .Z(n1358));
    LUT4 i1_2_lut_adj_7 (.A(SD_COUNTER_c_3), .B(I2C_SDAT_out), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_adj_7.init = 16'h8888;
    LUT4 SD_COUNTER_c_4_bdd_4_lut (.A(SD_COUNTER_c_4), .B(SD_COUNTER_c_0), 
         .C(SD_COUNTER_c_2), .D(SD_COUNTER_c_3), .Z(n1398)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+(D))))) */ ;
    defparam SD_COUNTER_c_4_bdd_4_lut.init = 16'h7ffe;
    LUT4 SD_COUNTER_5__I_0_52_i3_3_lut (.A(SD_COUNTER_c_0), .B(SD[23]), 
         .C(SD_COUNTER_c_1), .Z(n3)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_COUNTER_5__I_0_52_i3_3_lut.init = 16'hc5c5;
    LUT4 i998_3_lut (.A(SD[2]), .B(SD[1]), .C(SD_COUNTER_c_0), .Z(n1360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i998_3_lut.init = 16'hcaca;
    FD1P3AX ACK2_47 (.D(n1334), .SP(CLOCK_c_enable_5), .CK(CLOCK_c), .Q(ACK2));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam ACK2_47.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_8 (.A(SD_COUNTER_c_1), .B(SD[6]), .Z(n162)) /* synthesis lut_function=((B)+!A) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_adj_8.init = 16'hdddd;
    LUT4 i822_3_lut (.A(SD[7]), .B(SD[5]), .C(SD_COUNTER_c_1), .Z(n1186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i822_3_lut.init = 16'hcaca;
    LUT4 i989_3_lut (.A(SD[20]), .B(SD[19]), .C(SD_COUNTER_c_0), .Z(n1351)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i989_3_lut.init = 16'hcaca;
    LUT4 i988_3_lut (.A(SD[22]), .B(SD[21]), .C(SD_COUNTER_c_0), .Z(n1350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i988_3_lut.init = 16'hcaca;
    LUT4 i582_3_lut (.A(SD[18]), .B(SD[16]), .C(SD_COUNTER_c_1), .Z(n958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i582_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_9 (.A(SD_COUNTER_c_1), .B(SD[17]), .Z(n163)) /* synthesis lut_function=(A+(B)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i1_2_lut_adj_9.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_10 (.A(SD_COUNTER_c_0), .B(n1429), .C(SD_COUNTER_c_4), 
         .D(n1333), .Z(n1334)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(67[15:25])
    defparam i2_3_lut_4_lut_adj_10.init = 16'h2000;
    LUT4 i4_4_lut (.A(n1336), .B(RESET_c), .C(n1428), .D(SD_COUNTER_c_4), 
         .Z(CLOCK_c_enable_30)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam i4_4_lut.init = 16'h0040;
    VLO i1 (.Z(GND_net));
    FD1P3AX ACK3_48 (.D(n1335), .SP(CLOCK_c_enable_6), .CK(CLOCK_c), .Q(ACK3));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam ACK3_48.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i1047 (.BLUT(n1434), .ALUT(n1435), .C0(SD_COUNTER_c_4), .Z(CLOCK_c_enable_8));
    LUT4 pwr_bdd_2_lut (.A(n1398), .B(SD_COUNTER_c_1), .Z(n1399)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut.init = 16'hbbbb;
    FD1P3AY SDO_45 (.D(SDO_N_64), .SP(CLOCK_c_enable_7), .CK(CLOCK_c), 
            .Q(SDO_c));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SDO_45.GSR = "ENABLED";
    FD1P3AY SCLK_44 (.D(n31_adj_1), .SP(CLOCK_c_enable_8), .CK(CLOCK_c), 
            .Q(SCLK));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SCLK_44.GSR = "ENABLED";
    GSR GSR_INST (.GSR(RESET_c));
    FD1P3AX SD_i0_i2 (.D(I2C_DATA_c_2), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[2]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i2.GSR = "DISABLED";
    FD1P3AX SD_i0_i3 (.D(I2C_DATA_c_3), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[3]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i3.GSR = "DISABLED";
    FD1P3AX SD_i0_i4 (.D(I2C_DATA_c_4), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[4]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i4.GSR = "DISABLED";
    FD1P3AX SD_i0_i5 (.D(I2C_DATA_c_5), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[5]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i5.GSR = "DISABLED";
    FD1P3AX SD_i0_i6 (.D(I2C_DATA_c_6), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[6]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i6.GSR = "DISABLED";
    FD1P3AX SD_i0_i7 (.D(I2C_DATA_c_7), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[7]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i7.GSR = "DISABLED";
    FD1P3AX SD_i0_i8 (.D(I2C_DATA_c_8), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[8]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i8.GSR = "DISABLED";
    FD1P3AX SD_i0_i9 (.D(I2C_DATA_c_9), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[9]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i9.GSR = "DISABLED";
    FD1P3AX SD_i0_i10 (.D(I2C_DATA_c_10), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[10]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i10.GSR = "DISABLED";
    FD1P3AX SD_i0_i11 (.D(I2C_DATA_c_11), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[11]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i11.GSR = "DISABLED";
    FD1P3AX SD_i0_i12 (.D(I2C_DATA_c_12), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[12]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i12.GSR = "DISABLED";
    FD1P3AX SD_i0_i13 (.D(I2C_DATA_c_13), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[13]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i13.GSR = "DISABLED";
    FD1P3AX SD_i0_i14 (.D(I2C_DATA_c_14), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[14]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i14.GSR = "DISABLED";
    FD1P3AX SD_i0_i15 (.D(I2C_DATA_c_15), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[15]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i15.GSR = "DISABLED";
    FD1P3AX SD_i0_i16 (.D(I2C_DATA_c_16), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[16]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i16.GSR = "DISABLED";
    FD1P3AX SD_i0_i17 (.D(I2C_DATA_c_17), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[17]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i17.GSR = "DISABLED";
    FD1P3AX SD_i0_i18 (.D(I2C_DATA_c_18), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[18]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i18.GSR = "DISABLED";
    FD1P3AX SD_i0_i19 (.D(I2C_DATA_c_19), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[19]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i19.GSR = "DISABLED";
    FD1P3AX SD_i0_i20 (.D(I2C_DATA_c_20), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[20]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i20.GSR = "DISABLED";
    FD1P3AX SD_i0_i21 (.D(I2C_DATA_c_21), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[21]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i21.GSR = "DISABLED";
    FD1P3AX SD_i0_i22 (.D(I2C_DATA_c_22), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[22]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i22.GSR = "DISABLED";
    FD1P3AX SD_i0_i23 (.D(I2C_DATA_c_23), .SP(CLOCK_c_enable_30), .CK(CLOCK_c), 
            .Q(SD[23]));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(98[1] 142[8])
    defparam SD_i0_i23.GSR = "DISABLED";
    FD1S3AY SD_COUNTER__i2 (.D(n776), .CK(CLOCK_c), .Q(SD_COUNTER_c_1));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i2.GSR = "ENABLED";
    FD1S3AY SD_COUNTER__i3 (.D(n788), .CK(CLOCK_c), .Q(SD_COUNTER_c_2));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i3.GSR = "ENABLED";
    FD1S3AY SD_COUNTER__i4 (.D(n782), .CK(CLOCK_c), .Q(SD_COUNTER_c_3));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i4.GSR = "ENABLED";
    FD1S3AY SD_COUNTER__i5 (.D(n778), .CK(CLOCK_c), .Q(SD_COUNTER_c_4));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i5.GSR = "ENABLED";
    FD1S3AY SD_COUNTER__i6 (.D(n780), .CK(CLOCK_c), .Q(SD_COUNTER_c_5));   // d:/uiuc/2017_spring/ece_396/04_13/i2s_iot/i2c.v(86[6] 91[4])
    defparam SD_COUNTER__i6.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

