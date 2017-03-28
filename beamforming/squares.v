/* Verilog netlist generated by SCUBA Diamond Version 3.4.0.80 */
/* Module Version: 2.7 */
/* C:\lscc\diamond\3.4\ispfpga\bin\nt\scuba.exe -w -n squares -lang verilog -synth lse -bus_exp 7 -bb -arch xo3c00a -type rom -addr_width 7 -num_rows 128 -data_width 15 -outdata REGISTERED -memfile c:/users/sec29/desktop/i2s_iot/squares.mem -memformat hex  */
/* Fri Mar 03 10:40:43 2017 */


`timescale 1 ns / 1 ps
module squares (Address, OutClock, OutClockEn, Reset, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [6:0] Address;
    input wire OutClock;
    input wire OutClockEn;
    input wire Reset;
    output wire [14:0] Q;

    wire qdataout14_ffin;
    wire qdataout13_ffin;
    wire qdataout12_ffin;
    wire qdataout11_ffin;
    wire qdataout10_ffin;
    wire qdataout9_ffin;
    wire qdataout8_ffin;
    wire qdataout7_ffin;
    wire qdataout6_ffin;
    wire qdataout5_ffin;
    wire qdataout4_ffin;
    wire qdataout3_ffin;
    wire qdataout2_ffin;
    wire qdataout1_ffin;
    wire qdataout0_ffin;

    FD1P3DX FF_14 (.D(qdataout14_ffin), .SP(OutClockEn), .CK(OutClock), 
        .CD(Reset), .Q(Q[14]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_13 (.D(qdataout13_ffin), .SP(OutClockEn), .CK(OutClock), 
        .CD(Reset), .Q(Q[13]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_12 (.D(qdataout12_ffin), .SP(OutClockEn), .CK(OutClock), 
        .CD(Reset), .Q(Q[12]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_11 (.D(qdataout11_ffin), .SP(OutClockEn), .CK(OutClock), 
        .CD(Reset), .Q(Q[11]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_10 (.D(qdataout10_ffin), .SP(OutClockEn), .CK(OutClock), 
        .CD(Reset), .Q(Q[10]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_9 (.D(qdataout9_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[9]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_8 (.D(qdataout8_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[8]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_7 (.D(qdataout7_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[7]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_6 (.D(qdataout6_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[6]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_5 (.D(qdataout5_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[5]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(qdataout4_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[4]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(qdataout3_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[3]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(qdataout2_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[2]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(qdataout1_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[1]))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_0 (.D(qdataout0_ffin), .SP(OutClockEn), .CK(OutClock), .CD(Reset), 
        .Q(Q[0]))
             /* synthesis GSR="ENABLED" */;

    defparam mem_0_14.initval = 128'h80000000000000000000000000000000 ;
    ROM128X1A mem_0_14 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout14_ffin));

    defparam mem_0_13.initval = 128'h7FFFFFFFFC0000000000000000000000 ;
    ROM128X1A mem_0_13 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout13_ffin));

    defparam mem_0_12.initval = 128'h7FFFC00003FFFFFF8000000000000000 ;
    ROM128X1A mem_0_12 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout12_ffin));

    defparam mem_0_11.initval = 128'h7F803FE003FFC0007FFFE00000000000 ;
    ROM128X1A mem_0_11 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout11_ffin));

    defparam mem_0_10.initval = 128'h78783C1F83F03F807F801FFF80000000 ;
    ROM128X1A mem_0_10 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout10_ffin));

    defparam mem_0_9.initval = 128'h6666339C638E3878787C1F807FC00000 ;
    ROM128X1A mem_0_9 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout9_ffin));

    defparam mem_0_8.initval = 128'h5555AB5A5A49B66666639C78783F8000 ;
    ROM128X1A mem_0_8 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout8_ffin));

    defparam mem_0_7.initval = 128'h000F0E33336D2D55555A5B6666387800 ;
    ROM128X1A mem_0_7 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout7_ffin));

    defparam mem_0_6.initval = 128'h00F332D555A6678000F332D555A66780 ;
    ROM128X1A mem_0_6 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout6_ffin));

    defparam mem_0_5.initval = 128'h03355660033556600335566003355660 ;
    ROM128X1A mem_0_5 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout5_ffin));

    defparam mem_0_4.initval = 128'h0D580D580D580D580D580D580D580D58 ;
    ROM128X1A mem_0_4 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout4_ffin));

    defparam mem_0_3.initval = 128'h14141414141414141414141414141414 ;
    ROM128X1A mem_0_3 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout3_ffin));

    defparam mem_0_2.initval = 128'h22222222222222222222222222222222 ;
    ROM128X1A mem_0_2 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout2_ffin));

    defparam mem_0_1.initval = 128'h00000000000000000000000000000000 ;
    ROM128X1A mem_0_1 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout1_ffin));

    defparam mem_0_0.initval = 128'h55555555555555555555555555555555 ;
    ROM128X1A mem_0_0 (.AD6(Address[6]), .AD5(Address[5]), .AD4(Address[4]), 
        .AD3(Address[3]), .AD2(Address[2]), .AD1(Address[1]), .AD0(Address[0]), 
        .DO0(qdataout0_ffin));



    // exemplar begin
    // exemplar attribute FF_14 GSR ENABLED
    // exemplar attribute FF_13 GSR ENABLED
    // exemplar attribute FF_12 GSR ENABLED
    // exemplar attribute FF_11 GSR ENABLED
    // exemplar attribute FF_10 GSR ENABLED
    // exemplar attribute FF_9 GSR ENABLED
    // exemplar attribute FF_8 GSR ENABLED
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
