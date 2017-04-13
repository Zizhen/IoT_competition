// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Mon Apr 10 03:00:25 2017
//
// Verilog Description of module top
//

module top (rst_n, mclk, i_sd, o_sck, o_ws, horizontal_out, vertical_out, 
            mclk2, i_sd2, o_sck2, o_ws2, SDA, SCL, glass, shout, 
            beam_forming_valid) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(1[8:11])
    input rst_n;   // c:/users/sec29/desktop/i2s_iot/top.v(22[29:34])
    output mclk;   // c:/users/sec29/desktop/i2s_iot/top.v(31[29:33])
    input i_sd;   // c:/users/sec29/desktop/i2s_iot/top.v(27[32:36])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/top.v(23[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    output [15:0]horizontal_out;   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    output [15:0]vertical_out;   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    output mclk2;   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:34])
    input i_sd2;   // c:/users/sec29/desktop/i2s_iot/top.v(28[29:34])
    output o_sck2;   // c:/users/sec29/desktop/i2s_iot/top.v(24[17:23])
    output o_ws2;   // c:/users/sec29/desktop/i2s_iot/top.v(25[29:34])
    output SDA /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(34[32:35])
    output SCL /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(34[36:39])
    output glass;   // c:/users/sec29/desktop/i2s_iot/top.v(36[12:17])
    output shout;   // c:/users/sec29/desktop/i2s_iot/top.v(36[18:23])
    output beam_forming_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(36[24:42])
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(23[32:37])
    wire o_sck2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(24[17:23])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(31[29:33])
    wire mclk2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:34])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(77[30:37])
    wire o_sck_N_112 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_sck_N_112_adj_1465 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire GND_net, VCC_net, rst_n_c, o_ws2_c, i_sd_c;
    wire [15:0]subMean_left_out;   // c:/users/sec29/desktop/i2s_iot/top.v(39[14:30])
    
    wire horizontal_out_c_15, horizontal_out_c_14, horizontal_out_c_13, 
        horizontal_out_c_12, horizontal_out_c_11, horizontal_out_c_10, 
        horizontal_out_c_9, horizontal_out_c_8, horizontal_out_c_7, horizontal_out_c_6, 
        horizontal_out_c_5, horizontal_out_c_4, horizontal_out_c_3, horizontal_out_c_2, 
        horizontal_out_c_1, horizontal_out_c_0;
    wire [5:0]zcr_count_left;   // c:/users/sec29/desktop/i2s_iot/top.v(41[29:43])
    
    wire zcr_valid_left;
    wire [31:0]fifo_in1;   // c:/users/sec29/desktop/i2s_iot/top.v(44[14:22])
    
    wire wr_en;
    wire [31:0]o_right_data;   // c:/users/sec29/desktop/i2s_iot/top.v(47[15:27])
    
    wire rst_n_N_100, shout_c, i_sys_rst, lock, lock2, subMean_left_valid, 
        n77;
    wire [5:0]zcr_count_temp;   // c:/users/sec29/desktop/i2s_iot/zcr.v(18[11:25])
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    
    wire o_ws_c_enable_45;
    wire [6:0]window_count_adj_1482;   // c:/users/sec29/desktop/i2s_iot/ste.v(18[11:23])
    
    wire n2915, n2914, n2913, n2912, n2911, n980, o_ws_c_enable_38, 
        n2910, n2909, n2908, n2907, n2906, n2573, n2905, n2904, 
        n20, n2903, Rst_L_N_940, n2902, n53, n2901, n3436, n1920;
    
    VHI i2 (.Z(VCC_net));
    fifo_horizontal horizontal_port (.\fifo_in1[30] (fifo_in1[30]), .\fifo_in1[29] (fifo_in1[29]), 
            .\fifo_in1[28] (fifo_in1[28]), .\fifo_in1[27] (fifo_in1[27]), 
            .\fifo_in1[26] (fifo_in1[26]), .\fifo_in1[25] (fifo_in1[25]), 
            .\fifo_in1[24] (fifo_in1[24]), .\fifo_in1[23] (fifo_in1[23]), 
            .\fifo_in1[22] (fifo_in1[22]), .\fifo_in1[21] (fifo_in1[21]), 
            .\fifo_in1[20] (fifo_in1[20]), .\fifo_in1[19] (fifo_in1[19]), 
            .\fifo_in1[18] (fifo_in1[18]), .\fifo_in1[17] (fifo_in1[17]), 
            .\fifo_in1[16] (fifo_in1[16]), .\fifo_in1[15] (fifo_in1[15]), 
            .o_sck_c(o_sck_c), .o_ws_c(o_ws_c), .wr_en(wr_en), .VCC_net(VCC_net), 
            .i_sys_rst(i_sys_rst), .GND_net(GND_net), .horizontal_out_c_15(horizontal_out_c_15), 
            .horizontal_out_c_14(horizontal_out_c_14), .horizontal_out_c_13(horizontal_out_c_13), 
            .horizontal_out_c_12(horizontal_out_c_12), .horizontal_out_c_11(horizontal_out_c_11), 
            .horizontal_out_c_10(horizontal_out_c_10), .horizontal_out_c_9(horizontal_out_c_9), 
            .horizontal_out_c_8(horizontal_out_c_8), .horizontal_out_c_7(horizontal_out_c_7), 
            .horizontal_out_c_6(horizontal_out_c_6), .horizontal_out_c_5(horizontal_out_c_5), 
            .horizontal_out_c_4(horizontal_out_c_4), .horizontal_out_c_3(horizontal_out_c_3), 
            .horizontal_out_c_2(horizontal_out_c_2), .horizontal_out_c_1(horizontal_out_c_1), 
            .horizontal_out_c_0(horizontal_out_c_0)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(121[17] 123[31])
    pll1 my_pll1 (.osc_clk(osc_clk), .rst_n_N_100(rst_n_N_100), .mclk_c(mclk_c), 
         .lock(lock), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(80[10] 87[3])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // c:/users/sec29/desktop/i2s_iot/top.v(27[32:36])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/sec29/desktop/i2s_iot/top.v(22[29:34])
    OB beam_forming_valid_pad (.I(GND_net), .O(beam_forming_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(36[24:42])
    OB shout_pad (.I(shout_c), .O(shout));   // c:/users/sec29/desktop/i2s_iot/top.v(36[18:23])
    OB glass_pad (.I(shout_c), .O(glass));   // c:/users/sec29/desktop/i2s_iot/top.v(36[12:17])
    OBZ SCL_pad (.I(GND_net), .T(VCC_net), .O(SCL));   // c:/users/sec29/desktop/i2s_iot/i2c_top.v(174[8:11])
    OBZ SDA_pad (.I(GND_net), .T(VCC_net), .O(SDA));   // c:/users/sec29/desktop/i2s_iot/i2c_top.v(176[8:11])
    OB o_ws2_pad (.I(o_ws2_c), .O(o_ws2));   // c:/users/sec29/desktop/i2s_iot/top.v(25[29:34])
    OB o_sck2_pad (.I(o_sck2_c), .O(o_sck2));   // c:/users/sec29/desktop/i2s_iot/top.v(24[17:23])
    OB mclk2_pad (.I(mclk2_c), .O(mclk2));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:34])
    OB vertical_out_pad_0 (.I(GND_net), .O(vertical_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_1 (.I(GND_net), .O(vertical_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_2 (.I(GND_net), .O(vertical_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_3 (.I(GND_net), .O(vertical_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_4 (.I(GND_net), .O(vertical_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    clk_div div8 (.o_sck_c(o_sck_c), .mclk_c(mclk_c), .i_sys_rst(i_sys_rst), 
            .o_sck_N_112(o_sck_N_112)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(89[10:62])
    OB vertical_out_pad_8 (.I(GND_net), .O(vertical_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_9 (.I(GND_net), .O(vertical_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_10 (.I(GND_net), .O(vertical_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_11 (.I(GND_net), .O(vertical_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_12 (.I(GND_net), .O(vertical_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_13 (.I(GND_net), .O(vertical_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_14 (.I(GND_net), .O(vertical_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_15 (.I(GND_net), .O(vertical_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB horizontal_out_pad_0 (.I(horizontal_out_c_0), .O(horizontal_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_1 (.I(horizontal_out_c_1), .O(horizontal_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_2 (.I(horizontal_out_c_2), .O(horizontal_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_3 (.I(horizontal_out_c_3), .O(horizontal_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_4 (.I(horizontal_out_c_4), .O(horizontal_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_5 (.I(horizontal_out_c_5), .O(horizontal_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_6 (.I(horizontal_out_c_6), .O(horizontal_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_7 (.I(horizontal_out_c_7), .O(horizontal_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_8 (.I(horizontal_out_c_8), .O(horizontal_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_9 (.I(horizontal_out_c_9), .O(horizontal_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_10 (.I(horizontal_out_c_10), .O(horizontal_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB horizontal_out_pad_11 (.I(horizontal_out_c_11), .O(horizontal_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB vertical_out_pad_5 (.I(GND_net), .O(vertical_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB horizontal_out_pad_14 (.I(horizontal_out_c_14), .O(horizontal_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB vertical_out_pad_6 (.I(GND_net), .O(vertical_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    OB vertical_out_pad_7 (.I(GND_net), .O(vertical_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:41])
    pll2 my_pll2 (.o_sck_N_112(o_sck_N_112_adj_1465), .o_sck2_c(o_sck2_c), 
         .osc_clk(osc_clk), .rst_n_N_100(rst_n_N_100), .mclk2_c(mclk2_c), 
         .lock2(lock2), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(92[7] 97[16])
    I2S_Controller port2 (.o_sck_N_112(o_sck_N_112_adj_1465), .i_sys_rst(i_sys_rst), 
            .o_ws2_c(o_ws2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(99[18] 108[25])
    OB horizontal_out_pad_12 (.I(horizontal_out_c_12), .O(horizontal_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    VLO i1 (.Z(GND_net));
    LUT4 i3_4_lut (.A(Rst_L_N_940), .B(window_count[0]), .C(n1920), .D(window_count[3]), 
         .Z(o_ws_c_enable_38)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2213_2_lut (.A(Rst_L_N_940), .B(window_count_adj_1482[3]), .Z(n980)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2213_2_lut.init = 16'h2222;
    CCU2D add_139_31 (.A0(o_right_data[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2915), .S0(fifo_in1[30]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_31.INIT0 = 16'ha555;
    defparam add_139_31.INIT1 = 16'h0000;
    defparam add_139_31.INJECT1_0 = "NO";
    defparam add_139_31.INJECT1_1 = "NO";
    CCU2D add_139_29 (.A0(o_right_data[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2914), .COUT(n2915), .S0(fifo_in1[28]), 
          .S1(fifo_in1[29]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_29.INIT0 = 16'ha555;
    defparam add_139_29.INIT1 = 16'ha555;
    defparam add_139_29.INJECT1_0 = "NO";
    defparam add_139_29.INJECT1_1 = "NO";
    CCU2D add_139_27 (.A0(o_right_data[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2913), .COUT(n2914), .S0(fifo_in1[26]), 
          .S1(fifo_in1[27]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_27.INIT0 = 16'ha555;
    defparam add_139_27.INIT1 = 16'ha555;
    defparam add_139_27.INJECT1_0 = "NO";
    defparam add_139_27.INJECT1_1 = "NO";
    CCU2D add_139_25 (.A0(o_right_data[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2912), .COUT(n2913), .S0(fifo_in1[24]), 
          .S1(fifo_in1[25]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_25.INIT0 = 16'ha555;
    defparam add_139_25.INIT1 = 16'ha555;
    defparam add_139_25.INJECT1_0 = "NO";
    defparam add_139_25.INJECT1_1 = "NO";
    CCU2D add_139_23 (.A0(o_right_data[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2911), .COUT(n2912), .S0(fifo_in1[22]), 
          .S1(fifo_in1[23]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_23.INIT0 = 16'ha555;
    defparam add_139_23.INIT1 = 16'ha555;
    defparam add_139_23.INJECT1_0 = "NO";
    defparam add_139_23.INJECT1_1 = "NO";
    CCU2D add_139_21 (.A0(o_right_data[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2910), .COUT(n2911), .S0(fifo_in1[20]), 
          .S1(fifo_in1[21]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_21.INIT0 = 16'ha555;
    defparam add_139_21.INIT1 = 16'ha555;
    defparam add_139_21.INJECT1_0 = "NO";
    defparam add_139_21.INJECT1_1 = "NO";
    CCU2D add_139_19 (.A0(o_right_data[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2909), .COUT(n2910), .S0(fifo_in1[18]), 
          .S1(fifo_in1[19]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_19.INIT0 = 16'ha555;
    defparam add_139_19.INIT1 = 16'ha555;
    defparam add_139_19.INJECT1_0 = "NO";
    defparam add_139_19.INJECT1_1 = "NO";
    CCU2D add_139_17 (.A0(o_right_data[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2908), .COUT(n2909), .S0(fifo_in1[16]), 
          .S1(fifo_in1[17]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_17.INIT0 = 16'ha555;
    defparam add_139_17.INIT1 = 16'ha555;
    defparam add_139_17.INJECT1_0 = "NO";
    defparam add_139_17.INJECT1_1 = "NO";
    LUT4 i1398_1_lut (.A(Rst_L_N_940), .Z(i_sys_rst)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1398_1_lut.init = 16'h5555;
    CCU2D add_139_15 (.A0(o_right_data[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2907), .COUT(n2908), .S1(fifo_in1[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_15.INIT0 = 16'ha555;
    defparam add_139_15.INIT1 = 16'ha555;
    defparam add_139_15.INJECT1_0 = "NO";
    defparam add_139_15.INJECT1_1 = "NO";
    CCU2D add_139_13 (.A0(o_right_data[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2906), .COUT(n2907));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_13.INIT0 = 16'ha555;
    defparam add_139_13.INIT1 = 16'ha555;
    defparam add_139_13.INJECT1_0 = "NO";
    defparam add_139_13.INJECT1_1 = "NO";
    CCU2D add_139_11 (.A0(o_right_data[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2905), .COUT(n2906));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_11.INIT0 = 16'ha555;
    defparam add_139_11.INIT1 = 16'ha555;
    defparam add_139_11.INJECT1_0 = "NO";
    defparam add_139_11.INJECT1_1 = "NO";
    CCU2D add_139_9 (.A0(o_right_data[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2904), .COUT(n2905));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_9.INIT0 = 16'ha555;
    defparam add_139_9.INIT1 = 16'ha555;
    defparam add_139_9.INJECT1_0 = "NO";
    defparam add_139_9.INJECT1_1 = "NO";
    CCU2D add_139_7 (.A0(o_right_data[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2903), .COUT(n2904));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_7.INIT0 = 16'ha555;
    defparam add_139_7.INIT1 = 16'ha555;
    defparam add_139_7.INJECT1_0 = "NO";
    defparam add_139_7.INJECT1_1 = "NO";
    CCU2D add_139_5 (.A0(o_right_data[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2902), .COUT(n2903));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_5.INIT0 = 16'ha555;
    defparam add_139_5.INIT1 = 16'ha555;
    defparam add_139_5.INJECT1_0 = "NO";
    defparam add_139_5.INJECT1_1 = "NO";
    CCU2D add_139_3 (.A0(o_right_data[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2901), .COUT(n2902));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_3.INIT0 = 16'ha555;
    defparam add_139_3.INIT1 = 16'ha555;
    defparam add_139_3.INJECT1_0 = "NO";
    defparam add_139_3.INJECT1_1 = "NO";
    CCU2D add_139_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_right_data[1]), .B1(o_right_data[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2901));   // c:/users/sec29/desktop/i2s_iot/top.v(111[29:46])
    defparam add_139_1.INIT0 = 16'hF000;
    defparam add_139_1.INIT1 = 16'ha666;
    defparam add_139_1.INJECT1_0 = "NO";
    defparam add_139_1.INJECT1_1 = "NO";
    ste ste1 (.\subMean_left_out[12] (subMean_left_out[12]), .\zcr_count_left[5] (zcr_count_left[5]), 
        .shout_c(shout_c), .\subMean_left_out[13] (subMean_left_out[13]), 
        .\window_count[3] (window_count_adj_1482[3]), .subMean_left_valid(subMean_left_valid), 
        .zcr_valid_left(zcr_valid_left), .\subMean_left_out[15] (subMean_left_out[15]), 
        .\subMean_left_out[14] (subMean_left_out[14]), .n77(n77), .\zcr_count_left[2] (zcr_count_left[2]), 
        .\zcr_count_left[3] (zcr_count_left[3]), .\zcr_count_left[4] (zcr_count_left[4]), 
        .o_ws_c(o_ws_c), .i_sys_rst(i_sys_rst), .Rst_L_N_940(Rst_L_N_940), 
        .GND_net(GND_net), .n980(n980), .VCC_net(VCC_net), .horizontal_out_c_14(horizontal_out_c_14), 
        .horizontal_out_c_13(horizontal_out_c_13), .horizontal_out_c_12(horizontal_out_c_12), 
        .horizontal_out_c_11(horizontal_out_c_11), .horizontal_out_c_10(horizontal_out_c_10), 
        .horizontal_out_c_9(horizontal_out_c_9), .horizontal_out_c_8(horizontal_out_c_8)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(144[5] 150[2])
    OB horizontal_out_pad_13 (.I(horizontal_out_c_13), .O(horizontal_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    LUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_100)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(54[16:24])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 i1727_3_lut (.A(zcr_count_temp[0]), .B(window_count[3]), .C(n53), 
         .Z(n2573)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam i1727_3_lut.init = 16'ha8a8;
    OB horizontal_out_pad_15 (.I(horizontal_out_c_15), .O(horizontal_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(29[48:62])
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    OB o_sck_pad (.I(o_sck_c), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/top.v(23[32:37])
    OB mclk_pad (.I(mclk_c), .O(mclk));   // c:/users/sec29/desktop/i2s_iot/top.v(31[29:33])
    LUT4 i1_3_lut (.A(rst_n_c), .B(lock2), .C(lock), .Z(Rst_L_N_940)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut (.A(Rst_L_N_940), .B(window_count[3]), .Z(o_ws_c_enable_45)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(53[19:41])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 m1_lut (.Z(n3436)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    submean2 subMean1 (.horizontal_out_c_4(horizontal_out_c_4), .GND_net(GND_net), 
            .horizontal_out_c_5(horizontal_out_c_5), .horizontal_out_c_2(horizontal_out_c_2), 
            .horizontal_out_c_3(horizontal_out_c_3), .horizontal_out_c_0(horizontal_out_c_0), 
            .horizontal_out_c_1(horizontal_out_c_1), .horizontal_out_c_11(horizontal_out_c_11), 
            .horizontal_out_c_12(horizontal_out_c_12), .o_ws_c(o_ws_c), 
            .subMean_left_valid(subMean_left_valid), .i_sys_rst(i_sys_rst), 
            .horizontal_out_c_9(horizontal_out_c_9), .horizontal_out_c_10(horizontal_out_c_10), 
            .n20(n20), .horizontal_out_c_7(horizontal_out_c_7), .horizontal_out_c_8(horizontal_out_c_8), 
            .horizontal_out_c_14(horizontal_out_c_14), .horizontal_out_c_13(horizontal_out_c_13), 
            .horizontal_out_c_6(horizontal_out_c_6), .\subMean_left_out[15] (subMean_left_out[15]), 
            .\subMean_left_out[14] (subMean_left_out[14]), .\subMean_left_out[13] (subMean_left_out[13]), 
            .\subMean_left_out[12] (subMean_left_out[12]), .\subMean_left_out[11] (subMean_left_out[11]), 
            .\subMean_left_out[10] (subMean_left_out[10]), .\subMean_left_out[9] (subMean_left_out[9]), 
            .\subMean_left_out[8] (subMean_left_out[8]), .\subMean_left_out[7] (subMean_left_out[7]), 
            .\subMean_left_out[6] (subMean_left_out[6]), .n3436(n3436), 
            .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(152[10] 158[2])
    I2S_Controller_U0 port1 (.o_ws_c(o_ws_c), .o_sck_N_112(o_sck_N_112), 
            .i_sys_rst(i_sys_rst), .\o_right_data[1] (o_right_data[1]), 
            .\o_right_data[30] (o_right_data[30]), .\o_right_data[29] (o_right_data[29]), 
            .\o_right_data[28] (o_right_data[28]), .\o_right_data[27] (o_right_data[27]), 
            .\o_right_data[26] (o_right_data[26]), .\o_right_data[25] (o_right_data[25]), 
            .\o_right_data[24] (o_right_data[24]), .\o_right_data[23] (o_right_data[23]), 
            .\o_right_data[22] (o_right_data[22]), .\o_right_data[21] (o_right_data[21]), 
            .\o_right_data[20] (o_right_data[20]), .\o_right_data[19] (o_right_data[19]), 
            .\o_right_data[18] (o_right_data[18]), .\o_right_data[17] (o_right_data[17]), 
            .\o_right_data[16] (o_right_data[16]), .\o_right_data[15] (o_right_data[15]), 
            .\o_right_data[0] (o_right_data[0]), .wr_en(wr_en), .\o_right_data[14] (o_right_data[14]), 
            .\o_right_data[13] (o_right_data[13]), .\o_right_data[12] (o_right_data[12]), 
            .\o_right_data[11] (o_right_data[11]), .\o_right_data[10] (o_right_data[10]), 
            .\o_right_data[9] (o_right_data[9]), .\o_right_data[8] (o_right_data[8]), 
            .GND_net(GND_net), .\o_right_data[7] (o_right_data[7]), .\o_right_data[6] (o_right_data[6]), 
            .\o_right_data[5] (o_right_data[5]), .\o_right_data[4] (o_right_data[4]), 
            .\o_right_data[3] (o_right_data[3]), .\o_right_data[2] (o_right_data[2]), 
            .VCC_net(VCC_net), .i_sd_c(i_sd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(63[18] 73[26])
    zcr zcr1 (.\zcr_count_left[2] (zcr_count_left[2]), .o_ws_c(o_ws_c), 
        .o_ws_c_enable_45(o_ws_c_enable_45), .\window_count[3] (window_count[3]), 
        .\window_count[0] (window_count[0]), .i_sys_rst(i_sys_rst), .\zcr_count_left[3] (zcr_count_left[3]), 
        .\subMean_left_out[8] (subMean_left_out[8]), .\subMean_left_out[11] (subMean_left_out[11]), 
        .\subMean_left_out[9] (subMean_left_out[9]), .n77(n77), .\zcr_count_left[5] (zcr_count_left[5]), 
        .\subMean_left_out[10] (subMean_left_out[10]), .\subMean_left_out[6] (subMean_left_out[6]), 
        .\subMean_left_out[7] (subMean_left_out[7]), .n20(n20), .horizontal_out_c_15(horizontal_out_c_15), 
        .n1920(n1920), .zcr_valid_left(zcr_valid_left), .Rst_L_N_940(Rst_L_N_940), 
        .GND_net(GND_net), .o_ws_c_enable_38(o_ws_c_enable_38), .n2573(n2573), 
        .n53(n53), .\zcr_count_left[4] (zcr_count_left[4]), .\zcr_count_temp[0] (zcr_count_temp[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(136[5] 142[2])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module fifo_horizontal
//

module fifo_horizontal (\fifo_in1[30] , \fifo_in1[29] , \fifo_in1[28] , 
            \fifo_in1[27] , \fifo_in1[26] , \fifo_in1[25] , \fifo_in1[24] , 
            \fifo_in1[23] , \fifo_in1[22] , \fifo_in1[21] , \fifo_in1[20] , 
            \fifo_in1[19] , \fifo_in1[18] , \fifo_in1[17] , \fifo_in1[16] , 
            \fifo_in1[15] , o_sck_c, o_ws_c, wr_en, VCC_net, i_sys_rst, 
            GND_net, horizontal_out_c_15, horizontal_out_c_14, horizontal_out_c_13, 
            horizontal_out_c_12, horizontal_out_c_11, horizontal_out_c_10, 
            horizontal_out_c_9, horizontal_out_c_8, horizontal_out_c_7, 
            horizontal_out_c_6, horizontal_out_c_5, horizontal_out_c_4, 
            horizontal_out_c_3, horizontal_out_c_2, horizontal_out_c_1, 
            horizontal_out_c_0) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input \fifo_in1[30] ;
    input \fifo_in1[29] ;
    input \fifo_in1[28] ;
    input \fifo_in1[27] ;
    input \fifo_in1[26] ;
    input \fifo_in1[25] ;
    input \fifo_in1[24] ;
    input \fifo_in1[23] ;
    input \fifo_in1[22] ;
    input \fifo_in1[21] ;
    input \fifo_in1[20] ;
    input \fifo_in1[19] ;
    input \fifo_in1[18] ;
    input \fifo_in1[17] ;
    input \fifo_in1[16] ;
    input \fifo_in1[15] ;
    input o_sck_c;
    input o_ws_c;
    input wr_en;
    input VCC_net;
    input i_sys_rst;
    input GND_net;
    output horizontal_out_c_15;
    output horizontal_out_c_14;
    output horizontal_out_c_13;
    output horizontal_out_c_12;
    output horizontal_out_c_11;
    output horizontal_out_c_10;
    output horizontal_out_c_9;
    output horizontal_out_c_8;
    output horizontal_out_c_7;
    output horizontal_out_c_6;
    output horizontal_out_c_5;
    output horizontal_out_c_4;
    output horizontal_out_c_3;
    output horizontal_out_c_2;
    output horizontal_out_c_1;
    output horizontal_out_c_0;
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(23[32:37])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire Empty, Full;
    
    FIFO8KB fifo_horizontal_0_0 (.DI0(\fifo_in1[15] ), .DI1(\fifo_in1[16] ), 
            .DI2(\fifo_in1[17] ), .DI3(\fifo_in1[18] ), .DI4(\fifo_in1[19] ), 
            .DI5(\fifo_in1[20] ), .DI6(\fifo_in1[21] ), .DI7(\fifo_in1[22] ), 
            .DI8(\fifo_in1[23] ), .DI9(\fifo_in1[24] ), .DI10(\fifo_in1[25] ), 
            .DI11(\fifo_in1[26] ), .DI12(\fifo_in1[27] ), .DI13(\fifo_in1[28] ), 
            .DI14(\fifo_in1[29] ), .DI15(\fifo_in1[30] ), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(wr_en), 
            .RE(VCC_net), .ORE(VCC_net), .CLKW(o_sck_c), .CLKR(o_ws_c), 
            .RST(i_sys_rst), .RPRST(GND_net), .DO0(horizontal_out_c_9), 
            .DO1(horizontal_out_c_10), .DO2(horizontal_out_c_11), .DO3(horizontal_out_c_12), 
            .DO4(horizontal_out_c_13), .DO5(horizontal_out_c_14), .DO6(horizontal_out_c_15), 
            .DO9(horizontal_out_c_0), .DO10(horizontal_out_c_1), .DO11(horizontal_out_c_2), 
            .DO12(horizontal_out_c_3), .DO13(horizontal_out_c_4), .DO14(horizontal_out_c_5), 
            .DO15(horizontal_out_c_6), .DO16(horizontal_out_c_7), .DO17(horizontal_out_c_8), 
            .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=17, LSE_RCOL=31, LSE_LLINE=121, LSE_RLINE=123 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(121[17] 123[31])
    defparam fifo_horizontal_0_0.DATA_WIDTH_W = 18;
    defparam fifo_horizontal_0_0.DATA_WIDTH_R = 18;
    defparam fifo_horizontal_0_0.REGMODE = "NOREG";
    defparam fifo_horizontal_0_0.RESETMODE = "ASYNC";
    defparam fifo_horizontal_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam fifo_horizontal_0_0.CSDECODE_W = "0b11";
    defparam fifo_horizontal_0_0.CSDECODE_R = "0b11";
    defparam fifo_horizontal_0_0.AEPOINTER = "0b00000001000000";
    defparam fifo_horizontal_0_0.AEPOINTER1 = "0b00000001010000";
    defparam fifo_horizontal_0_0.AFPOINTER = "0b00000011110000";
    defparam fifo_horizontal_0_0.AFPOINTER1 = "0b00000011100000";
    defparam fifo_horizontal_0_0.FULLPOINTER = "0b00000100000000";
    defparam fifo_horizontal_0_0.FULLPOINTER1 = "0b00000011110000";
    defparam fifo_horizontal_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module pll1
//

module pll1 (osc_clk, rst_n_N_100, mclk_c, lock, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input rst_n_N_100;
    output mclk_c;
    output lock;
    input GND_net;
    
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(77[30:37])
    wire fpga_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(43[10:18])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(31[29:33])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(fpga_clk), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_n_N_100), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(fpga_clk), .CLKOS(mclk_c), .LOCK(lock)) /* synthesis FREQUENCY_PIN_CLKOS2="416.000000", FREQUENCY_PIN_CLKOS="4.000000", FREQUENCY_PIN_CLKOP="32.000000", FREQUENCY_PIN_CLKI="16.000000", ICP_CURRENT="6", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=80, LSE_RLINE=87 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(80[10] 87[3])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 13;
    defparam PLLInst_0.CLKOS_DIV = 104;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 12;
    defparam PLLInst_0.CLKOS_CPHASE = 103;
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
//
// Verilog Description of module clk_div
//

module clk_div (o_sck_c, mclk_c, i_sys_rst, o_sck_N_112) /* synthesis syn_module_defined=1 */ ;
    output o_sck_c;
    input mclk_c;
    input i_sys_rst;
    output o_sck_N_112;
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(23[32:37])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(31[29:33])
    wire o_sck_N_112 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire clk_out_N_330;
    wire [2:0]r_reg;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(12[17:22])
    wire [1:0]n17;
    
    wire n3059;
    
    FD1S3DX clk_track_12 (.D(clk_out_N_330), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(o_sck_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=62, LSE_LLINE=89, LSE_RLINE=89 */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(25[8] 32[22])
    defparam clk_track_12.GSR = "ENABLED";
    INV i2315 (.A(o_sck_c), .Z(o_sck_N_112));
    FD1S3DX r_reg_189_190__i1 (.D(n17[0]), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(r_reg[0]));   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam r_reg_189_190__i1.GSR = "ENABLED";
    LUT4 i15_2_lut (.A(r_reg[0]), .B(r_reg[1]), .Z(n3059)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1965_1_lut (.A(r_reg[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam i1965_1_lut.init = 16'h5555;
    FD1S3DX r_reg_189_190__i2 (.D(n3059), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(r_reg[1]));   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam r_reg_189_190__i2.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(o_sck_c), .B(r_reg[0]), .C(r_reg[1]), .Z(clk_out_N_330)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    
endmodule
//
// Verilog Description of module pll2
//

module pll2 (o_sck_N_112, o_sck2_c, osc_clk, rst_n_N_100, mclk2_c, 
            lock2, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output o_sck_N_112;
    output o_sck2_c;
    input osc_clk;
    input rst_n_N_100;
    output mclk2_c;
    output lock2;
    input GND_net;
    
    wire o_sck_N_112 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_sck2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(24[17:23])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(77[30:37])
    wire mclk2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:34])
    
    INV i2316 (.A(o_sck2_c), .Z(o_sck_N_112));
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(mclk2_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_n_N_100), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(mclk2_c), .CLKOS(o_sck2_c), .LOCK(lock2)) /* synthesis FREQUENCY_PIN_CLKOS="5.543333", FREQUENCY_PIN_CLKOP="33.260000", FREQUENCY_PIN_CLKI="16.630000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=16, LSE_LLINE=92, LSE_RLINE=97 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(92[7] 97[16])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 16;
    defparam PLLInst_0.CLKOS_DIV = 96;
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
    defparam PLLInst_0.CLKOP_CPHASE = 15;
    defparam PLLInst_0.CLKOS_CPHASE = 95;
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
//
// Verilog Description of module I2S_Controller
//

module I2S_Controller (o_sck_N_112, i_sys_rst, o_ws2_c) /* synthesis syn_module_defined=1 */ ;
    input o_sck_N_112;
    input i_sys_rst;
    output o_ws2_c;
    
    wire o_sck_N_112 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire n3333, o_ws_N_119, n3320, n3108, n3063;
    wire [4:0]n32;
    
    wire n3331, n3332, n3073, n2956;
    
    FD1S3DX count_192__i4 (.D(n3333), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_192__i4.GSR = "ENABLED";
    FD1S3DX o_ws_13 (.D(o_ws_N_119), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(o_ws2_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=18, LSE_RCOL=25, LSE_LLINE=99, LSE_RLINE=108 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(56[3] 64[7])
    defparam o_ws_13.GSR = "ENABLED";
    FD1S3DX count_192__i3 (.D(n3320), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_192__i3.GSR = "ENABLED";
    FD1S3DX count_192__i2 (.D(n3108), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_192__i2.GSR = "ENABLED";
    FD1S3DX count_192__i1 (.D(n3063), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_192__i1.GSR = "ENABLED";
    FD1S3DX count_192__i0 (.D(n32[0]), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_192__i0.GSR = "ENABLED";
    PFUMX i2269 (.BLUT(n3331), .ALUT(n3332), .C0(count[3]), .Z(n3333));
    LUT4 i1914_4_lut_4_lut_then_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[4]), .Z(n3332)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1914_4_lut_4_lut_then_4_lut.init = 16'h7f80;
    LUT4 i1914_4_lut_4_lut_else_4_lut (.A(count[4]), .Z(n3331)) /* synthesis lut_function=(A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1914_4_lut_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i3_4_lut (.A(count[2]), .B(count[4]), .C(count[3]), .D(n3073), 
         .Z(n2956)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i2149_3_lut_4_lut (.A(n2956), .B(count[2]), .C(count[0]), .D(count[1]), 
         .Z(n3108)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i2149_3_lut_4_lut.init = 16'h1444;
    LUT4 i1_2_lut (.A(o_ws2_c), .B(n2956), .Z(o_ws_N_119)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 count_2__bdd_3_lut_4_lut (.A(count[2]), .B(count[3]), .C(count[0]), 
         .D(count[1]), .Z(n3320)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B))) */ ;
    defparam count_2__bdd_3_lut_4_lut.init = 16'h6ccc;
    LUT4 i1_2_lut_adj_99 (.A(count[0]), .B(count[1]), .Z(n3073)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_99.init = 16'h8888;
    LUT4 i15_2_lut (.A(count[0]), .B(count[1]), .Z(n3063)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1889_1_lut (.A(count[0]), .Z(n32[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1889_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ste
//

module ste (\subMean_left_out[12] , \zcr_count_left[5] , shout_c, \subMean_left_out[13] , 
            \window_count[3] , subMean_left_valid, zcr_valid_left, \subMean_left_out[15] , 
            \subMean_left_out[14] , n77, \zcr_count_left[2] , \zcr_count_left[3] , 
            \zcr_count_left[4] , o_ws_c, i_sys_rst, Rst_L_N_940, GND_net, 
            n980, VCC_net, horizontal_out_c_14, horizontal_out_c_13, 
            horizontal_out_c_12, horizontal_out_c_11, horizontal_out_c_10, 
            horizontal_out_c_9, horizontal_out_c_8) /* synthesis syn_module_defined=1 */ ;
    input \subMean_left_out[12] ;
    input \zcr_count_left[5] ;
    output shout_c;
    input \subMean_left_out[13] ;
    output \window_count[3] ;
    input subMean_left_valid;
    input zcr_valid_left;
    input \subMean_left_out[15] ;
    input \subMean_left_out[14] ;
    input n77;
    input \zcr_count_left[2] ;
    input \zcr_count_left[3] ;
    input \zcr_count_left[4] ;
    input o_ws_c;
    input i_sys_rst;
    input Rst_L_N_940;
    input GND_net;
    input n980;
    input VCC_net;
    input horizontal_out_c_14;
    input horizontal_out_c_13;
    input horizontal_out_c_12;
    input horizontal_out_c_11;
    input horizontal_out_c_10;
    input horizontal_out_c_9;
    input horizontal_out_c_8;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire n12, ste_left_valid, n31, n36, n32, n3097;
    wire [30:0]ste_left;   // c:/users/sec29/desktop/i2s_iot/top.v(51[15:23])
    
    wire n10, n2868, n4;
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/ste.v(18[11:23])
    wire [30:0]sum;   // c:/users/sec29/desktop/i2s_iot/ste.v(21[12:15])
    
    wire n1787, n1785, n3111, n3115, n2867, n1791, n1789, n2866, 
        n1795, n1793, n2865, n1799, n1797, n2955, n34, n28, 
        n2864, n1803, n1801, n4_adj_1461, n2653, n2665, n2681, 
        n2863, n1807, n1805, n2365, n2862, n1811, n1809, n2861, 
        n1815, n1813, o_ws_c_enable_39, n1843, n1841, n1839, n1837, 
        n1835, n1833, n1831, n1829, n1827, n1825, n1823, n1821, 
        n1819, n1817, n2860, n2629;
    wire [14:0]square;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[13:19])
    
    wire n2625, n2859, n2637, n2633, n2858, n2645, n2641, n2857, 
        n2649, n2856, n2661, n2657, n2855, n2669, n2854, n2677, 
        n2673;
    wire [3:0]n27;
    
    wire n2900, n2899, n1782, n30_adj_1464;
    
    LUT4 i6_4_lut (.A(\subMean_left_out[12] ), .B(n12), .C(\zcr_count_left[5] ), 
         .D(ste_left_valid), .Z(shout_c)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i6_4_lut.init = 16'h0400;
    LUT4 i2141_4_lut (.A(\subMean_left_out[13] ), .B(n31), .C(n36), .D(n32), 
         .Z(n3097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2141_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(ste_left[7]), .B(ste_left[10]), .C(ste_left[11]), 
         .D(ste_left[8]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(51[15:23])
    defparam i4_4_lut.init = 16'h8000;
    CCU2D add_29_31 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[29]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[30]), .CIN(n2868), .S0(n1787), .S1(n1785));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_31.INIT0 = 16'hfe00;
    defparam add_29_31.INIT1 = 16'hfe00;
    defparam add_29_31.INJECT1_0 = "NO";
    defparam add_29_31.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(subMean_left_valid), .B(n3111), .C(zcr_valid_left), 
         .D(n3115), .Z(n12)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0020;
    CCU2D add_29_29 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[27]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[28]), .CIN(n2867), .COUT(n2868), .S0(n1791), .S1(n1789));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_29.INIT0 = 16'hfe00;
    defparam add_29_29.INIT1 = 16'hfe00;
    defparam add_29_29.INJECT1_0 = "NO";
    defparam add_29_29.INJECT1_1 = "NO";
    CCU2D add_29_27 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[25]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[26]), .CIN(n2866), .COUT(n2867), .S0(n1795), .S1(n1793));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_27.INIT0 = 16'hfe00;
    defparam add_29_27.INIT1 = 16'hfe00;
    defparam add_29_27.INJECT1_0 = "NO";
    defparam add_29_27.INJECT1_1 = "NO";
    CCU2D add_29_25 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[23]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[24]), .CIN(n2865), .COUT(n2866), .S0(n1799), .S1(n1797));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_25.INIT0 = 16'hfe00;
    defparam add_29_25.INIT1 = 16'hfe00;
    defparam add_29_25.INJECT1_0 = "NO";
    defparam add_29_25.INJECT1_1 = "NO";
    LUT4 i2151_4_lut (.A(\subMean_left_out[15] ), .B(\subMean_left_out[14] ), 
         .C(n77), .D(\zcr_count_left[2] ), .Z(n3111)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2151_4_lut.init = 16'hfffe;
    LUT4 i2155_4_lut (.A(\zcr_count_left[3] ), .B(n2955), .C(\zcr_count_left[4] ), 
         .D(n3097), .Z(n3115)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2155_4_lut.init = 16'hfffe;
    LUT4 i17_4_lut (.A(ste_left[15]), .B(n34), .C(n28), .D(ste_left[17]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    CCU2D add_29_23 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[21]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[22]), .CIN(n2864), .COUT(n2865), .S0(n1803), .S1(n1801));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_23.INIT0 = 16'hfe00;
    defparam add_29_23.INIT1 = 16'hfe00;
    defparam add_29_23.INJECT1_0 = "NO";
    defparam add_29_23.INJECT1_1 = "NO";
    LUT4 i1807_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[7]), 
         .Z(n2653)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1807_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1819_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[4]), 
         .Z(n2665)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1819_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1835_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[0]), 
         .Z(n2681)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1835_2_lut_3_lut.init = 16'he0e0;
    CCU2D add_29_21 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[19]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[20]), .CIN(n2863), .COUT(n2864), .S0(n1807), .S1(n1805));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_21.INIT0 = 16'hfe00;
    defparam add_29_21.INIT1 = 16'hfe00;
    defparam add_29_21.INJECT1_0 = "NO";
    defparam add_29_21.INJECT1_1 = "NO";
    LUT4 i1520_1_lut (.A(\window_count[3] ), .Z(n2365)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1520_1_lut.init = 16'h5555;
    LUT4 i12_4_lut (.A(ste_left[21]), .B(ste_left[29]), .C(ste_left[19]), 
         .D(ste_left[26]), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    CCU2D add_29_19 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[17]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[18]), .CIN(n2862), .COUT(n2863), .S0(n1811), .S1(n1809));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_19.INIT0 = 16'hfe00;
    defparam add_29_19.INIT1 = 16'hfe00;
    defparam add_29_19.INJECT1_0 = "NO";
    defparam add_29_19.INJECT1_1 = "NO";
    CCU2D add_29_17 (.A0(n4), .B0(window_count[0]), .C0(\window_count[3] ), 
          .D0(sum[15]), .A1(n4), .B1(window_count[0]), .C1(\window_count[3] ), 
          .D1(sum[16]), .CIN(n2861), .COUT(n2862), .S0(n1815), .S1(n1813));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_17.INIT0 = 16'hfe00;
    defparam add_29_17.INIT1 = 16'hfe00;
    defparam add_29_17.INJECT1_0 = "NO";
    defparam add_29_17.INJECT1_1 = "NO";
    FD1P3DX sum__i1 (.D(n1843), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i1.GSR = "ENABLED";
    FD1P3DX sum__i2 (.D(n1841), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i2.GSR = "ENABLED";
    FD1P3DX sum__i3 (.D(n1839), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i3.GSR = "ENABLED";
    FD1P3DX sum__i4 (.D(n1837), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i4.GSR = "ENABLED";
    FD1P3DX sum__i5 (.D(n1835), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i5.GSR = "ENABLED";
    FD1P3DX sum__i6 (.D(n1833), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i6.GSR = "ENABLED";
    FD1P3DX sum__i7 (.D(n1831), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i7.GSR = "ENABLED";
    FD1P3DX sum__i8 (.D(n1829), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i8.GSR = "ENABLED";
    FD1P3DX sum__i9 (.D(n1827), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i9.GSR = "ENABLED";
    FD1P3DX sum__i10 (.D(n1825), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i10.GSR = "ENABLED";
    FD1P3DX sum__i11 (.D(n1823), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i11.GSR = "ENABLED";
    FD1P3DX sum__i12 (.D(n1821), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i12.GSR = "ENABLED";
    FD1P3DX sum__i13 (.D(n1819), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i13.GSR = "ENABLED";
    FD1P3DX sum__i14 (.D(n1817), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i14.GSR = "ENABLED";
    FD1P3DX sum__i15 (.D(n1815), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i15.GSR = "ENABLED";
    LUT4 window_count_1__bdd_4_lut (.A(window_count[1]), .B(\window_count[3] ), 
         .C(window_count[2]), .D(window_count[0]), .Z(o_ws_c_enable_39)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam window_count_1__bdd_4_lut.init = 16'h3235;
    FD1P3DX sum__i16 (.D(n1813), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i16.GSR = "ENABLED";
    CCU2D add_29_15 (.A0(n2629), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[13]), .A1(n2625), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[14]), .CIN(n2860), .COUT(n2861), .S0(n1819), .S1(n1817));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_15.INIT0 = 16'h56aa;
    defparam add_29_15.INIT1 = 16'h56aa;
    defparam add_29_15.INJECT1_0 = "NO";
    defparam add_29_15.INJECT1_1 = "NO";
    FD1P3DX sum__i17 (.D(n1811), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i17.GSR = "ENABLED";
    FD1P3DX sum__i18 (.D(n1809), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i18.GSR = "ENABLED";
    FD1P3DX sum__i19 (.D(n1807), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i19.GSR = "ENABLED";
    FD1P3DX sum__i20 (.D(n1805), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i20.GSR = "ENABLED";
    FD1P3DX sum__i21 (.D(n1803), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i21.GSR = "ENABLED";
    FD1P3AX ste_valid_36 (.D(\window_count[3] ), .SP(Rst_L_N_940), .CK(o_ws_c), 
            .Q(ste_left_valid));   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste_valid_36.GSR = "ENABLED";
    CCU2D add_29_13 (.A0(n2637), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[11]), .A1(n2633), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[12]), .CIN(n2859), .COUT(n2860), .S0(n1823), .S1(n1821));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_13.INIT0 = 16'h56aa;
    defparam add_29_13.INIT1 = 16'h56aa;
    defparam add_29_13.INJECT1_0 = "NO";
    defparam add_29_13.INJECT1_1 = "NO";
    FD1P3DX sum__i22 (.D(n1801), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i22.GSR = "ENABLED";
    CCU2D add_29_11 (.A0(n2645), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[9]), .A1(n2641), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[10]), .CIN(n2858), .COUT(n2859), .S0(n1827), .S1(n1825));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_11.INIT0 = 16'h56aa;
    defparam add_29_11.INIT1 = 16'h56aa;
    defparam add_29_11.INJECT1_0 = "NO";
    defparam add_29_11.INJECT1_1 = "NO";
    CCU2D add_29_9 (.A0(n2653), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[7]), .A1(n2649), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[8]), .CIN(n2857), .COUT(n2858), .S0(n1831), .S1(n1829));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_9.INIT0 = 16'h56aa;
    defparam add_29_9.INIT1 = 16'h56aa;
    defparam add_29_9.INJECT1_0 = "NO";
    defparam add_29_9.INJECT1_1 = "NO";
    CCU2D add_29_7 (.A0(n2661), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[5]), .A1(n2657), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[6]), .CIN(n2856), .COUT(n2857), .S0(n1835), .S1(n1833));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_7.INIT0 = 16'h56aa;
    defparam add_29_7.INIT1 = 16'h56aa;
    defparam add_29_7.INJECT1_0 = "NO";
    defparam add_29_7.INJECT1_1 = "NO";
    FD1P3DX sum__i23 (.D(n1799), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i23.GSR = "ENABLED";
    CCU2D add_29_5 (.A0(n2669), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[3]), .A1(n2665), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[4]), .CIN(n2855), .COUT(n2856), .S0(n1839), .S1(n1837));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_5.INIT0 = 16'h56aa;
    defparam add_29_5.INIT1 = 16'h56aa;
    defparam add_29_5.INJECT1_0 = "NO";
    defparam add_29_5.INJECT1_1 = "NO";
    CCU2D add_29_3 (.A0(n2677), .B0(n4_adj_1461), .C0(\window_count[3] ), 
          .D0(square[1]), .A1(n2673), .B1(n4_adj_1461), .C1(\window_count[3] ), 
          .D1(square[2]), .CIN(n2854), .COUT(n2855), .S0(n1843), .S1(n1841));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_3.INIT0 = 16'h56aa;
    defparam add_29_3.INIT1 = 16'h56aa;
    defparam add_29_3.INJECT1_0 = "NO";
    defparam add_29_3.INJECT1_1 = "NO";
    FD1P3DX sum__i24 (.D(n1797), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[24])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i24.GSR = "ENABLED";
    FD1S3DX window_count_195_196__i1 (.D(n27[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196__i1.GSR = "ENABLED";
    FD1P3DX sum__i25 (.D(n1795), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[25])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i25.GSR = "ENABLED";
    CCU2D window_count_195_196_add_4_5 (.A0(\window_count[3] ), .B0(n2365), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2900), .S0(n27[3]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196_add_4_5.INIT0 = 16'h7888;
    defparam window_count_195_196_add_4_5.INIT1 = 16'h0000;
    defparam window_count_195_196_add_4_5.INJECT1_0 = "NO";
    defparam window_count_195_196_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_195_196_add_4_3 (.A0(window_count[1]), .B0(\window_count[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2899), .COUT(n2900), .S0(n27[1]), 
          .S1(n27[2]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196_add_4_3.INIT0 = 16'hd222;
    defparam window_count_195_196_add_4_3.INIT1 = 16'hd222;
    defparam window_count_195_196_add_4_3.INJECT1_0 = "NO";
    defparam window_count_195_196_add_4_3.INJECT1_1 = "NO";
    FD1P3DX sum__i26 (.D(n1793), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[26])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i26.GSR = "ENABLED";
    CCU2D window_count_195_196_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(window_count[0]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2899), .S1(n27[0]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196_add_4_1.INIT0 = 16'hF000;
    defparam window_count_195_196_add_4_1.INIT1 = 16'hd111;
    defparam window_count_195_196_add_4_1.INJECT1_0 = "NO";
    defparam window_count_195_196_add_4_1.INJECT1_1 = "NO";
    CCU2D add_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2681), .B1(n4_adj_1461), .C1(\window_count[3] ), .D1(square[0]), 
          .COUT(n2854), .S1(n1782));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_1.INIT0 = 16'hF000;
    defparam add_29_1.INIT1 = 16'h56aa;
    defparam add_29_1.INJECT1_0 = "NO";
    defparam add_29_1.INJECT1_1 = "NO";
    FD1P3DX sum__i27 (.D(n1791), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[27])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i27.GSR = "ENABLED";
    FD1P3DX sum__i28 (.D(n1789), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[28])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i28.GSR = "ENABLED";
    FD1P3DX sum__i29 (.D(n1787), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[29])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i29.GSR = "ENABLED";
    FD1P3DX sum__i30 (.D(n1785), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[30])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i30.GSR = "ENABLED";
    LUT4 i5_4_lut_adj_98 (.A(ste_left[6]), .B(n10), .C(ste_left[9]), .D(ste_left[5]), 
         .Z(n2955)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(51[15:23])
    defparam i5_4_lut_adj_98.init = 16'hc080;
    FD1P3DX sum__i0 (.D(n1782), .SP(o_ws_c_enable_39), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i0.GSR = "ENABLED";
    FD1P3IX ste__i30 (.D(sum[30]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[30])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i30.GSR = "ENABLED";
    FD1P3IX ste__i29 (.D(sum[29]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[29])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i29.GSR = "ENABLED";
    FD1P3IX ste__i28 (.D(sum[28]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[28])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i28.GSR = "ENABLED";
    FD1P3IX ste__i27 (.D(sum[27]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[27])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i27.GSR = "ENABLED";
    FD1P3IX ste__i26 (.D(sum[26]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[26])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i26.GSR = "ENABLED";
    FD1P3IX ste__i25 (.D(sum[25]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[25])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i25.GSR = "ENABLED";
    FD1P3IX ste__i24 (.D(sum[24]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[24])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i24.GSR = "ENABLED";
    FD1P3IX ste__i23 (.D(sum[23]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i23.GSR = "ENABLED";
    FD1P3IX ste__i22 (.D(sum[22]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i22.GSR = "ENABLED";
    FD1P3IX ste__i21 (.D(sum[21]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i21.GSR = "ENABLED";
    FD1P3IX ste__i20 (.D(sum[20]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i20.GSR = "ENABLED";
    FD1P3IX ste__i19 (.D(sum[19]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i19.GSR = "ENABLED";
    FD1P3IX ste__i18 (.D(sum[18]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i18.GSR = "ENABLED";
    FD1P3IX ste__i17 (.D(sum[17]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i17.GSR = "ENABLED";
    FD1P3IX ste__i16 (.D(sum[16]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i16.GSR = "ENABLED";
    FD1P3IX ste__i15 (.D(sum[15]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i15.GSR = "ENABLED";
    FD1P3IX ste__i14 (.D(sum[14]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i14.GSR = "ENABLED";
    FD1P3IX ste__i13 (.D(sum[13]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i13.GSR = "ENABLED";
    FD1P3IX ste__i12 (.D(sum[12]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i12.GSR = "ENABLED";
    FD1P3IX ste__i11 (.D(sum[11]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i11.GSR = "ENABLED";
    FD1P3IX ste__i10 (.D(sum[10]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i10.GSR = "ENABLED";
    FD1P3IX ste__i9 (.D(sum[9]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i9.GSR = "ENABLED";
    FD1P3IX ste__i8 (.D(sum[8]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i8.GSR = "ENABLED";
    FD1P3IX ste__i7 (.D(sum[7]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i7.GSR = "ENABLED";
    FD1P3IX ste__i6 (.D(sum[6]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i6.GSR = "ENABLED";
    FD1P3IX ste__i5 (.D(sum[5]), .SP(Rst_L_N_940), .CD(n980), .CK(o_ws_c), 
            .Q(ste_left[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=144, LSE_RLINE=150 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i5.GSR = "ENABLED";
    LUT4 i1811_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[6]), 
         .Z(n2657)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1811_2_lut_3_lut.init = 16'he0e0;
    LUT4 i13_4_lut (.A(ste_left[28]), .B(ste_left[25]), .C(ste_left[18]), 
         .D(ste_left[14]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i15_4_lut (.A(ste_left[13]), .B(n30_adj_1464), .C(ste_left[22]), 
         .D(ste_left[12]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1823_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[3]), 
         .Z(n2669)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1823_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1831_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[1]), 
         .Z(n2677)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1831_2_lut_3_lut.init = 16'he0e0;
    FD1S3DX window_count_195_196__i2 (.D(n27[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196__i2.GSR = "ENABLED";
    LUT4 i1815_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[5]), 
         .Z(n2661)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1815_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1827_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[2]), 
         .Z(n2673)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1827_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1783_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[13]), 
         .Z(n2629)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1783_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1787_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[12]), 
         .Z(n2633)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1787_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1799_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[9]), 
         .Z(n2645)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1799_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1803_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(window_count[0]), 
         .C(n4), .D(sum[8]), .Z(n2649)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1803_2_lut_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1791_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(window_count[0]), 
         .C(n4), .D(sum[11]), .Z(n2637)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1791_2_lut_3_lut_4_lut.init = 16'hfe00;
    LUT4 i2_2_lut_3_lut (.A(window_count[0]), .B(window_count[2]), .C(window_count[1]), 
         .Z(n4_adj_1461)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1795_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[10]), 
         .Z(n2641)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1795_2_lut_3_lut.init = 16'he0e0;
    LUT4 i9_2_lut (.A(ste_left[24]), .B(ste_left[16]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i1779_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_1461), .C(sum[14]), 
         .Z(n2625)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1779_2_lut_3_lut.init = 16'he0e0;
    FD1S3DX window_count_195_196__i3 (.D(n27[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196__i3.GSR = "ENABLED";
    FD1S3DX window_count_195_196__i4 (.D(n27[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_195_196__i4.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(window_count[2]), .B(window_count[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i11_4_lut (.A(ste_left[23]), .B(ste_left[20]), .C(ste_left[30]), 
         .D(ste_left[27]), .Z(n30_adj_1464)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    squares sq1 (.o_ws_c(o_ws_c), .VCC_net(VCC_net), .i_sys_rst(i_sys_rst), 
            .square({square}), .horizontal_out_c_14(horizontal_out_c_14), 
            .horizontal_out_c_13(horizontal_out_c_13), .horizontal_out_c_12(horizontal_out_c_12), 
            .horizontal_out_c_11(horizontal_out_c_11), .horizontal_out_c_10(horizontal_out_c_10), 
            .horizontal_out_c_9(horizontal_out_c_9), .horizontal_out_c_8(horizontal_out_c_8)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    
endmodule
//
// Verilog Description of module squares
//

module squares (o_ws_c, VCC_net, i_sys_rst, square, horizontal_out_c_14, 
            horizontal_out_c_13, horizontal_out_c_12, horizontal_out_c_11, 
            horizontal_out_c_10, horizontal_out_c_9, horizontal_out_c_8) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input o_ws_c;
    input VCC_net;
    input i_sys_rst;
    output [14:0]square;
    input horizontal_out_c_14;
    input horizontal_out_c_13;
    input horizontal_out_c_12;
    input horizontal_out_c_11;
    input horizontal_out_c_10;
    input horizontal_out_c_9;
    input horizontal_out_c_8;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire qdataout13_ffin, qdataout12_ffin, qdataout11_ffin, qdataout10_ffin, 
        qdataout9_ffin, qdataout8_ffin, qdataout7_ffin, qdataout6_ffin, 
        qdataout5_ffin, qdataout4_ffin, qdataout3_ffin, qdataout2_ffin, 
        qdataout1_ffin, qdataout0_ffin, qdataout14_ffin;
    
    FD1P3DX FF_13 (.D(qdataout13_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(35[13] 36[31])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(qdataout12_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(39[13] 40[31])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(qdataout11_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(43[13] 44[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(qdataout10_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(47[13] 48[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(qdataout9_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(51[13] 52[18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(qdataout8_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(55[13] 56[18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(qdataout7_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(59[13] 60[18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(qdataout6_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(63[13] 64[18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(qdataout5_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(67[13] 68[18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(qdataout4_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(71[13] 72[18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(qdataout3_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(75[13] 76[18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(qdataout2_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(79[13] 80[18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(qdataout1_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(83[13] 84[18])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(qdataout0_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(87[13] 88[18])
    defparam FF_0.GSR = "ENABLED";
    ROM128X1A mem_0_14 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout14_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_14.initval = 128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_13 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout13_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_13.initval = 128'b01111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_14 (.D(qdataout14_ffin), .SP(VCC_net), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(square[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/squares.v(31[13] 32[31])
    defparam FF_14.GSR = "ENABLED";
    ROM128X1A mem_0_12 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout12_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_12.initval = 128'b01111111111111111100000000000000000000111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_11 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout11_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_11.initval = 128'b01111111100000000011111111100000000000111111111111000000000000000111111111111111111000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_10 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout10_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_10.initval = 128'b01111000011110000011110000011111100000111111000000111111100000000111111110000000000111111111111110000000000000000000000000000000;
    ROM128X1A mem_0_9 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout9_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_9.initval = 128'b01100110011001100011001110011100011000111000111000111000011110000111100001111100000111111000000001111111110000000000000000000000;
    ROM128X1A mem_0_8 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout8_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_8.initval = 128'b01010101010101011010101101011010010110100100100110110110011001100110011001100011100111000111100001111000001111111000000000000000;
    ROM128X1A mem_0_7 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_7.initval = 128'b00000000000011110000111000110011001100110110110100101101010101010101010101011010010110110110011001100110001110000111100000000000;
    ROM128X1A mem_0_6 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_6.initval = 128'b00000000111100110011001011010101010101011010011001100111100000000000000011110011001100101101010101010101101001100110011110000000;
    ROM128X1A mem_0_5 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_5.initval = 128'b00000011001101010101011001100000000000110011010101010110011000000000001100110101010101100110000000000011001101010101011001100000;
    ROM128X1A mem_0_4 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_4.initval = 128'b00001101010110000000110101011000000011010101100000001101010110000000110101011000000011010101100000001101010110000000110101011000;
    ROM128X1A mem_0_3 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_3.initval = 128'b00010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100;
    ROM128X1A mem_0_2 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_2.initval = 128'b00100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010;
    ROM128X1A mem_0_1 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_1.initval = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_0 (.AD0(horizontal_out_c_8), .AD1(horizontal_out_c_9), 
            .AD2(horizontal_out_c_10), .AD3(horizontal_out_c_11), .AD4(horizontal_out_c_12), 
            .AD5(horizontal_out_c_13), .AD6(horizontal_out_c_14), .DO0(qdataout0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(58[9:94])
    defparam mem_0_0.initval = 128'b01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module submean2
//

module submean2 (horizontal_out_c_4, GND_net, horizontal_out_c_5, horizontal_out_c_2, 
            horizontal_out_c_3, horizontal_out_c_0, horizontal_out_c_1, 
            horizontal_out_c_11, horizontal_out_c_12, o_ws_c, subMean_left_valid, 
            i_sys_rst, horizontal_out_c_9, horizontal_out_c_10, n20, 
            horizontal_out_c_7, horizontal_out_c_8, horizontal_out_c_14, 
            horizontal_out_c_13, horizontal_out_c_6, \subMean_left_out[15] , 
            \subMean_left_out[14] , \subMean_left_out[13] , \subMean_left_out[12] , 
            \subMean_left_out[11] , \subMean_left_out[10] , \subMean_left_out[9] , 
            \subMean_left_out[8] , \subMean_left_out[7] , \subMean_left_out[6] , 
            n3436, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input horizontal_out_c_4;
    input GND_net;
    input horizontal_out_c_5;
    input horizontal_out_c_2;
    input horizontal_out_c_3;
    input horizontal_out_c_0;
    input horizontal_out_c_1;
    input horizontal_out_c_11;
    input horizontal_out_c_12;
    input o_ws_c;
    output subMean_left_valid;
    input i_sys_rst;
    input horizontal_out_c_9;
    input horizontal_out_c_10;
    output n20;
    input horizontal_out_c_7;
    input horizontal_out_c_8;
    input horizontal_out_c_14;
    input horizontal_out_c_13;
    input horizontal_out_c_6;
    output \subMean_left_out[15] ;
    output \subMean_left_out[14] ;
    output \subMean_left_out[13] ;
    output \subMean_left_out[12] ;
    output \subMean_left_out[11] ;
    output \subMean_left_out[10] ;
    output \subMean_left_out[9] ;
    output \subMean_left_out[8] ;
    output \subMean_left_out[7] ;
    output \subMean_left_out[6] ;
    input n3436;
    input VCC_net;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire n2872;
    wire [19:0]sum;   // c:/users/sec29/desktop/i2s_iot/submean2.v(22[12:15])
    wire [19:0]sum_19__N_864;
    
    wire n2873, n2871, n2834;
    wire [15:0]avg;   // c:/users/sec29/desktop/i2s_iot/submean2.v(23[12:15])
    wire [15:0]subMean_out_15__N_886;
    
    wire n2835;
    wire [15:0]subMean_left_out;   // c:/users/sec29/desktop/i2s_iot/top.v(39[14:30])
    wire [19:0]sum_19__N_844;
    
    wire n2833, n4, n2832, n2841;
    wire [14:0]fifo_out;   // c:/users/sec29/desktop/i2s_iot/submean2.v(26[13:21])
    
    wire n2842, n2878, n2879, n2877, n2876, n2875, n2874, n2849, 
        n2848, n2847, n2846, n2831, n2829, n2845, n2844, n2843, 
        n2830, n2840, n2836, Full;
    
    CCU2D add_5_6 (.A0(sum[4]), .B0(horizontal_out_c_4), .C0(GND_net), 
          .D0(GND_net), .A1(sum[5]), .B1(horizontal_out_c_5), .C1(GND_net), 
          .D1(GND_net), .CIN(n2872), .COUT(n2873), .S0(sum_19__N_864[4]), 
          .S1(sum_19__N_864[5]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(sum[2]), .B0(horizontal_out_c_2), .C0(GND_net), 
          .D0(GND_net), .A1(sum[3]), .B1(horizontal_out_c_3), .C1(GND_net), 
          .D1(GND_net), .CIN(n2871), .COUT(n2872), .S0(sum_19__N_864[2]), 
          .S1(sum_19__N_864[3]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    CCU2D add_5_2 (.A0(sum[0]), .B0(horizontal_out_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(sum[1]), .B1(horizontal_out_c_1), .C1(GND_net), 
          .D1(GND_net), .COUT(n2871), .S1(sum_19__N_864[1]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_13 (.A0(horizontal_out_c_11), .B0(avg[11]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_12), .B1(avg[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2834), .COUT(n2835), .S0(subMean_out_15__N_886[11]), 
          .S1(subMean_out_15__N_886[12]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_13.INIT0 = 16'h5999;
    defparam sub_7_add_2_13.INIT1 = 16'h5999;
    defparam sub_7_add_2_13.INJECT1_0 = "NO";
    defparam sub_7_add_2_13.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i1 (.D(subMean_out_15__N_886[1]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(subMean_left_out[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i1.GSR = "ENABLED";
    FD1S3DX avg_i0 (.D(sum[4]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i0.GSR = "ENABLED";
    FD1S3DX sum_i0 (.D(sum_19__N_844[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i0.GSR = "ENABLED";
    CCU2D sub_7_add_2_11 (.A0(horizontal_out_c_9), .B0(avg[9]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_10), .B1(avg[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2833), .COUT(n2834), .S0(subMean_out_15__N_886[9]), 
          .S1(subMean_out_15__N_886[10]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_11.INIT0 = 16'h5999;
    defparam sub_7_add_2_11.INIT1 = 16'h5999;
    defparam sub_7_add_2_11.INJECT1_0 = "NO";
    defparam sub_7_add_2_11.INJECT1_1 = "NO";
    FD1S3DX sum_i19 (.D(sum_19__N_844[19]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i19.GSR = "ENABLED";
    FD1S3DX sum_i18 (.D(sum_19__N_844[18]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i18.GSR = "ENABLED";
    FD1S3DX sum_i17 (.D(sum_19__N_844[17]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i17.GSR = "ENABLED";
    FD1S3DX sum_i16 (.D(sum_19__N_844[16]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i16.GSR = "ENABLED";
    FD1S3DX sum_i15 (.D(sum_19__N_844[15]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i15.GSR = "ENABLED";
    FD1S3DX sum_i14 (.D(sum_19__N_844[14]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i14.GSR = "ENABLED";
    FD1S3DX sum_i13 (.D(sum_19__N_844[13]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i13.GSR = "ENABLED";
    FD1S3DX sum_i12 (.D(sum_19__N_844[12]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i12.GSR = "ENABLED";
    FD1S3DX sum_i11 (.D(sum_19__N_844[11]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i11.GSR = "ENABLED";
    FD1S3DX sum_i10 (.D(sum_19__N_844[10]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i10.GSR = "ENABLED";
    FD1S3DX sum_i9 (.D(sum_19__N_844[9]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i9.GSR = "ENABLED";
    FD1S3DX sum_i8 (.D(sum_19__N_844[8]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i8.GSR = "ENABLED";
    FD1S3DX sum_i7 (.D(sum_19__N_844[7]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i7.GSR = "ENABLED";
    FD1S3DX sum_i6 (.D(sum_19__N_844[6]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i6.GSR = "ENABLED";
    FD1S3DX sum_i5 (.D(sum_19__N_844[5]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i5.GSR = "ENABLED";
    FD1S3DX sum_i4 (.D(sum_19__N_844[4]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i4.GSR = "ENABLED";
    FD1S3DX sum_i3 (.D(sum_19__N_844[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i3.GSR = "ENABLED";
    FD1S3DX sum_i2 (.D(sum_19__N_844[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i2.GSR = "ENABLED";
    LUT4 i38_4_lut (.A(subMean_left_out[4]), .B(subMean_left_out[5]), .C(subMean_left_out[2]), 
         .D(n4), .Z(n20)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(39[14:30])
    defparam i38_4_lut.init = 16'hc888;
    FD1S3DX sum_i1 (.D(sum_19__N_844[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i1.GSR = "ENABLED";
    FD1S3DX avg_i15 (.D(sum[19]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i15.GSR = "ENABLED";
    FD1S3DX avg_i14 (.D(sum[18]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i14.GSR = "ENABLED";
    FD1S3DX avg_i13 (.D(sum[17]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i13.GSR = "ENABLED";
    FD1S3DX avg_i12 (.D(sum[16]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i12.GSR = "ENABLED";
    FD1S3DX avg_i11 (.D(sum[15]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i11.GSR = "ENABLED";
    FD1S3DX avg_i10 (.D(sum[14]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i10.GSR = "ENABLED";
    FD1S3DX avg_i9 (.D(sum[13]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i9.GSR = "ENABLED";
    FD1S3DX avg_i8 (.D(sum[12]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i8.GSR = "ENABLED";
    FD1S3DX avg_i7 (.D(sum[11]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i7.GSR = "ENABLED";
    FD1S3DX avg_i6 (.D(sum[10]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i6.GSR = "ENABLED";
    FD1S3DX avg_i5 (.D(sum[9]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i5.GSR = "ENABLED";
    FD1S3DX avg_i4 (.D(sum[8]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i4.GSR = "ENABLED";
    FD1S3DX avg_i3 (.D(sum[7]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i3.GSR = "ENABLED";
    FD1S3DX avg_i2 (.D(sum[6]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i2.GSR = "ENABLED";
    FD1S3DX avg_i1 (.D(sum[5]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i1.GSR = "ENABLED";
    CCU2D sub_7_add_2_9 (.A0(horizontal_out_c_7), .B0(avg[7]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_8), .B1(avg[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2832), .COUT(n2833), .S0(subMean_out_15__N_886[7]), 
          .S1(subMean_out_15__N_886[8]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_9.INIT0 = 16'h5999;
    defparam sub_7_add_2_9.INIT1 = 16'h5999;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_5 (.A0(sum_19__N_864[2]), .B0(subMean_left_valid), 
          .C0(fifo_out[2]), .D0(GND_net), .A1(sum_19__N_864[3]), .B1(subMean_left_valid), 
          .C1(fifo_out[3]), .D1(GND_net), .CIN(n2841), .COUT(n2842), 
          .S0(sum_19__N_844[2]), .S1(sum_19__N_844[3]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_5.INIT0 = 16'h56a6;
    defparam sub_6_add_2_5.INIT1 = 16'h56a6;
    defparam sub_6_add_2_5.INJECT1_0 = "NO";
    defparam sub_6_add_2_5.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2878), 
          .COUT(n2879), .S0(sum_19__N_864[16]), .S1(sum_19__N_864[17]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_18.INIT0 = 16'h5aaa;
    defparam add_5_18.INIT1 = 16'h5aaa;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(sum[14]), .B0(horizontal_out_c_14), .C0(GND_net), 
          .D0(GND_net), .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2877), .COUT(n2878), .S0(sum_19__N_864[14]), .S1(sum_19__N_864[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5aaa;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    CCU2D add_5_14 (.A0(sum[12]), .B0(horizontal_out_c_12), .C0(GND_net), 
          .D0(GND_net), .A1(sum[13]), .B1(horizontal_out_c_13), .C1(GND_net), 
          .D1(GND_net), .CIN(n2876), .COUT(n2877), .S0(sum_19__N_864[12]), 
          .S1(sum_19__N_864[13]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(sum[10]), .B0(horizontal_out_c_10), .C0(GND_net), 
          .D0(GND_net), .A1(sum[11]), .B1(horizontal_out_c_11), .C1(GND_net), 
          .D1(GND_net), .CIN(n2875), .COUT(n2876), .S0(sum_19__N_864[10]), 
          .S1(sum_19__N_864[11]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(sum[8]), .B0(horizontal_out_c_8), .C0(GND_net), 
          .D0(GND_net), .A1(sum[9]), .B1(horizontal_out_c_9), .C1(GND_net), 
          .D1(GND_net), .CIN(n2874), .COUT(n2875), .S0(sum_19__N_864[8]), 
          .S1(sum_19__N_864[9]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(sum[6]), .B0(horizontal_out_c_6), .C0(GND_net), 
          .D0(GND_net), .A1(sum[7]), .B1(horizontal_out_c_7), .C1(GND_net), 
          .D1(GND_net), .CIN(n2873), .COUT(n2874), .S0(sum_19__N_864[6]), 
          .S1(sum_19__N_864[7]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(subMean_left_out[3]), .B(subMean_left_out[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D sub_6_add_2_21 (.A0(sum_19__N_864[18]), .B0(subMean_left_valid), 
          .C0(subMean_left_valid), .D0(GND_net), .A1(sum_19__N_864[19]), 
          .B1(subMean_left_valid), .C1(subMean_left_valid), .D1(GND_net), 
          .CIN(n2849), .S0(sum_19__N_844[18]), .S1(sum_19__N_844[19]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_21.INIT0 = 16'h5a5a;
    defparam sub_6_add_2_21.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_21.INJECT1_0 = "NO";
    defparam sub_6_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_19 (.A0(sum_19__N_864[16]), .B0(subMean_left_valid), 
          .C0(subMean_left_valid), .D0(GND_net), .A1(sum_19__N_864[17]), 
          .B1(subMean_left_valid), .C1(subMean_left_valid), .D1(GND_net), 
          .CIN(n2848), .COUT(n2849), .S0(sum_19__N_844[16]), .S1(sum_19__N_844[17]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_19.INIT0 = 16'h5a5a;
    defparam sub_6_add_2_19.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_19.INJECT1_0 = "NO";
    defparam sub_6_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_17 (.A0(sum_19__N_864[14]), .B0(subMean_left_valid), 
          .C0(fifo_out[14]), .D0(GND_net), .A1(sum_19__N_864[15]), .B1(subMean_left_valid), 
          .C1(subMean_left_valid), .D1(GND_net), .CIN(n2847), .COUT(n2848), 
          .S0(sum_19__N_844[14]), .S1(sum_19__N_844[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_17.INIT0 = 16'h56a6;
    defparam sub_6_add_2_17.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_17.INJECT1_0 = "NO";
    defparam sub_6_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_15 (.A0(sum_19__N_864[12]), .B0(subMean_left_valid), 
          .C0(fifo_out[12]), .D0(GND_net), .A1(sum_19__N_864[13]), .B1(subMean_left_valid), 
          .C1(fifo_out[13]), .D1(GND_net), .CIN(n2846), .COUT(n2847), 
          .S0(sum_19__N_844[12]), .S1(sum_19__N_844[13]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_15.INIT0 = 16'h56a6;
    defparam sub_6_add_2_15.INIT1 = 16'h56a6;
    defparam sub_6_add_2_15.INJECT1_0 = "NO";
    defparam sub_6_add_2_15.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2879), 
          .S0(sum_19__N_864[18]), .S1(sum_19__N_864[19]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_20.INIT0 = 16'h5aaa;
    defparam add_5_20.INIT1 = 16'h5aaa;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_7 (.A0(horizontal_out_c_5), .B0(avg[5]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_6), .B1(avg[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2831), .COUT(n2832), .S0(subMean_out_15__N_886[5]), 
          .S1(subMean_out_15__N_886[6]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_7.INIT0 = 16'h5999;
    defparam sub_7_add_2_7.INIT1 = 16'h5999;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(horizontal_out_c_0), .B1(avg[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2829));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_1.INIT0 = 16'h0000;
    defparam sub_7_add_2_1.INIT1 = 16'h5999;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_13 (.A0(sum_19__N_864[10]), .B0(subMean_left_valid), 
          .C0(fifo_out[10]), .D0(GND_net), .A1(sum_19__N_864[11]), .B1(subMean_left_valid), 
          .C1(fifo_out[11]), .D1(GND_net), .CIN(n2845), .COUT(n2846), 
          .S0(sum_19__N_844[10]), .S1(sum_19__N_844[11]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_13.INIT0 = 16'h56a6;
    defparam sub_6_add_2_13.INIT1 = 16'h56a6;
    defparam sub_6_add_2_13.INJECT1_0 = "NO";
    defparam sub_6_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_11 (.A0(sum_19__N_864[8]), .B0(subMean_left_valid), 
          .C0(fifo_out[8]), .D0(GND_net), .A1(sum_19__N_864[9]), .B1(subMean_left_valid), 
          .C1(fifo_out[9]), .D1(GND_net), .CIN(n2844), .COUT(n2845), 
          .S0(sum_19__N_844[8]), .S1(sum_19__N_844[9]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_11.INIT0 = 16'h56a6;
    defparam sub_6_add_2_11.INIT1 = 16'h56a6;
    defparam sub_6_add_2_11.INJECT1_0 = "NO";
    defparam sub_6_add_2_11.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i15 (.D(subMean_out_15__N_886[15]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i15.GSR = "ENABLED";
    CCU2D sub_6_add_2_9 (.A0(sum_19__N_864[6]), .B0(subMean_left_valid), 
          .C0(fifo_out[6]), .D0(GND_net), .A1(sum_19__N_864[7]), .B1(subMean_left_valid), 
          .C1(fifo_out[7]), .D1(GND_net), .CIN(n2843), .COUT(n2844), 
          .S0(sum_19__N_844[6]), .S1(sum_19__N_844[7]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_9.INIT0 = 16'h56a6;
    defparam sub_6_add_2_9.INIT1 = 16'h56a6;
    defparam sub_6_add_2_9.INJECT1_0 = "NO";
    defparam sub_6_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_7 (.A0(sum_19__N_864[4]), .B0(subMean_left_valid), 
          .C0(fifo_out[4]), .D0(GND_net), .A1(sum_19__N_864[5]), .B1(subMean_left_valid), 
          .C1(fifo_out[5]), .D1(GND_net), .CIN(n2842), .COUT(n2843), 
          .S0(sum_19__N_844[4]), .S1(sum_19__N_844[5]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_7.INIT0 = 16'h56a6;
    defparam sub_6_add_2_7.INIT1 = 16'h56a6;
    defparam sub_6_add_2_7.INJECT1_0 = "NO";
    defparam sub_6_add_2_7.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i14 (.D(subMean_out_15__N_886[14]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i14.GSR = "ENABLED";
    FD1P3DX subMean_out__i13 (.D(subMean_out_15__N_886[13]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i13.GSR = "ENABLED";
    CCU2D sub_7_add_2_5 (.A0(horizontal_out_c_3), .B0(avg[3]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_4), .B1(avg[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2830), .COUT(n2831), .S0(subMean_out_15__N_886[3]), 
          .S1(subMean_out_15__N_886[4]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_5.INIT0 = 16'h5999;
    defparam sub_7_add_2_5.INIT1 = 16'h5999;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i12 (.D(subMean_out_15__N_886[12]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i12.GSR = "ENABLED";
    FD1P3DX subMean_out__i11 (.D(subMean_out_15__N_886[11]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i11.GSR = "ENABLED";
    FD1P3DX subMean_out__i10 (.D(subMean_out_15__N_886[10]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i10.GSR = "ENABLED";
    FD1P3DX subMean_out__i9 (.D(subMean_out_15__N_886[9]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i9.GSR = "ENABLED";
    FD1P3DX subMean_out__i8 (.D(subMean_out_15__N_886[8]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i8.GSR = "ENABLED";
    FD1P3DX subMean_out__i7 (.D(subMean_out_15__N_886[7]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i7.GSR = "ENABLED";
    FD1P3DX subMean_out__i6 (.D(subMean_out_15__N_886[6]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i6.GSR = "ENABLED";
    FD1P3DX subMean_out__i5 (.D(subMean_out_15__N_886[5]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(subMean_left_out[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i5.GSR = "ENABLED";
    FD1P3DX subMean_out__i4 (.D(subMean_out_15__N_886[4]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(subMean_left_out[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i4.GSR = "ENABLED";
    FD1P3DX subMean_out__i3 (.D(subMean_out_15__N_886[3]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(subMean_left_out[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i3.GSR = "ENABLED";
    FD1P3DX subMean_out__i2 (.D(subMean_out_15__N_886[2]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(subMean_left_out[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=152, LSE_RLINE=158 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i2.GSR = "ENABLED";
    CCU2D sub_6_add_2_3 (.A0(sum_19__N_864[0]), .B0(subMean_left_valid), 
          .C0(fifo_out[0]), .D0(GND_net), .A1(sum_19__N_864[1]), .B1(subMean_left_valid), 
          .C1(fifo_out[1]), .D1(GND_net), .CIN(n2840), .COUT(n2841), 
          .S0(sum_19__N_844[0]), .S1(sum_19__N_844[1]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_3.INIT0 = 16'h56a6;
    defparam sub_6_add_2_3.INIT1 = 16'h56a6;
    defparam sub_6_add_2_3.INJECT1_0 = "NO";
    defparam sub_6_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_15 (.A0(horizontal_out_c_13), .B0(avg[13]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_14), .B1(avg[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2835), .COUT(n2836), .S0(subMean_out_15__N_886[13]), 
          .S1(subMean_out_15__N_886[14]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_15.INIT0 = 16'h5999;
    defparam sub_7_add_2_15.INIT1 = 16'h5999;
    defparam sub_7_add_2_15.INJECT1_0 = "NO";
    defparam sub_7_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_3 (.A0(horizontal_out_c_1), .B0(avg[1]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_2), .B1(avg[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2829), .COUT(n2830), .S0(subMean_out_15__N_886[1]), 
          .S1(subMean_out_15__N_886[2]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_3.INIT0 = 16'h5999;
    defparam sub_7_add_2_3.INIT1 = 16'h5999;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(subMean_left_valid), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2840));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_1.INIT0 = 16'hF000;
    defparam sub_6_add_2_1.INIT1 = 16'h0555;
    defparam sub_6_add_2_1.INJECT1_0 = "NO";
    defparam sub_6_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_17 (.A0(avg[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2836), 
          .S0(subMean_out_15__N_886[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_17.INIT0 = 16'hf555;
    defparam sub_7_add_2_17.INIT1 = 16'h0000;
    defparam sub_7_add_2_17.INJECT1_0 = "NO";
    defparam sub_7_add_2_17.INJECT1_1 = "NO";
    LUT4 i1977_2_lut (.A(sum[0]), .B(horizontal_out_c_0), .Z(sum_19__N_864[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1977_2_lut.init = 16'h6666;
    rising_edge_det r1 (.o_ws_c(o_ws_c), .i_sys_rst(i_sys_rst), .Full(Full), 
            .subMean_left_valid(subMean_left_valid), .n3436(n3436)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(31[17:69])
    fifo_submean f1 (.horizontal_out_c_14(horizontal_out_c_14), .horizontal_out_c_13(horizontal_out_c_13), 
            .horizontal_out_c_12(horizontal_out_c_12), .horizontal_out_c_11(horizontal_out_c_11), 
            .horizontal_out_c_10(horizontal_out_c_10), .horizontal_out_c_9(horizontal_out_c_9), 
            .horizontal_out_c_8(horizontal_out_c_8), .horizontal_out_c_7(horizontal_out_c_7), 
            .horizontal_out_c_6(horizontal_out_c_6), .horizontal_out_c_5(horizontal_out_c_5), 
            .horizontal_out_c_4(horizontal_out_c_4), .horizontal_out_c_3(horizontal_out_c_3), 
            .horizontal_out_c_2(horizontal_out_c_2), .horizontal_out_c_1(horizontal_out_c_1), 
            .horizontal_out_c_0(horizontal_out_c_0), .o_ws_c(o_ws_c), .VCC_net(VCC_net), 
            .subMean_left_valid(subMean_left_valid), .i_sys_rst(i_sys_rst), 
            .GND_net(GND_net), .fifo_out({fifo_out}), .Full(Full)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(28[14] 29[70])
    
endmodule
//
// Verilog Description of module rising_edge_det
//

module rising_edge_det (o_ws_c, i_sys_rst, Full, subMean_left_valid, 
            n3436) /* synthesis syn_module_defined=1 */ ;
    input o_ws_c;
    input i_sys_rst;
    input Full;
    output subMean_left_valid;
    input n3436;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire temp, pe_N_903;
    
    FD1S3DX temp_10 (.D(Full), .CK(o_ws_c), .CD(i_sys_rst), .Q(temp)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=17, LSE_RCOL=69, LSE_LLINE=31, LSE_RLINE=31 */ ;   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(12[3:13])
    defparam temp_10.GSR = "ENABLED";
    FD1P3DX pe_11 (.D(n3436), .SP(pe_N_903), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(subMean_left_valid));   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(18[7] 19[9])
    defparam pe_11.GSR = "ENABLED";
    LUT4 pe_I_24_2_lut (.A(temp), .B(Full), .Z(pe_N_903)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(18[11:28])
    defparam pe_I_24_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module fifo_submean
//

module fifo_submean (horizontal_out_c_14, horizontal_out_c_13, horizontal_out_c_12, 
            horizontal_out_c_11, horizontal_out_c_10, horizontal_out_c_9, 
            horizontal_out_c_8, horizontal_out_c_7, horizontal_out_c_6, 
            horizontal_out_c_5, horizontal_out_c_4, horizontal_out_c_3, 
            horizontal_out_c_2, horizontal_out_c_1, horizontal_out_c_0, 
            o_ws_c, VCC_net, subMean_left_valid, i_sys_rst, GND_net, 
            fifo_out, Full) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input horizontal_out_c_14;
    input horizontal_out_c_13;
    input horizontal_out_c_12;
    input horizontal_out_c_11;
    input horizontal_out_c_10;
    input horizontal_out_c_9;
    input horizontal_out_c_8;
    input horizontal_out_c_7;
    input horizontal_out_c_6;
    input horizontal_out_c_5;
    input horizontal_out_c_4;
    input horizontal_out_c_3;
    input horizontal_out_c_2;
    input horizontal_out_c_1;
    input horizontal_out_c_0;
    input o_ws_c;
    input VCC_net;
    input subMean_left_valid;
    input i_sys_rst;
    input GND_net;
    output [14:0]fifo_out;
    output Full;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    
    wire Empty;
    
    FIFO8KB fifo_submean_0_0 (.DI0(horizontal_out_c_0), .DI1(horizontal_out_c_1), 
            .DI2(horizontal_out_c_2), .DI3(horizontal_out_c_3), .DI4(horizontal_out_c_4), 
            .DI5(horizontal_out_c_5), .DI6(horizontal_out_c_6), .DI7(horizontal_out_c_7), 
            .DI8(horizontal_out_c_8), .DI9(horizontal_out_c_9), .DI10(horizontal_out_c_10), 
            .DI11(horizontal_out_c_11), .DI12(horizontal_out_c_12), .DI13(horizontal_out_c_13), 
            .DI14(horizontal_out_c_14), .DI15(GND_net), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(VCC_net), 
            .RE(subMean_left_valid), .ORE(subMean_left_valid), .CLKW(o_ws_c), 
            .CLKR(o_ws_c), .RST(i_sys_rst), .RPRST(GND_net), .DO0(fifo_out[9]), 
            .DO1(fifo_out[10]), .DO2(fifo_out[11]), .DO3(fifo_out[12]), 
            .DO4(fifo_out[13]), .DO5(fifo_out[14]), .DO9(fifo_out[0]), 
            .DO10(fifo_out[1]), .DO11(fifo_out[2]), .DO12(fifo_out[3]), 
            .DO13(fifo_out[4]), .DO14(fifo_out[5]), .DO15(fifo_out[6]), 
            .DO16(fifo_out[7]), .DO17(fifo_out[8]), .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=13, LSE_LCOL=14, LSE_RCOL=70, LSE_LLINE=28, LSE_RLINE=29 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(28[14] 29[70])
    defparam fifo_submean_0_0.DATA_WIDTH_W = 18;
    defparam fifo_submean_0_0.DATA_WIDTH_R = 18;
    defparam fifo_submean_0_0.REGMODE = "OUTREG";
    defparam fifo_submean_0_0.RESETMODE = "ASYNC";
    defparam fifo_submean_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam fifo_submean_0_0.CSDECODE_W = "0b11";
    defparam fifo_submean_0_0.CSDECODE_R = "0b11";
    defparam fifo_submean_0_0.AEPOINTER = "0b00000010100000";
    defparam fifo_submean_0_0.AEPOINTER1 = "0b00000010110000";
    defparam fifo_submean_0_0.AFPOINTER = "0b00000010100000";
    defparam fifo_submean_0_0.AFPOINTER1 = "0b00000010010000";
    defparam fifo_submean_0_0.FULLPOINTER = "0b00000100000000";
    defparam fifo_submean_0_0.FULLPOINTER1 = "0b00000011110000";
    defparam fifo_submean_0_0.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module I2S_Controller_U0
//

module I2S_Controller_U0 (o_ws_c, o_sck_N_112, i_sys_rst, \o_right_data[1] , 
            \o_right_data[30] , \o_right_data[29] , \o_right_data[28] , 
            \o_right_data[27] , \o_right_data[26] , \o_right_data[25] , 
            \o_right_data[24] , \o_right_data[23] , \o_right_data[22] , 
            \o_right_data[21] , \o_right_data[20] , \o_right_data[19] , 
            \o_right_data[18] , \o_right_data[17] , \o_right_data[16] , 
            \o_right_data[15] , \o_right_data[0] , wr_en, \o_right_data[14] , 
            \o_right_data[13] , \o_right_data[12] , \o_right_data[11] , 
            \o_right_data[10] , \o_right_data[9] , \o_right_data[8] , 
            GND_net, \o_right_data[7] , \o_right_data[6] , \o_right_data[5] , 
            \o_right_data[4] , \o_right_data[3] , \o_right_data[2] , VCC_net, 
            i_sd_c) /* synthesis syn_module_defined=1 */ ;
    output o_ws_c;
    input o_sck_N_112;
    input i_sys_rst;
    output \o_right_data[1] ;
    output \o_right_data[30] ;
    output \o_right_data[29] ;
    output \o_right_data[28] ;
    output \o_right_data[27] ;
    output \o_right_data[26] ;
    output \o_right_data[25] ;
    output \o_right_data[24] ;
    output \o_right_data[23] ;
    output \o_right_data[22] ;
    output \o_right_data[21] ;
    output \o_right_data[20] ;
    output \o_right_data[19] ;
    output \o_right_data[18] ;
    output \o_right_data[17] ;
    output \o_right_data[16] ;
    output \o_right_data[15] ;
    output \o_right_data[0] ;
    output wr_en;
    output \o_right_data[14] ;
    output \o_right_data[13] ;
    output \o_right_data[12] ;
    output \o_right_data[11] ;
    output \o_right_data[10] ;
    output \o_right_data[9] ;
    output \o_right_data[8] ;
    input GND_net;
    output \o_right_data[7] ;
    output \o_right_data[6] ;
    output \o_right_data[5] ;
    output \o_right_data[4] ;
    output \o_right_data[3] ;
    output \o_right_data[2] ;
    input VCC_net;
    input i_sd_c;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    wire o_sck_N_112 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire o_ws_N_119, n3334, n3335;
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire n3336;
    wire [4:0]n32;
    
    wire n3321, n3110, n3057, n2959, n3076;
    
    FD1S3DX o_ws_13 (.D(o_ws_N_119), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(o_ws_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=63, LSE_RLINE=73 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(56[3] 64[7])
    defparam o_ws_13.GSR = "ENABLED";
    PFUMX i2271 (.BLUT(n3334), .ALUT(n3335), .C0(count[3]), .Z(n3336));
    FD1S3DX count_188__i0 (.D(n32[0]), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i0.GSR = "ENABLED";
    FD1S3DX count_188__i4 (.D(n3336), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i4.GSR = "ENABLED";
    FD1S3DX count_188__i3 (.D(n3321), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i3.GSR = "ENABLED";
    FD1S3DX count_188__i2 (.D(n3110), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i2.GSR = "ENABLED";
    FD1S3DX count_188__i1 (.D(n3057), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i1.GSR = "ENABLED";
    LUT4 i1952_4_lut_4_lut_then_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[4]), .Z(n3335)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1952_4_lut_4_lut_then_4_lut.init = 16'h7f80;
    LUT4 i15_2_lut (.A(count[0]), .B(count[1]), .Z(n3057)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(o_ws_c), .B(n2959), .Z(o_ws_N_119)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(count[2]), .B(count[4]), .C(count[3]), .D(n3076), 
         .Z(n2959)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_97 (.A(count[0]), .B(count[1]), .Z(n3076)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_97.init = 16'h8888;
    LUT4 i1927_1_lut (.A(count[0]), .Z(n32[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1927_1_lut.init = 16'h5555;
    LUT4 i2150_3_lut_4_lut (.A(n2959), .B(count[2]), .C(count[0]), .D(count[1]), 
         .Z(n3110)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i2150_3_lut_4_lut.init = 16'h1444;
    LUT4 i1952_4_lut_4_lut_else_4_lut (.A(count[4]), .Z(n3334)) /* synthesis lut_function=(A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1952_4_lut_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 count_2__bdd_3_lut_4_lut (.A(count[2]), .B(count[3]), .C(count[0]), 
         .D(count[1]), .Z(n3321)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B))) */ ;
    defparam count_2__bdd_3_lut_4_lut.init = 16'h6ccc;
    \i2s_rx(DATA_WIDTH=32)  i2s_rx_inst (.\o_right_data[1] (\o_right_data[1] ), 
            .o_sck_N_112(o_sck_N_112), .i_sys_rst(i_sys_rst), .\o_right_data[30] (\o_right_data[30] ), 
            .\o_right_data[29] (\o_right_data[29] ), .\o_right_data[28] (\o_right_data[28] ), 
            .\o_right_data[27] (\o_right_data[27] ), .\o_right_data[26] (\o_right_data[26] ), 
            .\o_right_data[25] (\o_right_data[25] ), .\o_right_data[24] (\o_right_data[24] ), 
            .\o_right_data[23] (\o_right_data[23] ), .\o_right_data[22] (\o_right_data[22] ), 
            .\o_right_data[21] (\o_right_data[21] ), .\o_right_data[20] (\o_right_data[20] ), 
            .\o_right_data[19] (\o_right_data[19] ), .\o_right_data[18] (\o_right_data[18] ), 
            .\o_right_data[17] (\o_right_data[17] ), .\o_right_data[16] (\o_right_data[16] ), 
            .\o_right_data[15] (\o_right_data[15] ), .\o_right_data[0] (\o_right_data[0] ), 
            .wr_en(wr_en), .o_ws_c(o_ws_c), .\o_right_data[14] (\o_right_data[14] ), 
            .\o_right_data[13] (\o_right_data[13] ), .\o_right_data[12] (\o_right_data[12] ), 
            .\o_right_data[11] (\o_right_data[11] ), .\o_right_data[10] (\o_right_data[10] ), 
            .\o_right_data[9] (\o_right_data[9] ), .\o_right_data[8] (\o_right_data[8] ), 
            .GND_net(GND_net), .\o_right_data[7] (\o_right_data[7] ), .\o_right_data[6] (\o_right_data[6] ), 
            .\o_right_data[5] (\o_right_data[5] ), .\o_right_data[4] (\o_right_data[4] ), 
            .\o_right_data[3] (\o_right_data[3] ), .\o_right_data[2] (\o_right_data[2] ), 
            .VCC_net(VCC_net), .i_sd_c(i_sd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(69[13] 79[19])
    
endmodule
//
// Verilog Description of module \i2s_rx(DATA_WIDTH=32) 
//

module \i2s_rx(DATA_WIDTH=32)  (\o_right_data[1] , o_sck_N_112, i_sys_rst, 
            \o_right_data[30] , \o_right_data[29] , \o_right_data[28] , 
            \o_right_data[27] , \o_right_data[26] , \o_right_data[25] , 
            \o_right_data[24] , \o_right_data[23] , \o_right_data[22] , 
            \o_right_data[21] , \o_right_data[20] , \o_right_data[19] , 
            \o_right_data[18] , \o_right_data[17] , \o_right_data[16] , 
            \o_right_data[15] , \o_right_data[0] , wr_en, o_ws_c, \o_right_data[14] , 
            \o_right_data[13] , \o_right_data[12] , \o_right_data[11] , 
            \o_right_data[10] , \o_right_data[9] , \o_right_data[8] , 
            GND_net, \o_right_data[7] , \o_right_data[6] , \o_right_data[5] , 
            \o_right_data[4] , \o_right_data[3] , \o_right_data[2] , VCC_net, 
            i_sd_c) /* synthesis syn_module_defined=1 */ ;
    output \o_right_data[1] ;
    input o_sck_N_112;
    input i_sys_rst;
    output \o_right_data[30] ;
    output \o_right_data[29] ;
    output \o_right_data[28] ;
    output \o_right_data[27] ;
    output \o_right_data[26] ;
    output \o_right_data[25] ;
    output \o_right_data[24] ;
    output \o_right_data[23] ;
    output \o_right_data[22] ;
    output \o_right_data[21] ;
    output \o_right_data[20] ;
    output \o_right_data[19] ;
    output \o_right_data[18] ;
    output \o_right_data[17] ;
    output \o_right_data[16] ;
    output \o_right_data[15] ;
    output \o_right_data[0] ;
    output wr_en;
    input o_ws_c;
    output \o_right_data[14] ;
    output \o_right_data[13] ;
    output \o_right_data[12] ;
    output \o_right_data[11] ;
    output \o_right_data[10] ;
    output \o_right_data[9] ;
    output \o_right_data[8] ;
    input GND_net;
    output \o_right_data[7] ;
    output \o_right_data[6] ;
    output \o_right_data[5] ;
    output \o_right_data[4] ;
    output \o_right_data[3] ;
    output \o_right_data[2] ;
    input VCC_net;
    input i_sd_c;
    
    wire o_sck_N_112 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    wire [31:0]o_right_data_31__N_154;
    wire [31:0]right_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(44[33:49])
    wire [31:0]right_data_ones_compl_i_31__N_282;
    
    wire ws_reg_i, sd_i;
    wire [31:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(57[33:56])
    
    wire ws_i, right_vld_i, o_sck_N_112_enable_1, right_vld_i_N_320, 
        right_vld_reg_i, d1_right_vld, n1046, n2897, n2896, n2895, 
        n2894, n2893, n2892, n2891, n2890, n2889, n2888, n2887, 
        n2886, n2885, n2884, n2883;
    
    FD1S3DX right_data_twos_compl_i_i2 (.D(o_right_data_31__N_154[1]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i2.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i24_1_lut (.A(right_data_reg_i[23]), .Z(right_data_ones_compl_i_31__N_282[23])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i24_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i23_1_lut (.A(right_data_reg_i[22]), .Z(right_data_ones_compl_i_31__N_282[22])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i23_1_lut.init = 16'h5555;
    FD1P3DX right_data_reg_i__i1 (.D(sd_i), .SP(ws_reg_i), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i1.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i31 (.D(right_data_ones_compl_i_31__N_282[30]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i31.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i31 (.D(o_right_data_31__N_154[30]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[30] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i31.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i30 (.D(o_right_data_31__N_154[29]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[29] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i30.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i30 (.D(right_data_ones_compl_i_31__N_282[29]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i30.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i1 (.D(right_data_ones_compl_i_31__N_282[0]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i1.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i29 (.D(o_right_data_31__N_154[28]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[28] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i29.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i29 (.D(right_data_ones_compl_i_31__N_282[28]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i29.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i28 (.D(right_data_ones_compl_i_31__N_282[27]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i28.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i28 (.D(o_right_data_31__N_154[27]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[27] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i28.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i27 (.D(o_right_data_31__N_154[26]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[26] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i27.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i27 (.D(right_data_ones_compl_i_31__N_282[26]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i27.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i26 (.D(o_right_data_31__N_154[25]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[25] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i26.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i25 (.D(o_right_data_31__N_154[24]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[24] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i25.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i24 (.D(o_right_data_31__N_154[23]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[23] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i24.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i23 (.D(o_right_data_31__N_154[22]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[22] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i23.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i22 (.D(o_right_data_31__N_154[21]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[21] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i22.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i21 (.D(o_right_data_31__N_154[20]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[20] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i21.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i20 (.D(o_right_data_31__N_154[19]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[19] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i20.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i19 (.D(o_right_data_31__N_154[18]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[18] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i19.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i18 (.D(o_right_data_31__N_154[17]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[17] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i18.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i17 (.D(o_right_data_31__N_154[16]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[16] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i17.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i16 (.D(o_right_data_31__N_154[15]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i16.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i22_1_lut (.A(right_data_reg_i[21]), .Z(right_data_ones_compl_i_31__N_282[21])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i22_1_lut.init = 16'h5555;
    FD1S3DX ws_reg_i_51 (.D(ws_i), .CK(o_sck_N_112), .CD(i_sys_rst), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_51.GSR = "ENABLED";
    FD1P3DX right_vld_i_56 (.D(right_vld_i_N_320), .SP(o_sck_N_112_enable_1), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_vld_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam right_vld_i_56.GSR = "ENABLED";
    FD1S3DX right_vld_reg_i_58 (.D(right_vld_i), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(right_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam right_vld_reg_i_58.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i1 (.D(o_right_data_31__N_154[0]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i1.GSR = "ENABLED";
    FD1S3DX d2_right_vld_66 (.D(d1_right_vld), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(wr_en)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d2_right_vld_66.GSR = "ENABLED";
    FD1S3DX ws_i_50 (.D(o_ws_c), .CK(o_sck_N_112), .CD(i_sys_rst), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_i_50.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i15 (.D(o_right_data_31__N_154[14]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i15.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i14 (.D(o_right_data_31__N_154[13]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i14.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i13 (.D(o_right_data_31__N_154[12]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i13.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i26 (.D(right_data_ones_compl_i_31__N_282[25]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i26.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i12 (.D(o_right_data_31__N_154[11]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i12.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i21_1_lut (.A(right_data_reg_i[20]), .Z(right_data_ones_compl_i_31__N_282[20])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i21_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i20_1_lut (.A(right_data_reg_i[19]), .Z(right_data_ones_compl_i_31__N_282[19])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i20_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i31_1_lut (.A(right_data_reg_i[30]), .Z(right_data_ones_compl_i_31__N_282[30])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i31_1_lut.init = 16'h5555;
    LUT4 i1359_2_lut (.A(right_vld_i), .B(right_vld_reg_i), .Z(n1046)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam i1359_2_lut.init = 16'h2222;
    LUT4 right_data_reg_i_31__I_0_i19_1_lut (.A(right_data_reg_i[18]), .Z(right_data_ones_compl_i_31__N_282[18])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i19_1_lut.init = 16'h5555;
    FD1S3DX right_data_ones_compl_i_i25 (.D(right_data_ones_compl_i_31__N_282[24]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i25.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i24 (.D(right_data_ones_compl_i_31__N_282[23]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i24.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i23 (.D(right_data_ones_compl_i_31__N_282[22]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i23.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i22 (.D(right_data_ones_compl_i_31__N_282[21]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i22.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i21 (.D(right_data_ones_compl_i_31__N_282[20]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i21.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i20 (.D(right_data_ones_compl_i_31__N_282[19]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i20.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i19 (.D(right_data_ones_compl_i_31__N_282[18]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i19.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i18 (.D(right_data_ones_compl_i_31__N_282[17]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i18.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i17 (.D(right_data_ones_compl_i_31__N_282[16]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i17.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i16 (.D(right_data_ones_compl_i_31__N_282[15]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i16.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i15 (.D(right_data_ones_compl_i_31__N_282[14]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i15.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i18_1_lut (.A(right_data_reg_i[17]), .Z(right_data_ones_compl_i_31__N_282[17])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i18_1_lut.init = 16'h5555;
    FD1S3DX right_data_ones_compl_i_i14 (.D(right_data_ones_compl_i_31__N_282[13]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i13 (.D(right_data_ones_compl_i_31__N_282[12]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i12 (.D(right_data_ones_compl_i_31__N_282[11]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i11 (.D(right_data_ones_compl_i_31__N_282[10]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i10 (.D(right_data_ones_compl_i_31__N_282[9]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i9 (.D(right_data_ones_compl_i_31__N_282[8]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i8 (.D(right_data_ones_compl_i_31__N_282[7]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i7 (.D(right_data_ones_compl_i_31__N_282[6]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i6 (.D(right_data_ones_compl_i_31__N_282[5]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i5 (.D(right_data_ones_compl_i_31__N_282[4]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i5.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i4 (.D(right_data_ones_compl_i_31__N_282[3]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i3 (.D(right_data_ones_compl_i_31__N_282[2]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i11 (.D(o_right_data_31__N_154[10]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i11.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i2 (.D(right_data_ones_compl_i_31__N_282[1]), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i2.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i17_1_lut (.A(right_data_reg_i[16]), .Z(right_data_ones_compl_i_31__N_282[16])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i17_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i16_1_lut (.A(right_data_reg_i[15]), .Z(right_data_ones_compl_i_31__N_282[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i16_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i15_1_lut (.A(right_data_reg_i[14]), .Z(right_data_ones_compl_i_31__N_282[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i15_1_lut.init = 16'h5555;
    FD1S3DX right_data_twos_compl_i_i10 (.D(o_right_data_31__N_154[9]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i10.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i31 (.D(right_data_reg_i[29]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i31.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i9 (.D(o_right_data_31__N_154[8]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i9.GSR = "ENABLED";
    FD1S3DX d1_right_vld_65 (.D(n1046), .CK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(d1_right_vld));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d1_right_vld_65.GSR = "ENABLED";
    CCU2D add_152_31 (.A0(right_data_ones_compl_i[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2897), .S0(o_right_data_31__N_154[29]), 
          .S1(o_right_data_31__N_154[30]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_31.INIT0 = 16'h5aaa;
    defparam add_152_31.INIT1 = 16'h5aaa;
    defparam add_152_31.INJECT1_0 = "NO";
    defparam add_152_31.INJECT1_1 = "NO";
    LUT4 right_data_reg_i_31__I_0_i14_1_lut (.A(right_data_reg_i[13]), .Z(right_data_ones_compl_i_31__N_282[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i14_1_lut.init = 16'h5555;
    FD1P3DX right_data_reg_i__i30 (.D(right_data_reg_i[28]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i30.GSR = "ENABLED";
    CCU2D add_152_29 (.A0(right_data_ones_compl_i[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2896), .COUT(n2897), .S0(o_right_data_31__N_154[27]), 
          .S1(o_right_data_31__N_154[28]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_29.INIT0 = 16'h5aaa;
    defparam add_152_29.INIT1 = 16'h5aaa;
    defparam add_152_29.INJECT1_0 = "NO";
    defparam add_152_29.INJECT1_1 = "NO";
    CCU2D add_152_27 (.A0(right_data_ones_compl_i[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2895), .COUT(n2896), .S0(o_right_data_31__N_154[25]), 
          .S1(o_right_data_31__N_154[26]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_27.INIT0 = 16'h5aaa;
    defparam add_152_27.INIT1 = 16'h5aaa;
    defparam add_152_27.INJECT1_0 = "NO";
    defparam add_152_27.INJECT1_1 = "NO";
    FD1P3DX right_data_reg_i__i29 (.D(right_data_reg_i[27]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i29.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i28 (.D(right_data_reg_i[26]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i28.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i27 (.D(right_data_reg_i[25]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i27.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i26 (.D(right_data_reg_i[24]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i26.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i25 (.D(right_data_reg_i[23]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i25.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i24 (.D(right_data_reg_i[22]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i24.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i23 (.D(right_data_reg_i[21]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i23.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i22 (.D(right_data_reg_i[20]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i22.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i21 (.D(right_data_reg_i[19]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i21.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i20 (.D(right_data_reg_i[18]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i20.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i8 (.D(o_right_data_31__N_154[7]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i8.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i19 (.D(right_data_reg_i[17]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i19.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i18 (.D(right_data_reg_i[16]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i18.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i17 (.D(right_data_reg_i[15]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i17.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i16 (.D(right_data_reg_i[14]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i16.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i15 (.D(right_data_reg_i[13]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i15.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i14 (.D(right_data_reg_i[12]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i14.GSR = "ENABLED";
    CCU2D add_152_25 (.A0(right_data_ones_compl_i[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2894), .COUT(n2895), .S0(o_right_data_31__N_154[23]), 
          .S1(o_right_data_31__N_154[24]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_25.INIT0 = 16'h5aaa;
    defparam add_152_25.INIT1 = 16'h5aaa;
    defparam add_152_25.INJECT1_0 = "NO";
    defparam add_152_25.INJECT1_1 = "NO";
    FD1P3DX right_data_reg_i__i13 (.D(right_data_reg_i[11]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i13.GSR = "ENABLED";
    CCU2D add_152_23 (.A0(right_data_ones_compl_i[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2893), .COUT(n2894), .S0(o_right_data_31__N_154[21]), 
          .S1(o_right_data_31__N_154[22]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_23.INIT0 = 16'h5aaa;
    defparam add_152_23.INIT1 = 16'h5aaa;
    defparam add_152_23.INJECT1_0 = "NO";
    defparam add_152_23.INJECT1_1 = "NO";
    FD1P3DX right_data_reg_i__i12 (.D(right_data_reg_i[10]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i12.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i11 (.D(right_data_reg_i[9]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i11.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i10 (.D(right_data_reg_i[8]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i10.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i9 (.D(right_data_reg_i[7]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i9.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i8 (.D(right_data_reg_i[6]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i8.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i7 (.D(o_right_data_31__N_154[6]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i7.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i7 (.D(right_data_reg_i[5]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i7.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i6 (.D(right_data_reg_i[4]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i6.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i5 (.D(right_data_reg_i[3]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i5.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i4 (.D(right_data_reg_i[2]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i4.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i3 (.D(right_data_reg_i[1]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i3.GSR = "ENABLED";
    FD1P3DX right_data_reg_i__i2 (.D(right_data_reg_i[0]), .SP(ws_reg_i), 
            .CK(o_sck_N_112), .CD(i_sys_rst), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i__i2.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i6 (.D(o_right_data_31__N_154[5]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i6.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i5 (.D(o_right_data_31__N_154[4]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[4] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i5.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i4 (.D(o_right_data_31__N_154[3]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i4.GSR = "ENABLED";
    CCU2D add_152_21 (.A0(right_data_ones_compl_i[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2892), .COUT(n2893), .S0(o_right_data_31__N_154[19]), 
          .S1(o_right_data_31__N_154[20]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_21.INIT0 = 16'h5aaa;
    defparam add_152_21.INIT1 = 16'h5aaa;
    defparam add_152_21.INJECT1_0 = "NO";
    defparam add_152_21.INJECT1_1 = "NO";
    CCU2D add_152_19 (.A0(right_data_ones_compl_i[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2891), .COUT(n2892), .S0(o_right_data_31__N_154[17]), 
          .S1(o_right_data_31__N_154[18]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_19.INIT0 = 16'h5aaa;
    defparam add_152_19.INIT1 = 16'h5aaa;
    defparam add_152_19.INJECT1_0 = "NO";
    defparam add_152_19.INJECT1_1 = "NO";
    CCU2D add_152_17 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2890), .COUT(n2891), .S0(o_right_data_31__N_154[15]), 
          .S1(o_right_data_31__N_154[16]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_17.INIT0 = 16'h5aaa;
    defparam add_152_17.INIT1 = 16'h5aaa;
    defparam add_152_17.INJECT1_0 = "NO";
    defparam add_152_17.INJECT1_1 = "NO";
    FD1S3DX right_data_twos_compl_i_i3 (.D(o_right_data_31__N_154[2]), .CK(o_sck_N_112), 
            .CD(i_sys_rst), .Q(\o_right_data[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i3.GSR = "ENABLED";
    CCU2D add_152_15 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2889), .COUT(n2890), .S0(o_right_data_31__N_154[13]), 
          .S1(o_right_data_31__N_154[14]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_15.INIT0 = 16'h5aaa;
    defparam add_152_15.INIT1 = 16'h5aaa;
    defparam add_152_15.INJECT1_0 = "NO";
    defparam add_152_15.INJECT1_1 = "NO";
    CCU2D add_152_13 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2888), .COUT(n2889), .S0(o_right_data_31__N_154[11]), 
          .S1(o_right_data_31__N_154[12]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_13.INIT0 = 16'h5aaa;
    defparam add_152_13.INIT1 = 16'h5aaa;
    defparam add_152_13.INJECT1_0 = "NO";
    defparam add_152_13.INJECT1_1 = "NO";
    CCU2D add_152_11 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2887), .COUT(n2888), .S0(o_right_data_31__N_154[9]), 
          .S1(o_right_data_31__N_154[10]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_11.INIT0 = 16'h5aaa;
    defparam add_152_11.INIT1 = 16'h5aaa;
    defparam add_152_11.INJECT1_0 = "NO";
    defparam add_152_11.INJECT1_1 = "NO";
    CCU2D add_152_9 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2886), .COUT(n2887), .S0(o_right_data_31__N_154[7]), 
          .S1(o_right_data_31__N_154[8]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_9.INIT0 = 16'h5aaa;
    defparam add_152_9.INIT1 = 16'h5aaa;
    defparam add_152_9.INJECT1_0 = "NO";
    defparam add_152_9.INJECT1_1 = "NO";
    CCU2D add_152_7 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2885), .COUT(n2886), .S0(o_right_data_31__N_154[5]), 
          .S1(o_right_data_31__N_154[6]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_7.INIT0 = 16'h5aaa;
    defparam add_152_7.INIT1 = 16'h5aaa;
    defparam add_152_7.INJECT1_0 = "NO";
    defparam add_152_7.INJECT1_1 = "NO";
    CCU2D add_152_5 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2884), .COUT(n2885), .S0(o_right_data_31__N_154[3]), 
          .S1(o_right_data_31__N_154[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_5.INIT0 = 16'h5aaa;
    defparam add_152_5.INIT1 = 16'h5aaa;
    defparam add_152_5.INJECT1_0 = "NO";
    defparam add_152_5.INJECT1_1 = "NO";
    CCU2D add_152_3 (.A0(right_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2883), .COUT(n2884), .S0(o_right_data_31__N_154[1]), 
          .S1(o_right_data_31__N_154[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_3.INIT0 = 16'h5aaa;
    defparam add_152_3.INIT1 = 16'h5aaa;
    defparam add_152_3.INJECT1_0 = "NO";
    defparam add_152_3.INJECT1_1 = "NO";
    LUT4 right_data_reg_i_31__I_0_i13_1_lut (.A(right_data_reg_i[12]), .Z(right_data_ones_compl_i_31__N_282[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i13_1_lut.init = 16'h5555;
    CCU2D add_152_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(right_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2883), .S1(o_right_data_31__N_154[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_152_1.INIT0 = 16'hF000;
    defparam add_152_1.INIT1 = 16'h5555;
    defparam add_152_1.INJECT1_0 = "NO";
    defparam add_152_1.INJECT1_1 = "NO";
    LUT4 right_data_reg_i_31__I_0_i12_1_lut (.A(right_data_reg_i[11]), .Z(right_data_ones_compl_i_31__N_282[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i12_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i11_1_lut (.A(right_data_reg_i[10]), .Z(right_data_ones_compl_i_31__N_282[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i11_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i10_1_lut (.A(right_data_reg_i[9]), .Z(right_data_ones_compl_i_31__N_282[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i10_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i9_1_lut (.A(right_data_reg_i[8]), .Z(right_data_ones_compl_i_31__N_282[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i9_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i8_1_lut (.A(right_data_reg_i[7]), .Z(right_data_ones_compl_i_31__N_282[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i8_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i7_1_lut (.A(right_data_reg_i[6]), .Z(right_data_ones_compl_i_31__N_282[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i7_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i1_1_lut (.A(right_data_reg_i[0]), .Z(right_data_ones_compl_i_31__N_282[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i1_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i29_1_lut (.A(right_data_reg_i[28]), .Z(right_data_ones_compl_i_31__N_282[28])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i29_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i6_1_lut (.A(right_data_reg_i[5]), .Z(right_data_ones_compl_i_31__N_282[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i6_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i30_1_lut (.A(right_data_reg_i[29]), .Z(right_data_ones_compl_i_31__N_282[29])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i30_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i28_1_lut (.A(right_data_reg_i[27]), .Z(right_data_ones_compl_i_31__N_282[27])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i28_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i5_1_lut (.A(right_data_reg_i[4]), .Z(right_data_ones_compl_i_31__N_282[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i5_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i4_1_lut (.A(right_data_reg_i[3]), .Z(right_data_ones_compl_i_31__N_282[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i4_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i27_1_lut (.A(right_data_reg_i[26]), .Z(right_data_ones_compl_i_31__N_282[26])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i27_1_lut.init = 16'h5555;
    LUT4 i15_2_lut (.A(ws_reg_i), .B(ws_i), .Z(o_sck_N_112_enable_1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 right_data_reg_i_31__I_0_i3_1_lut (.A(right_data_reg_i[2]), .Z(right_data_ones_compl_i_31__N_282[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i3_1_lut.init = 16'h5555;
    LUT4 ws_reg_i_I_0_2_lut (.A(ws_reg_i), .B(ws_i), .Z(right_vld_i_N_320)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[16:38])
    defparam ws_reg_i_I_0_2_lut.init = 16'h2222;
    LUT4 right_data_reg_i_31__I_0_i26_1_lut (.A(right_data_reg_i[25]), .Z(right_data_ones_compl_i_31__N_282[25])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i26_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i2_1_lut (.A(right_data_reg_i[1]), .Z(right_data_ones_compl_i_31__N_282[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i2_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i25_1_lut (.A(right_data_reg_i[24]), .Z(right_data_ones_compl_i_31__N_282[24])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i25_1_lut.init = 16'h5555;
    IFS1P3DX sd_i_52 (.D(i_sd_c), .SP(VCC_net), .SCLK(o_sck_N_112), .CD(i_sys_rst), 
            .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam sd_i_52.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module zcr
//

module zcr (\zcr_count_left[2] , o_ws_c, o_ws_c_enable_45, \window_count[3] , 
            \window_count[0] , i_sys_rst, \zcr_count_left[3] , \subMean_left_out[8] , 
            \subMean_left_out[11] , \subMean_left_out[9] , n77, \zcr_count_left[5] , 
            \subMean_left_out[10] , \subMean_left_out[6] , \subMean_left_out[7] , 
            n20, horizontal_out_c_15, n1920, zcr_valid_left, Rst_L_N_940, 
            GND_net, o_ws_c_enable_38, n2573, n53, \zcr_count_left[4] , 
            \zcr_count_temp[0] ) /* synthesis syn_module_defined=1 */ ;
    output \zcr_count_left[2] ;
    input o_ws_c;
    input o_ws_c_enable_45;
    output \window_count[3] ;
    output \window_count[0] ;
    input i_sys_rst;
    output \zcr_count_left[3] ;
    input \subMean_left_out[8] ;
    input \subMean_left_out[11] ;
    input \subMean_left_out[9] ;
    output n77;
    output \zcr_count_left[5] ;
    input \subMean_left_out[10] ;
    input \subMean_left_out[6] ;
    input \subMean_left_out[7] ;
    input n20;
    input horizontal_out_c_15;
    output n1920;
    output zcr_valid_left;
    input Rst_L_N_940;
    input GND_net;
    input o_ws_c_enable_38;
    input n2573;
    output n53;
    output \zcr_count_left[4] ;
    output \zcr_count_temp[0] ;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[32:36])
    wire [5:0]zcr_count_temp;   // c:/users/sec29/desktop/i2s_iot/zcr.v(18[11:25])
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    
    wire o_ws_c_enable_40;
    wire [3:0]n27;
    wire [15:0]\zcr_window[7] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    wire [15:0]\zcr_window[3] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire n3135, n6, n1945, n1899, n3323, current_N_650, n51, n1767, 
        o_ws_c_enable_48, n1757;
    wire [15:0]\zcr_window[2] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_25, not_previous, o_ws_c_enable_30, not_previous_N_660, 
        o_ws_c_enable_41;
    wire [15:0]\zcr_window[6] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire n3322, current, n2853, n1749, o_ws_c_enable_42, o_ws_c_enable_51;
    wire [15:0]\zcr_window[5] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    wire [15:0]\zcr_window[4] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_43, n2852, n1753, n1751, n2851, n1755;
    wire [15:0]\zcr_window[1] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_44, n505, n1759, n2882, n1919, n2881;
    wire [15:0]\zcr_window[0] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_46, n1900, n3136, n5, n3;
    
    FD1P3AX zcr_count__i1 (.D(zcr_count_temp[2]), .SP(o_ws_c_enable_45), 
            .CK(o_ws_c), .Q(\zcr_count_left[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i1.GSR = "ENABLED";
    LUT4 i952_3_lut_4_lut (.A(\window_count[3] ), .B(\window_count[0] ), 
         .C(window_count[1]), .D(window_count[2]), .Z(o_ws_c_enable_40)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam i952_3_lut_4_lut.init = 16'hbaaa;
    FD1S3DX window_count_193_194__i4 (.D(n27[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194__i4.GSR = "ENABLED";
    LUT4 i2169_3_lut (.A(\zcr_window[7] [15]), .B(\zcr_window[3] [15]), 
         .C(window_count[2]), .Z(n3135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2169_3_lut.init = 16'hcaca;
    FD1S3DX window_count_193_194__i3 (.D(n27[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194__i3.GSR = "ENABLED";
    FD1S3DX window_count_193_194__i2 (.D(n27[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194__i2.GSR = "ENABLED";
    FD1P3AX zcr_count__i2 (.D(zcr_count_temp[3]), .SP(o_ws_c_enable_45), 
            .CK(o_ws_c), .Q(\zcr_count_left[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i2.GSR = "ENABLED";
    LUT4 i81_4_lut (.A(\subMean_left_out[8] ), .B(\subMean_left_out[11] ), 
         .C(n6), .D(\subMean_left_out[9] ), .Z(n77)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(39[14:30])
    defparam i81_4_lut.init = 16'hccc8;
    FD1S3DX window_count_193_194__i1 (.D(n27[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194__i1.GSR = "ENABLED";
    FD1P3AX zcr_count__i4 (.D(zcr_count_temp[5]), .SP(o_ws_c_enable_45), 
            .CK(o_ws_c), .Q(\zcr_count_left[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i4.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(\window_count[0] ), .B(window_count[2]), .C(window_count[1]), 
         .Z(n1945)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 n1899_bdd_3_lut (.A(n1899), .B(n3323), .C(\window_count[0] ), 
         .Z(current_N_650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1899_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(window_count[2]), .B(window_count[1]), .Z(n51)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(\subMean_left_out[10] ), .B(\subMean_left_out[6] ), 
         .C(\subMean_left_out[7] ), .D(n20), .Z(n6)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(39[14:30])
    defparam i2_4_lut.init = 16'hfaea;
    LUT4 i1334_2_lut (.A(horizontal_out_c_15), .B(\window_count[3] ), .Z(n1767)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam i1334_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_89 (.A(window_count[1]), .B(window_count[2]), .Z(n1920)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_2_lut_adj_89.init = 16'h8888;
    FD1P3DX zcr_count_temp__i1 (.D(n1757), .SP(o_ws_c_enable_48), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i1.GSR = "ENABLED";
    FD1P3DX \zcr_window_2[[15__212  (.D(n1767), .SP(o_ws_c_enable_25), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[2] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_2[[15__212 .GSR = "ENABLED";
    FD1P3AX zcr_valid_178 (.D(\window_count[3] ), .SP(Rst_L_N_940), .CK(o_ws_c), 
            .Q(zcr_valid_left));   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_valid_178.GSR = "ENABLED";
    FD1P3AX not_previous_327 (.D(not_previous_N_660), .SP(o_ws_c_enable_30), 
            .CK(o_ws_c), .Q(not_previous));   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam not_previous_327.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(window_count[1]), .B(window_count[2]), .C(\window_count[0] ), 
         .D(\window_count[3] ), .Z(o_ws_c_enable_41)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut.init = 16'hff40;
    LUT4 \zcr_window_2[[15__bdd_3_lut  (.A(\zcr_window[2] [15]), .B(\zcr_window[6] [15]), 
         .C(window_count[2]), .Z(n3322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \zcr_window_2[[15__bdd_3_lut .init = 16'hcaca;
    FD1P3AX current_326 (.D(current_N_650), .SP(o_ws_c_enable_30), .CK(o_ws_c), 
            .Q(current));   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam current_326.GSR = "ENABLED";
    CCU2D add_337_7 (.A0(n51), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[5]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2853), .S0(n1749));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_7.INIT0 = 16'hfe00;
    defparam add_337_7.INIT1 = 16'h0000;
    defparam add_337_7.INJECT1_0 = "NO";
    defparam add_337_7.INJECT1_1 = "NO";
    FD1P3AX \zcr_window_7[[15__294  (.D(horizontal_out_c_15), .SP(o_ws_c_enable_38), 
            .CK(o_ws_c), .Q(\zcr_window[7] [15]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_7[[15__294 .GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_90 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_42)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_90.init = 16'hff04;
    FD1P3DX \zcr_window_6[[15__276  (.D(n1767), .SP(o_ws_c_enable_40), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[6] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_6[[15__276 .GSR = "ENABLED";
    LUT4 window_count_1__bdd_4_lut (.A(window_count[1]), .B(\window_count[3] ), 
         .C(window_count[2]), .D(\window_count[0] ), .Z(o_ws_c_enable_51)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam window_count_1__bdd_4_lut.init = 16'h3235;
    FD1P3DX \zcr_window_5[[15__260  (.D(n1767), .SP(o_ws_c_enable_41), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[5] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_5[[15__260 .GSR = "ENABLED";
    FD1P3DX \zcr_window_4[[15__244  (.D(n1767), .SP(o_ws_c_enable_42), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[4] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_4[[15__244 .GSR = "ENABLED";
    FD1P3DX \zcr_window_3[[15__228  (.D(n1767), .SP(o_ws_c_enable_43), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[3] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_3[[15__228 .GSR = "ENABLED";
    CCU2D add_337_5 (.A0(n51), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[3]), .A1(n51), .B1(\window_count[0] ), .C1(\window_count[3] ), 
          .D1(zcr_count_temp[4]), .CIN(n2852), .COUT(n2853), .S0(n1753), 
          .S1(n1751));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_5.INIT0 = 16'hfe00;
    defparam add_337_5.INIT1 = 16'hfe00;
    defparam add_337_5.INJECT1_0 = "NO";
    defparam add_337_5.INJECT1_1 = "NO";
    CCU2D add_337_3 (.A0(n51), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[1]), .A1(n51), .B1(\window_count[0] ), .C1(\window_count[3] ), 
          .D1(zcr_count_temp[2]), .CIN(n2851), .COUT(n2852), .S0(n1757), 
          .S1(n1755));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_3.INIT0 = 16'hfe00;
    defparam add_337_3.INIT1 = 16'hfe00;
    defparam add_337_3.INJECT1_0 = "NO";
    defparam add_337_3.INJECT1_1 = "NO";
    FD1P3DX \zcr_window_1[[15__196  (.D(n1767), .SP(o_ws_c_enable_44), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[1] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_1[[15__196 .GSR = "ENABLED";
    CCU2D add_337_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2573), .B1(\window_count[3] ), .C1(n53), .D1(n505), .COUT(n2851), 
          .S1(n1759));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_1.INIT0 = 16'hF000;
    defparam add_337_1.INIT1 = 16'h56aa;
    defparam add_337_1.INJECT1_0 = "NO";
    defparam add_337_1.INJECT1_1 = "NO";
    FD1P3AX zcr_count__i3 (.D(zcr_count_temp[4]), .SP(o_ws_c_enable_45), 
            .CK(o_ws_c), .Q(\zcr_count_left[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i3.GSR = "ENABLED";
    CCU2D window_count_193_194_add_4_5 (.A0(\window_count[3] ), .B0(n1919), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2882), .S0(n27[3]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194_add_4_5.INIT0 = 16'h7888;
    defparam window_count_193_194_add_4_5.INIT1 = 16'h0000;
    defparam window_count_193_194_add_4_5.INJECT1_0 = "NO";
    defparam window_count_193_194_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_193_194_add_4_3 (.A0(window_count[1]), .B0(\window_count[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2881), .COUT(n2882), .S0(n27[1]), 
          .S1(n27[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194_add_4_3.INIT0 = 16'hd222;
    defparam window_count_193_194_add_4_3.INIT1 = 16'hd222;
    defparam window_count_193_194_add_4_3.INJECT1_0 = "NO";
    defparam window_count_193_194_add_4_3.INJECT1_1 = "NO";
    CCU2D window_count_193_194_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\window_count[0] ), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2881), .S1(n27[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_193_194_add_4_1.INIT0 = 16'hF000;
    defparam window_count_193_194_add_4_1.INIT1 = 16'hd111;
    defparam window_count_193_194_add_4_1.INJECT1_0 = "NO";
    defparam window_count_193_194_add_4_1.INJECT1_1 = "NO";
    FD1P3DX \zcr_window_0[[15__180  (.D(n1767), .SP(o_ws_c_enable_46), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[0] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_0[[15__180 .GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_91 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_25)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_91.init = 16'hff02;
    FD1P3DX zcr_count_temp__i0 (.D(n1759), .SP(o_ws_c_enable_48), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_count_temp[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i0.GSR = "ENABLED";
    FD1P3DX zcr_count_temp__i4 (.D(n1751), .SP(o_ws_c_enable_48), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i4.GSR = "ENABLED";
    PFUMX i2264 (.BLUT(n1900), .ALUT(n3322), .C0(window_count[1]), .Z(n3323));
    FD1P3DX zcr_count_temp__i2 (.D(n1755), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i2.GSR = "ENABLED";
    FD1P3DX zcr_count_temp__i5 (.D(n1749), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i5.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_92 (.A(n1945), .B(n53), .C(\window_count[3] ), .Z(o_ws_c_enable_48)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam i1_3_lut_adj_92.init = 16'h3b3b;
    PFUMX i2171 (.BLUT(n3135), .ALUT(n3136), .C0(window_count[1]), .Z(n1899));
    LUT4 i162_2_lut (.A(current), .B(not_previous), .Z(n505)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(69[8:31])
    defparam i162_2_lut.init = 16'h9999;
    LUT4 i1_3_lut_4_lut_adj_93 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_43)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_93.init = 16'hff20;
    LUT4 i1_2_lut_3_lut (.A(\window_count[0] ), .B(window_count[2]), .C(window_count[1]), 
         .Z(n53)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_1_lut (.A(\window_count[3] ), .Z(n1919)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_94 (.A(Rst_L_N_940), .B(n1945), .C(n53), .D(\window_count[3] ), 
         .Z(o_ws_c_enable_30)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i2_4_lut_adj_94.init = 16'h0a88;
    LUT4 i1075_3_lut (.A(n5), .B(n1899), .C(\window_count[0] ), .Z(not_previous_N_660)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1075_3_lut.init = 16'h3535;
    LUT4 i1_2_lut_adj_95 (.A(\window_count[3] ), .B(n53), .Z(o_ws_c_enable_46)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_95.init = 16'hbbbb;
    LUT4 i1073_3_lut (.A(n3), .B(n1900), .C(window_count[1]), .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1073_3_lut.init = 16'hcaca;
    LUT4 i1071_3_lut (.A(\zcr_window[6] [15]), .B(\zcr_window[2] [15]), 
         .C(window_count[2]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1071_3_lut.init = 16'hcaca;
    LUT4 i1065_3_lut (.A(\zcr_window[0] [15]), .B(\zcr_window[4] [15]), 
         .C(window_count[2]), .Z(n1900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1065_3_lut.init = 16'hcaca;
    FD1P3DX zcr_count_temp__i3 (.D(n1753), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=136, LSE_RLINE=142 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_96 (.A(\window_count[3] ), .B(\window_count[0] ), 
         .C(window_count[2]), .D(window_count[1]), .Z(o_ws_c_enable_44)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_96.init = 16'haaae;
    LUT4 i2170_3_lut (.A(\zcr_window[1] [15]), .B(\zcr_window[5] [15]), 
         .C(window_count[2]), .Z(n3136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2170_3_lut.init = 16'hcaca;
    
endmodule
