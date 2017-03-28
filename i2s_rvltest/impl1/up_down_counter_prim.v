// Verilog netlist produced by program LSE :  version Diamond Version 3.9.0.99.2
// Netlist written on Mon Mar 13 11:26:17 2017
//
// Verilog Description of module up_down_counter
//

module up_down_counter (out, reset) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(7[8:23])
    output [7:0]out;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    input reset;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(16[7:12])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(20[5:8])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(21[6:13])
    wire osc_clk_N_17 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(19[11:16])
    
    wire GND_net, VCC_net, reset_c, out_c_7, out_c_6, out_c_5, out_c_4, 
        out_c_3, out_c_2, out_c_1, out_c_0;
    wire [6:0]count;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(19[11:16])
    
    wire n30, n29, n28, n27, n178, n26, n171, clk_N_34, n38, 
        n39, n40, n41, n42, n43, n44, n45, n183, n182, n181, 
        n180, n177, n6;
    
    VHI i58 (.Z(VCC_net));
    LUT4 i4_4_lut (.A(count[3]), .B(count[2]), .C(count[4]), .D(n6), 
         .Z(n171)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    INV i60 (.A(osc_clk), .Z(osc_clk_N_17));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    OB out_pad_5 (.I(out_c_5), .O(out[5]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    CCU2D count_29_30_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n178), .S0(n27), .S1(n26));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30_add_4_5.INIT0 = 16'hfaaa;
    defparam count_29_30_add_4_5.INIT1 = 16'hfaaa;
    defparam count_29_30_add_4_5.INJECT1_0 = "NO";
    defparam count_29_30_add_4_5.INJECT1_1 = "NO";
    CCU2D count_29_30_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n177), .COUT(n178), .S0(n29), .S1(n28));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30_add_4_3.INIT0 = 16'hfaaa;
    defparam count_29_30_add_4_3.INIT1 = 16'hfaaa;
    defparam count_29_30_add_4_3.INJECT1_0 = "NO";
    defparam count_29_30_add_4_3.INJECT1_1 = "NO";
    OB out_pad_6 (.I(out_c_6), .O(out[6]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    OB out_pad_7 (.I(out_c_7), .O(out[7]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    FD1S3IX count_29_30__i1 (.D(n30), .CK(osc_clk_N_17), .CD(n171), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30__i1.GSR = "ENABLED";
    FD1S3IX out_31__i1 (.D(n45), .CK(clk), .CD(reset_c), .Q(out_c_0)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i1.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    FD1S3IX out_31__i8 (.D(n38), .CK(clk), .CD(reset_c), .Q(out_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i8.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(count[0]), .B(count[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX clk_18 (.D(clk_N_34), .CK(osc_clk_N_17), .Q(clk));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(47[3] 55[7])
    defparam clk_18.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_1 (.A(clk), .B(n171), .Z(clk_N_34)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    GSR GSR_INST (.GSR(reset_c));
    FD1S3IX out_31__i7 (.D(n39), .CK(clk), .CD(reset_c), .Q(out_c_6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i7.GSR = "DISABLED";
    FD1S3IX out_31__i6 (.D(n40), .CK(clk), .CD(reset_c), .Q(out_c_5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i6.GSR = "DISABLED";
    FD1S3IX out_31__i5 (.D(n41), .CK(clk), .CD(reset_c), .Q(out_c_4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i5.GSR = "DISABLED";
    FD1S3IX out_31__i4 (.D(n42), .CK(clk), .CD(reset_c), .Q(out_c_3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i4.GSR = "DISABLED";
    FD1S3IX out_31__i3 (.D(n43), .CK(clk), .CD(reset_c), .Q(out_c_2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i3.GSR = "DISABLED";
    FD1S3IX out_31__i2 (.D(n44), .CK(clk), .CD(reset_c), .Q(out_c_1)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31__i2.GSR = "DISABLED";
    FD1S3IX count_29_30__i5 (.D(n26), .CK(osc_clk_N_17), .CD(n171), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30__i5.GSR = "ENABLED";
    CCU2D out_31_add_4_9 (.A0(out_c_7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n183), 
          .S0(n38));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31_add_4_9.INIT0 = 16'hfaaa;
    defparam out_31_add_4_9.INIT1 = 16'h0000;
    defparam out_31_add_4_9.INJECT1_0 = "NO";
    defparam out_31_add_4_9.INJECT1_1 = "NO";
    CCU2D out_31_add_4_7 (.A0(out_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(out_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n182), 
          .COUT(n183), .S0(n40), .S1(n39));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31_add_4_7.INIT0 = 16'hfaaa;
    defparam out_31_add_4_7.INIT1 = 16'hfaaa;
    defparam out_31_add_4_7.INJECT1_0 = "NO";
    defparam out_31_add_4_7.INJECT1_1 = "NO";
    CCU2D out_31_add_4_5 (.A0(out_c_3), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(out_c_4), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n181), 
          .COUT(n182), .S0(n42), .S1(n41));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31_add_4_5.INIT0 = 16'hfaaa;
    defparam out_31_add_4_5.INIT1 = 16'hfaaa;
    defparam out_31_add_4_5.INJECT1_0 = "NO";
    defparam out_31_add_4_5.INJECT1_1 = "NO";
    CCU2D out_31_add_4_3 (.A0(out_c_1), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(out_c_2), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n180), 
          .COUT(n181), .S0(n44), .S1(n43));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31_add_4_3.INIT0 = 16'hfaaa;
    defparam out_31_add_4_3.INIT1 = 16'hfaaa;
    defparam out_31_add_4_3.INJECT1_0 = "NO";
    defparam out_31_add_4_3.INJECT1_1 = "NO";
    FD1S3IX count_29_30__i4 (.D(n27), .CK(osc_clk_N_17), .CD(n171), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30__i4.GSR = "ENABLED";
    FD1S3IX count_29_30__i3 (.D(n28), .CK(osc_clk_N_17), .CD(n171), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30__i3.GSR = "ENABLED";
    FD1S3IX count_29_30__i2 (.D(n29), .CK(osc_clk_N_17), .CD(n171), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30__i2.GSR = "ENABLED";
    CCU2D out_31_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(out_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n180), 
          .S1(n45));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(27[10:17])
    defparam out_31_add_4_1.INIT0 = 16'hF000;
    defparam out_31_add_4_1.INIT1 = 16'h0555;
    defparam out_31_add_4_1.INJECT1_0 = "NO";
    defparam out_31_add_4_1.INJECT1_1 = "NO";
    CCU2D count_29_30_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n177), .S1(n30));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(49[10:17])
    defparam count_29_30_add_4_1.INIT0 = 16'hF000;
    defparam count_29_30_add_4_1.INIT1 = 16'h0555;
    defparam count_29_30_add_4_1.INJECT1_0 = "NO";
    defparam count_29_30_add_4_1.INJECT1_1 = "NO";
    OB out_pad_4 (.I(out_c_4), .O(out[4]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    OB out_pad_3 (.I(out_c_3), .O(out[3]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    OB out_pad_2 (.I(out_c_2), .O(out[2]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    OB out_pad_1 (.I(out_c_1), .O(out[1]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    OB out_pad_0 (.I(out_c_0), .O(out[0]));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(13[14:17])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/sec29/desktop/i2s_iot/rvl_test/top.v(16[7:12])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 11:27:04 2017 */


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
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 7 -num_rows 256 -rdata_width 7 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr7825678256119b20eb -pmi -lang verilog  */
/* Mon Mar 13 11:27:04 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr7825678256119b20eb (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [6:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [6:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(WrAddress[7]), .ADA9(WrAddress[6]), 
        .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), .ADA5(WrAddress[2]), 
        .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr7825678256119b20eb__PMIP__256__7__7B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr7825678256119b20eb__PMIP__256__7__7B
    // exemplar attribute pmi_ram_dpXbnonesadr7825678256119b20eb_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 13:07:08 2017 */


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
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 8 -num_rows 256 -rdata_width 8 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr8825688256119b275c -pmi -lang verilog  */
/* Mon Mar 13 13:07:08 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr8825688256119b275c (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [7:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(WrAddress[7]), .ADA9(WrAddress[6]), 
        .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), .ADA5(WrAddress[2]), 
        .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr8825688256119b275c__PMIP__256__8__8B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr8825688256119b275c__PMIP__256__8__8B
    // exemplar attribute pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 13:11:01 2017 */


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
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 8 -num_rows 512 -rdata_width 8 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr8951289512119b05c0 -pmi -lang verilog  */
/* Mon Mar 13 13:11:01 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr8951289512119b05c0 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [7:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), 
        .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(), .DO7(), .DO6(), .DO5(), 
        .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr8951289512119b05c0__PMIP__512__8__8B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr8951289512119b05c0__PMIP__512__8__8B
    // exemplar attribute pmi_ram_dpXbnonesadr8951289512119b05c0_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond Version 3.9.0.99.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr11211211528818 -pmi -lang verilog  */
/* Mon Mar 13 13:27:51 2017 */


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
/* C:/lscc/diamond/3.9/ispfpga/bin/nt/scuba -w -bus_exp 7 -bb -arch xo3c00a -type bram -wp 10 -rp 0011 -data_width 8 -num_rows 256 -rdata_width 8 -read_reg1 outreg -gsr DISABLED -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr8825688256119b275c -pmi -lang verilog  */
/* Mon Mar 13 13:27:50 2017 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr8825688256119b275c (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [7:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.ASYNC_RESET_RELEASE = "SYNC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(WrAddress[7]), .ADA9(WrAddress[6]), 
        .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), .ADA5(WrAddress[2]), 
        .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr8825688256119b275c__PMIP__256__8__8B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr8825688256119b275c__PMIP__256__8__8B
    // exemplar attribute pmi_ram_dpXbnonesadr8825688256119b275c_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
