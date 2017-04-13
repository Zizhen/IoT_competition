// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Wed Apr 12 20:58:17 2017
//
// Verilog Description of module top
//

module top (rst_n, mclk, i_sd, o_sck, o_ws, horizontal_out, vertical_out, 
            mclk2, i_sd2, o_sck2, o_ws2, SDA, SCL, glass, shout, 
            beam_forming_valid, trigger) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(1[8:11])
    input rst_n;   // c:/users/sec29/desktop/i2s_iot/top.v(24[29:34])
    output mclk;   // c:/users/sec29/desktop/i2s_iot/top.v(33[29:33])
    input i_sd;   // c:/users/sec29/desktop/i2s_iot/top.v(29[32:36])
    output o_sck;   // c:/users/sec29/desktop/i2s_iot/top.v(25[32:37])
    output o_ws;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    output [15:0]horizontal_out;   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    output [15:0]vertical_out;   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    output mclk2;   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:34])
    input i_sd2;   // c:/users/sec29/desktop/i2s_iot/top.v(30[29:34])
    output o_sck2;   // c:/users/sec29/desktop/i2s_iot/top.v(26[17:23])
    output o_ws2;   // c:/users/sec29/desktop/i2s_iot/top.v(27[29:34])
    output SDA /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(36[32:35])
    output SCL /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(36[36:39])
    output glass;   // c:/users/sec29/desktop/i2s_iot/top.v(38[12:17])
    output shout;   // c:/users/sec29/desktop/i2s_iot/top.v(38[18:23])
    output beam_forming_valid;   // c:/users/sec29/desktop/i2s_iot/top.v(38[24:42])
    input trigger;   // c:/users/sec29/desktop/i2s_iot/top.v(23[29:36])
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(25[32:37])
    wire o_sck2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[17:23])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(33[29:33])
    wire mclk2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:34])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(79[30:37])
    wire o_sck_N_80 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_sck_N_80_adj_8871 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire GND_net, VCC_net, rst_n_c, o_ws2_c, i_sd_c;
    wire [15:0]subMean_left_out;   // c:/users/sec29/desktop/i2s_iot/top.v(41[14:30])
    
    wire horizontal_out_c_15, horizontal_out_c_14, horizontal_out_c_13, 
        horizontal_out_c_12, horizontal_out_c_11, horizontal_out_c_10, 
        horizontal_out_c_9, horizontal_out_c_8, horizontal_out_c_7, horizontal_out_c_6, 
        horizontal_out_c_5, horizontal_out_c_4, horizontal_out_c_3, horizontal_out_c_2, 
        horizontal_out_c_1, horizontal_out_c_0;
    wire [5:0]zcr_count_left;   // c:/users/sec29/desktop/i2s_iot/top.v(43[29:43])
    
    wire zcr_valid_left;
    wire [15:0]fifo_in1;   // c:/users/sec29/desktop/i2s_iot/top.v(46[14:22])
    
    wire wr_en;
    wire [30:0]ste_left;   // c:/users/sec29/desktop/i2s_iot/top.v(53[15:23])
    
    wire rst_n_N_68, shout_c, i_sys_rst, lock, lock2, ste_left_valid, 
        subMean_left_valid;
    wire [5:0]zcr_count_temp;   // c:/users/sec29/desktop/i2s_iot/zcr.v(18[11:25])
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    
    wire n46, o_ws_c_enable_41;
    wire [6:0]window_count_adj_8887;   // c:/users/sec29/desktop/i2s_iot/ste.v(18[11:23])
    
    wire n848, Rst_L_N_8349, o_ws_c_enable_34, n1797, n3358, n2459;
    
    VHI i2 (.Z(VCC_net));
    fifo_horizontal horizontal_port (.fifo_in1({fifo_in1}), .o_sck_c(o_sck_c), 
            .o_ws_c(o_ws_c), .wr_en(wr_en), .VCC_net(VCC_net), .i_sys_rst(i_sys_rst), 
            .GND_net(GND_net), .horizontal_out_c_15(horizontal_out_c_15), 
            .horizontal_out_c_14(horizontal_out_c_14), .horizontal_out_c_13(horizontal_out_c_13), 
            .horizontal_out_c_12(horizontal_out_c_12), .horizontal_out_c_11(horizontal_out_c_11), 
            .horizontal_out_c_10(horizontal_out_c_10), .horizontal_out_c_9(horizontal_out_c_9), 
            .horizontal_out_c_8(horizontal_out_c_8), .horizontal_out_c_7(horizontal_out_c_7), 
            .horizontal_out_c_6(horizontal_out_c_6), .horizontal_out_c_5(horizontal_out_c_5), 
            .horizontal_out_c_4(horizontal_out_c_4), .horizontal_out_c_3(horizontal_out_c_3), 
            .horizontal_out_c_2(horizontal_out_c_2), .horizontal_out_c_1(horizontal_out_c_1), 
            .horizontal_out_c_0(horizontal_out_c_0)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(124[17] 126[31])
    pll1 my_pll1 (.osc_clk(osc_clk), .rst_n_N_68(rst_n_N_68), .mclk_c(mclk_c), 
         .lock(lock), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(82[10] 89[3])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "16.63";
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // c:/users/sec29/desktop/i2s_iot/top.v(29[32:36])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/sec29/desktop/i2s_iot/top.v(24[29:34])
    OB beam_forming_valid_pad (.I(GND_net), .O(beam_forming_valid));   // c:/users/sec29/desktop/i2s_iot/top.v(38[24:42])
    OB shout_pad (.I(shout_c), .O(shout));   // c:/users/sec29/desktop/i2s_iot/top.v(38[18:23])
    OB glass_pad (.I(shout_c), .O(glass));   // c:/users/sec29/desktop/i2s_iot/top.v(38[12:17])
    OBZ SCL_pad (.I(GND_net), .T(VCC_net), .O(SCL));   // c:/users/sec29/desktop/i2s_iot/i2c_top.v(174[8:11])
    OBZ SDA_pad (.I(GND_net), .T(VCC_net), .O(SDA));   // c:/users/sec29/desktop/i2s_iot/i2c_top.v(176[8:11])
    OB o_ws2_pad (.I(o_ws2_c), .O(o_ws2));   // c:/users/sec29/desktop/i2s_iot/top.v(27[29:34])
    OB o_sck2_pad (.I(o_sck2_c), .O(o_sck2));   // c:/users/sec29/desktop/i2s_iot/top.v(26[17:23])
    OB mclk2_pad (.I(mclk2_c), .O(mclk2));   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:34])
    OB vertical_out_pad_0 (.I(GND_net), .O(vertical_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_1 (.I(GND_net), .O(vertical_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_2 (.I(GND_net), .O(vertical_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_3 (.I(GND_net), .O(vertical_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_4 (.I(GND_net), .O(vertical_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    clk_div div8 (.o_sck_c(o_sck_c), .mclk_c(mclk_c), .i_sys_rst(i_sys_rst), 
            .o_sck_N_80(o_sck_N_80)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(91[10:62])
    OB vertical_out_pad_8 (.I(GND_net), .O(vertical_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    LUT4 i1740_3_lut_4_lut (.A(zcr_count_temp[0]), .B(window_count[3]), 
         .C(window_count[0]), .D(n46), .Z(n2459)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam i1740_3_lut_4_lut.init = 16'haaa8;
    OB vertical_out_pad_9 (.I(GND_net), .O(vertical_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_10 (.I(GND_net), .O(vertical_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_11 (.I(GND_net), .O(vertical_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_12 (.I(GND_net), .O(vertical_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_13 (.I(GND_net), .O(vertical_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_14 (.I(GND_net), .O(vertical_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB vertical_out_pad_15 (.I(GND_net), .O(vertical_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB horizontal_out_pad_0 (.I(horizontal_out_c_0), .O(horizontal_out[0]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_1 (.I(horizontal_out_c_1), .O(horizontal_out[1]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_2 (.I(horizontal_out_c_2), .O(horizontal_out[2]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_3 (.I(horizontal_out_c_3), .O(horizontal_out[3]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_4 (.I(horizontal_out_c_4), .O(horizontal_out[4]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_5 (.I(horizontal_out_c_5), .O(horizontal_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_6 (.I(horizontal_out_c_6), .O(horizontal_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_7 (.I(horizontal_out_c_7), .O(horizontal_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_8 (.I(horizontal_out_c_8), .O(horizontal_out[8]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_9 (.I(horizontal_out_c_9), .O(horizontal_out[9]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_10 (.I(horizontal_out_c_10), .O(horizontal_out[10]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB horizontal_out_pad_11 (.I(horizontal_out_c_11), .O(horizontal_out[11]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB vertical_out_pad_5 (.I(GND_net), .O(vertical_out[5]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    OB horizontal_out_pad_14 (.I(horizontal_out_c_14), .O(horizontal_out[14]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB vertical_out_pad_6 (.I(GND_net), .O(vertical_out[6]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    LUT4 i1_2_lut (.A(Rst_L_N_8349), .B(window_count[3]), .Z(o_ws_c_enable_41)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(55[19:41])
    defparam i1_2_lut.init = 16'h8888;
    OB vertical_out_pad_7 (.I(GND_net), .O(vertical_out[7]));   // c:/users/sec29/desktop/i2s_iot/top.v(32[29:41])
    VLO i1 (.Z(GND_net));
    pll2 my_pll2 (.o_sck_N_80(o_sck_N_80_adj_8871), .o_sck2_c(o_sck2_c), 
         .osc_clk(osc_clk), .rst_n_N_68(rst_n_N_68), .mclk2_c(mclk2_c), 
         .lock2(lock2), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(94[7] 100[16])
    I2S_Controller port2 (.o_ws2_c(o_ws2_c), .o_sck_N_80(o_sck_N_80_adj_8871), 
            .i_sys_rst(i_sys_rst)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(102[18] 111[25])
    OB horizontal_out_pad_12 (.I(horizontal_out_c_12), .O(horizontal_out[12]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ste ste1 (.\window_count[3] (window_count_adj_8887[3]), .o_ws_c(o_ws_c), 
        .i_sys_rst(i_sys_rst), .GND_net(GND_net), .ste_left_valid(ste_left_valid), 
        .Rst_L_N_8349(Rst_L_N_8349), .\ste_left[30] (ste_left[30]), .n848(n848), 
        .\ste_left[29] (ste_left[29]), .\ste_left[28] (ste_left[28]), .\ste_left[27] (ste_left[27]), 
        .\ste_left[26] (ste_left[26]), .\ste_left[25] (ste_left[25]), .\ste_left[24] (ste_left[24]), 
        .\ste_left[23] (ste_left[23]), .\ste_left[22] (ste_left[22]), .\ste_left[21] (ste_left[21]), 
        .\ste_left[20] (ste_left[20]), .\ste_left[19] (ste_left[19]), .\ste_left[18] (ste_left[18]), 
        .\ste_left[17] (ste_left[17]), .\ste_left[16] (ste_left[16]), .\ste_left[15] (ste_left[15]), 
        .\ste_left[14] (ste_left[14]), .\ste_left[13] (ste_left[13]), .\ste_left[12] (ste_left[12]), 
        .\ste_left[11] (ste_left[11]), .\ste_left[10] (ste_left[10]), .\ste_left[9] (ste_left[9]), 
        .\ste_left[8] (ste_left[8]), .\ste_left[7] (ste_left[7]), .\ste_left[6] (ste_left[6]), 
        .\ste_left[5] (ste_left[5]), .VCC_net(VCC_net), .horizontal_out_c_14(horizontal_out_c_14), 
        .horizontal_out_c_13(horizontal_out_c_13), .horizontal_out_c_12(horizontal_out_c_12), 
        .horizontal_out_c_11(horizontal_out_c_11), .horizontal_out_c_10(horizontal_out_c_10), 
        .horizontal_out_c_9(horizontal_out_c_9), .horizontal_out_c_8(horizontal_out_c_8)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(147[5] 153[2])
    LUT4 i2303_2_lut (.A(Rst_L_N_8349), .B(window_count_adj_8887[3]), .Z(n848)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2303_2_lut.init = 16'h2222;
    OB horizontal_out_pad_13 (.I(horizontal_out_c_13), .O(horizontal_out[13]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    LUT4 m1_lut (.Z(n3358)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i3_4_lut (.A(Rst_L_N_8349), .B(window_count[0]), .C(n1797), .D(window_count[3]), 
         .Z(o_ws_c_enable_34)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    OB horizontal_out_pad_15 (.I(horizontal_out_c_15), .O(horizontal_out[15]));   // c:/users/sec29/desktop/i2s_iot/top.v(31[48:62])
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    OB o_sck_pad (.I(o_sck_c), .O(o_sck));   // c:/users/sec29/desktop/i2s_iot/top.v(25[32:37])
    OB mclk_pad (.I(mclk_c), .O(mclk));   // c:/users/sec29/desktop/i2s_iot/top.v(33[29:33])
    LUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_68)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(56[16:24])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    LUT4 i1387_1_lut (.A(Rst_L_N_8349), .Z(i_sys_rst)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1387_1_lut.init = 16'h5555;
    classification class1 (.zcr_valid_left(zcr_valid_left), .ste_left_valid(ste_left_valid), 
            .shout_c(shout_c), .subMean_left_valid(subMean_left_valid), 
            .\ste_left[22] (ste_left[22]), .\zcr_count_left[5] (zcr_count_left[5]), 
            .\ste_left[30] (ste_left[30]), .\ste_left[14] (ste_left[14]), 
            .\subMean_left_out[11] (subMean_left_out[11]), .\subMean_left_out[12] (subMean_left_out[12]), 
            .\ste_left[19] (ste_left[19]), .\zcr_count_left[3] (zcr_count_left[3]), 
            .\ste_left[26] (ste_left[26]), .\ste_left[15] (ste_left[15]), 
            .\ste_left[12] (ste_left[12]), .\ste_left[28] (ste_left[28]), 
            .\ste_left[13] (ste_left[13]), .\ste_left[18] (ste_left[18]), 
            .\ste_left[17] (ste_left[17]), .\ste_left[20] (ste_left[20]), 
            .\ste_left[24] (ste_left[24]), .\ste_left[21] (ste_left[21]), 
            .\ste_left[16] (ste_left[16]), .\subMean_left_out[13] (subMean_left_out[13]), 
            .\zcr_count_left[4] (zcr_count_left[4]), .\subMean_left_out[14] (subMean_left_out[14]), 
            .\ste_left[27] (ste_left[27]), .\subMean_left_out[15] (subMean_left_out[15]), 
            .\ste_left[25] (ste_left[25]), .\ste_left[23] (ste_left[23]), 
            .\ste_left[29] (ste_left[29]), .\ste_left[7] (ste_left[7]), 
            .\zcr_count_left[2] (zcr_count_left[2]), .\ste_left[10] (ste_left[10]), 
            .\subMean_left_out[8] (subMean_left_out[8]), .\subMean_left_out[10] (subMean_left_out[10]), 
            .\subMean_left_out[9] (subMean_left_out[9]), .\subMean_left_out[7] (subMean_left_out[7]), 
            .\subMean_left_out[6] (subMean_left_out[6]), .\subMean_left_out[5] (subMean_left_out[5]), 
            .\ste_left[5] (ste_left[5]), .\ste_left[8] (ste_left[8]), .\ste_left[6] (ste_left[6]), 
            .\ste_left[9] (ste_left[9]), .\ste_left[11] (ste_left[11]), 
            .\subMean_left_out[3] (subMean_left_out[3]), .\subMean_left_out[4] (subMean_left_out[4]), 
            .\subMean_left_out[1] (subMean_left_out[1]), .\subMean_left_out[2] (subMean_left_out[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(164[16] 177[2])
    LUT4 i1_3_lut (.A(rst_n_c), .B(lock2), .C(lock), .Z(Rst_L_N_8349)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    submean2 subMean1 (.subMean_left_valid(subMean_left_valid), .GND_net(GND_net), 
            .\subMean_left_out[1] (subMean_left_out[1]), .o_ws_c(o_ws_c), 
            .i_sys_rst(i_sys_rst), .horizontal_out_c_13(horizontal_out_c_13), 
            .horizontal_out_c_14(horizontal_out_c_14), .horizontal_out_c_11(horizontal_out_c_11), 
            .horizontal_out_c_12(horizontal_out_c_12), .horizontal_out_c_9(horizontal_out_c_9), 
            .horizontal_out_c_10(horizontal_out_c_10), .horizontal_out_c_7(horizontal_out_c_7), 
            .horizontal_out_c_8(horizontal_out_c_8), .horizontal_out_c_5(horizontal_out_c_5), 
            .horizontal_out_c_6(horizontal_out_c_6), .horizontal_out_c_3(horizontal_out_c_3), 
            .horizontal_out_c_4(horizontal_out_c_4), .horizontal_out_c_1(horizontal_out_c_1), 
            .horizontal_out_c_2(horizontal_out_c_2), .horizontal_out_c_0(horizontal_out_c_0), 
            .\subMean_left_out[15] (subMean_left_out[15]), .\subMean_left_out[14] (subMean_left_out[14]), 
            .\subMean_left_out[13] (subMean_left_out[13]), .\subMean_left_out[12] (subMean_left_out[12]), 
            .\subMean_left_out[11] (subMean_left_out[11]), .\subMean_left_out[10] (subMean_left_out[10]), 
            .\subMean_left_out[9] (subMean_left_out[9]), .\subMean_left_out[8] (subMean_left_out[8]), 
            .\subMean_left_out[7] (subMean_left_out[7]), .\subMean_left_out[6] (subMean_left_out[6]), 
            .\subMean_left_out[5] (subMean_left_out[5]), .\subMean_left_out[4] (subMean_left_out[4]), 
            .\subMean_left_out[3] (subMean_left_out[3]), .\subMean_left_out[2] (subMean_left_out[2]), 
            .n3358(n3358), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(155[10] 161[2])
    I2S_Controller_U0 port1 (.o_ws_c(o_ws_c), .o_sck_N_80(o_sck_N_80), .i_sys_rst(i_sys_rst), 
            .fifo_in1({fifo_in1}), .wr_en(wr_en), .GND_net(GND_net), .VCC_net(VCC_net), 
            .i_sd_c(i_sd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(65[18] 75[26])
    zcr zcr1 (.\window_count[3] (window_count[3]), .\window_count[0] (window_count[0]), 
        .\zcr_count_left[2] (zcr_count_left[2]), .o_ws_c(o_ws_c), .o_ws_c_enable_41(o_ws_c_enable_41), 
        .n1797(n1797), .Rst_L_N_8349(Rst_L_N_8349), .horizontal_out_c_15(horizontal_out_c_15), 
        .i_sys_rst(i_sys_rst), .o_ws_c_enable_34(o_ws_c_enable_34), .\zcr_count_left[5] (zcr_count_left[5]), 
        .\zcr_count_left[4] (zcr_count_left[4]), .\zcr_count_left[3] (zcr_count_left[3]), 
        .zcr_valid_left(zcr_valid_left), .GND_net(GND_net), .n46(n46), 
        .\zcr_count_temp[0] (zcr_count_temp[0]), .n2459(n2459)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(139[5] 145[2])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module fifo_horizontal
//

module fifo_horizontal (fifo_in1, o_sck_c, o_ws_c, wr_en, VCC_net, 
            i_sys_rst, GND_net, horizontal_out_c_15, horizontal_out_c_14, 
            horizontal_out_c_13, horizontal_out_c_12, horizontal_out_c_11, 
            horizontal_out_c_10, horizontal_out_c_9, horizontal_out_c_8, 
            horizontal_out_c_7, horizontal_out_c_6, horizontal_out_c_5, 
            horizontal_out_c_4, horizontal_out_c_3, horizontal_out_c_2, 
            horizontal_out_c_1, horizontal_out_c_0) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input [15:0]fifo_in1;
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
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(25[32:37])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    
    wire Empty, Full;
    
    FIFO8KB fifo_horizontal_0_0 (.DI0(fifo_in1[0]), .DI1(fifo_in1[1]), .DI2(fifo_in1[2]), 
            .DI3(fifo_in1[3]), .DI4(fifo_in1[4]), .DI5(fifo_in1[5]), .DI6(fifo_in1[6]), 
            .DI7(fifo_in1[7]), .DI8(fifo_in1[8]), .DI9(fifo_in1[9]), .DI10(fifo_in1[10]), 
            .DI11(fifo_in1[11]), .DI12(fifo_in1[12]), .DI13(fifo_in1[13]), 
            .DI14(fifo_in1[14]), .DI15(fifo_in1[15]), .DI16(GND_net), 
            .DI17(GND_net), .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), 
            .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), .WE(wr_en), 
            .RE(VCC_net), .ORE(VCC_net), .CLKW(o_sck_c), .CLKR(o_ws_c), 
            .RST(i_sys_rst), .RPRST(GND_net), .DO0(horizontal_out_c_9), 
            .DO1(horizontal_out_c_10), .DO2(horizontal_out_c_11), .DO3(horizontal_out_c_12), 
            .DO4(horizontal_out_c_13), .DO5(horizontal_out_c_14), .DO6(horizontal_out_c_15), 
            .DO9(horizontal_out_c_0), .DO10(horizontal_out_c_1), .DO11(horizontal_out_c_2), 
            .DO12(horizontal_out_c_3), .DO13(horizontal_out_c_4), .DO14(horizontal_out_c_5), 
            .DO15(horizontal_out_c_6), .DO16(horizontal_out_c_7), .DO17(horizontal_out_c_8), 
            .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=17, LSE_RCOL=31, LSE_LLINE=124, LSE_RLINE=126 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(124[17] 126[31])
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

module pll1 (osc_clk, rst_n_N_68, mclk_c, lock, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input rst_n_N_68;
    output mclk_c;
    output lock;
    input GND_net;
    
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(79[30:37])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/pll1.v(11[17:22])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(33[29:33])
    
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(CLKOP), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_n_N_68), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKOS(mclk_c), .LOCK(lock)) /* synthesis FREQUENCY_PIN_CLKOS2="416.000000", FREQUENCY_PIN_CLKOS="4.000000", FREQUENCY_PIN_CLKOP="32.000000", FREQUENCY_PIN_CLKI="16.000000", ICP_CURRENT="6", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=82, LSE_RLINE=89 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(82[10] 89[3])
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

module clk_div (o_sck_c, mclk_c, i_sys_rst, o_sck_N_80) /* synthesis syn_module_defined=1 */ ;
    output o_sck_c;
    input mclk_c;
    input i_sys_rst;
    output o_sck_N_80;
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(25[32:37])
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(33[29:33])
    wire o_sck_N_80 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire clk_out_N_298;
    wire [2:0]r_reg;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(12[17:22])
    wire [1:0]n17;
    
    wire n2957;
    
    FD1S3DX clk_track_12 (.D(clk_out_N_298), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(o_sck_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=62, LSE_LLINE=91, LSE_RLINE=91 */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(25[8] 32[22])
    defparam clk_track_12.GSR = "ENABLED";
    LUT4 i1993_1_lut (.A(r_reg[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam i1993_1_lut.init = 16'h5555;
    FD1S3DX r_reg_185_186__i2 (.D(n2957), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(r_reg[1]));   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam r_reg_185_186__i2.GSR = "ENABLED";
    INV i2404 (.A(o_sck_c), .Z(o_sck_N_80));
    LUT4 i15_2_lut (.A(r_reg[0]), .B(r_reg[1]), .Z(n2957)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam i15_2_lut.init = 16'h6666;
    FD1S3DX r_reg_185_186__i1 (.D(n17[0]), .CK(mclk_c), .CD(i_sys_rst), 
            .Q(r_reg[0]));   // c:/users/sec29/desktop/i2s_iot/clkdiv.v(35[17:24])
    defparam r_reg_185_186__i1.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(o_sck_c), .B(r_reg[0]), .C(r_reg[1]), .Z(clk_out_N_298)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h6a6a;
    
endmodule
//
// Verilog Description of module pll2
//

module pll2 (o_sck_N_80, o_sck2_c, osc_clk, rst_n_N_68, mclk2_c, lock2, 
            GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output o_sck_N_80;
    output o_sck2_c;
    input osc_clk;
    input rst_n_N_68;
    output mclk2_c;
    output lock2;
    input GND_net;
    
    wire o_sck_N_80 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_sck2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(26[17:23])
    wire osc_clk /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(79[30:37])
    wire mclk2_c /* synthesis is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(34[29:34])
    
    INV i2405 (.A(o_sck2_c), .Z(o_sck_N_80));
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(mclk2_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_n_N_68), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(mclk2_c), .CLKOS(o_sck2_c), .LOCK(lock2)) /* synthesis FREQUENCY_PIN_CLKOS2="33.260000", FREQUENCY_PIN_CLKOS="5.543333", FREQUENCY_PIN_CLKOP="33.260000", FREQUENCY_PIN_CLKI="16.630000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=7, LSE_RCOL=16, LSE_LLINE=94, LSE_RLINE=100 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(94[7] 100[16])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 16;
    defparam PLLInst_0.CLKOS_DIV = 96;
    defparam PLLInst_0.CLKOS2_DIV = 16;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 15;
    defparam PLLInst_0.CLKOS_CPHASE = 95;
    defparam PLLInst_0.CLKOS2_CPHASE = 15;
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

module I2S_Controller (o_ws2_c, o_sck_N_80, i_sys_rst) /* synthesis syn_module_defined=1 */ ;
    output o_ws2_c;
    input o_sck_N_80;
    input i_sys_rst;
    
    wire o_sck_N_80 /* synthesis is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire o_ws_N_87;
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire n3266, n3258, n3038, n2959;
    wire [4:0]n32;
    
    wire n2972, n3265, n3264, n2841;
    
    FD1S3DX o_ws_13 (.D(o_ws_N_87), .CK(o_sck_N_80), .CD(i_sys_rst), .Q(o_ws2_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=18, LSE_RCOL=25, LSE_LLINE=102, LSE_RLINE=111 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(56[3] 64[7])
    defparam o_ws_13.GSR = "ENABLED";
    FD1S3DX count_188__i4 (.D(n3266), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i4.GSR = "ENABLED";
    FD1S3DX count_188__i3 (.D(n3258), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i3.GSR = "ENABLED";
    FD1S3DX count_188__i2 (.D(n3038), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i2.GSR = "ENABLED";
    FD1S3DX count_188__i1 (.D(n2959), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i1.GSR = "ENABLED";
    FD1S3DX count_188__i0 (.D(n32[0]), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_188__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(count[0]), .B(count[1]), .Z(n2972)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i15_2_lut (.A(count[0]), .B(count[1]), .Z(n2959)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1917_1_lut (.A(count[0]), .Z(n32[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1917_1_lut.init = 16'h5555;
    LUT4 i1942_4_lut_4_lut_then_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[4]), .Z(n3265)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1942_4_lut_4_lut_then_4_lut.init = 16'h7f80;
    LUT4 i1942_4_lut_4_lut_else_4_lut (.A(count[4]), .Z(n3264)) /* synthesis lut_function=(A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1942_4_lut_4_lut_else_4_lut.init = 16'haaaa;
    PFUMX i2356 (.BLUT(n3264), .ALUT(n3265), .C0(count[3]), .Z(n3266));
    LUT4 i2222_3_lut_4_lut (.A(n2841), .B(count[2]), .C(count[0]), .D(count[1]), 
         .Z(n3038)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i2222_3_lut_4_lut.init = 16'h1444;
    LUT4 count_2__bdd_3_lut_4_lut (.A(count[2]), .B(count[3]), .C(count[0]), 
         .D(count[1]), .Z(n3258)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B))) */ ;
    defparam count_2__bdd_3_lut_4_lut.init = 16'h6ccc;
    LUT4 i1_2_lut_adj_125 (.A(o_ws2_c), .B(n2841), .Z(o_ws_N_87)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_125.init = 16'h6666;
    LUT4 i3_4_lut (.A(count[2]), .B(count[4]), .C(count[3]), .D(n2972), 
         .Z(n2841)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    
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
// Verilog Description of module ste
//

module ste (\window_count[3] , o_ws_c, i_sys_rst, GND_net, ste_left_valid, 
            Rst_L_N_8349, \ste_left[30] , n848, \ste_left[29] , \ste_left[28] , 
            \ste_left[27] , \ste_left[26] , \ste_left[25] , \ste_left[24] , 
            \ste_left[23] , \ste_left[22] , \ste_left[21] , \ste_left[20] , 
            \ste_left[19] , \ste_left[18] , \ste_left[17] , \ste_left[16] , 
            \ste_left[15] , \ste_left[14] , \ste_left[13] , \ste_left[12] , 
            \ste_left[11] , \ste_left[10] , \ste_left[9] , \ste_left[8] , 
            \ste_left[7] , \ste_left[6] , \ste_left[5] , VCC_net, horizontal_out_c_14, 
            horizontal_out_c_13, horizontal_out_c_12, horizontal_out_c_11, 
            horizontal_out_c_10, horizontal_out_c_9, horizontal_out_c_8) /* synthesis syn_module_defined=1 */ ;
    output \window_count[3] ;
    input o_ws_c;
    input i_sys_rst;
    input GND_net;
    output ste_left_valid;
    input Rst_L_N_8349;
    output \ste_left[30] ;
    input n848;
    output \ste_left[29] ;
    output \ste_left[28] ;
    output \ste_left[27] ;
    output \ste_left[26] ;
    output \ste_left[25] ;
    output \ste_left[24] ;
    output \ste_left[23] ;
    output \ste_left[22] ;
    output \ste_left[21] ;
    output \ste_left[20] ;
    output \ste_left[19] ;
    output \ste_left[18] ;
    output \ste_left[17] ;
    output \ste_left[16] ;
    output \ste_left[15] ;
    output \ste_left[14] ;
    output \ste_left[13] ;
    output \ste_left[12] ;
    output \ste_left[11] ;
    output \ste_left[10] ;
    output \ste_left[9] ;
    output \ste_left[8] ;
    output \ste_left[7] ;
    output \ste_left[6] ;
    output \ste_left[5] ;
    input VCC_net;
    input horizontal_out_c_14;
    input horizontal_out_c_13;
    input horizontal_out_c_12;
    input horizontal_out_c_11;
    input horizontal_out_c_10;
    input horizontal_out_c_9;
    input horizontal_out_c_8;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/ste.v(18[11:23])
    
    wire n4;
    wire [30:0]sum;   // c:/users/sec29/desktop/i2s_iot/ste.v(21[12:15])
    
    wire n2550, n2734, n2570, n4_adj_8870;
    wire [14:0]square;   // c:/users/sec29/desktop/i2s_iot/ste.v(17[13:19])
    
    wire n2566, n1725, n1723, n2735, n2546, n2558;
    wire [3:0]n27;
    
    wire n2542, o_ws_c_enable_35, n1729, n1727, n1721, n1719, n1717, 
        n1715, n1713, n1711, n1709, n1707, n1705, n1703, n1701, 
        n1699, n1697, n1695, n1693, n1691, n1689, n1687, n1685, 
        n1683, n1681, n2578, n2530, n2526, n1679, n2538, n2733, 
        n2574, n1677, n1675, n1673, n1671, n1668, n2582, n2740, 
        n2741, n2278, n2785, n2784, n2747, n2746, n2745, n2744, 
        n2743, n2534, n2554, n2742, n2739, n2562, n2736, n2737, 
        n2738;
    
    LUT4 i1831_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(window_count[1]), 
         .C(n4), .D(sum[8]), .Z(n2550)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1831_2_lut_3_lut_4_lut.init = 16'hfe00;
    CCU2D add_29_5 (.A0(n2570), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[3]), .A1(n2566), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[4]), .CIN(n2734), .COUT(n2735), .S0(n1725), .S1(n1723));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_5.INIT0 = 16'h56aa;
    defparam add_29_5.INIT1 = 16'h56aa;
    defparam add_29_5.INJECT1_0 = "NO";
    defparam add_29_5.INJECT1_1 = "NO";
    LUT4 i1827_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(window_count[1]), 
         .C(n4), .D(sum[9]), .Z(n2546)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1827_2_lut_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1839_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[6]), 
         .Z(n2558)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1839_2_lut_3_lut.init = 16'he0e0;
    FD1S3DX window_count_191_192__i4 (.D(n27[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192__i4.GSR = "ENABLED";
    LUT4 i1823_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[10]), 
         .Z(n2542)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1823_2_lut_3_lut.init = 16'he0e0;
    FD1P3DX sum__i1 (.D(n1729), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i1.GSR = "ENABLED";
    FD1P3DX sum__i2 (.D(n1727), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i2.GSR = "ENABLED";
    FD1P3DX sum__i3 (.D(n1725), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i3.GSR = "ENABLED";
    FD1P3DX sum__i4 (.D(n1723), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i4.GSR = "ENABLED";
    FD1P3DX sum__i5 (.D(n1721), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i5.GSR = "ENABLED";
    FD1P3DX sum__i6 (.D(n1719), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i6.GSR = "ENABLED";
    FD1P3DX sum__i7 (.D(n1717), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i7.GSR = "ENABLED";
    FD1P3DX sum__i8 (.D(n1715), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i8.GSR = "ENABLED";
    FD1P3DX sum__i9 (.D(n1713), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i9.GSR = "ENABLED";
    FD1P3DX sum__i10 (.D(n1711), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i10.GSR = "ENABLED";
    FD1P3DX sum__i11 (.D(n1709), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i11.GSR = "ENABLED";
    FD1P3DX sum__i12 (.D(n1707), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i12.GSR = "ENABLED";
    FD1P3DX sum__i13 (.D(n1705), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i13.GSR = "ENABLED";
    FD1P3DX sum__i14 (.D(n1703), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i14.GSR = "ENABLED";
    FD1P3DX sum__i15 (.D(n1701), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i15.GSR = "ENABLED";
    FD1P3DX sum__i16 (.D(n1699), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[16])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i16.GSR = "ENABLED";
    FD1P3DX sum__i17 (.D(n1697), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[17])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i17.GSR = "ENABLED";
    FD1P3DX sum__i18 (.D(n1695), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[18])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i18.GSR = "ENABLED";
    LUT4 i1851_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[3]), 
         .Z(n2570)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1851_2_lut_3_lut.init = 16'he0e0;
    FD1P3DX sum__i19 (.D(n1693), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[19])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i19.GSR = "ENABLED";
    FD1P3DX sum__i20 (.D(n1691), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[20])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i20.GSR = "ENABLED";
    FD1P3DX sum__i21 (.D(n1689), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[21])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i21.GSR = "ENABLED";
    FD1P3DX sum__i22 (.D(n1687), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[22])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i22.GSR = "ENABLED";
    FD1P3DX sum__i23 (.D(n1685), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[23])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i23.GSR = "ENABLED";
    FD1P3DX sum__i24 (.D(n1683), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[24])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i24.GSR = "ENABLED";
    FD1P3DX sum__i25 (.D(n1681), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[25])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i25.GSR = "ENABLED";
    FD1S3DX window_count_191_192__i3 (.D(n27[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192__i3.GSR = "ENABLED";
    FD1S3DX window_count_191_192__i2 (.D(n27[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192__i2.GSR = "ENABLED";
    LUT4 i1859_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[1]), 
         .Z(n2578)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1859_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1811_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[13]), 
         .Z(n2530)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1811_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1807_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(window_count[1]), 
         .C(n4), .D(sum[14]), .Z(n2526)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1807_2_lut_3_lut_4_lut.init = 16'hfe00;
    FD1P3DX sum__i26 (.D(n1679), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[26])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i26.GSR = "ENABLED";
    LUT4 i1819_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[11]), 
         .Z(n2538)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1819_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2_2_lut_3_lut (.A(window_count[1]), .B(window_count[2]), .C(window_count[0]), 
         .Z(n4_adj_8870)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    CCU2D add_29_3 (.A0(n2578), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[1]), .A1(n2574), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[2]), .CIN(n2733), .COUT(n2734), .S0(n1729), .S1(n1727));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_3.INIT0 = 16'h56aa;
    defparam add_29_3.INIT1 = 16'h56aa;
    defparam add_29_3.INJECT1_0 = "NO";
    defparam add_29_3.INJECT1_1 = "NO";
    FD1P3DX sum__i27 (.D(n1677), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[27])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i27.GSR = "ENABLED";
    FD1P3DX sum__i28 (.D(n1675), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[28])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i28.GSR = "ENABLED";
    FD1P3DX sum__i29 (.D(n1673), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[29])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i29.GSR = "ENABLED";
    FD1P3DX sum__i30 (.D(n1671), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[30])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i30.GSR = "ENABLED";
    FD1P3DX sum__i0 (.D(n1668), .SP(o_ws_c_enable_35), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(64[8] 67[10])
    defparam sum__i0.GSR = "ENABLED";
    CCU2D add_29_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2582), .B1(n4_adj_8870), .C1(\window_count[3] ), .D1(square[0]), 
          .COUT(n2733), .S1(n1668));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_1.INIT0 = 16'hF000;
    defparam add_29_1.INIT1 = 16'h56aa;
    defparam add_29_1.INJECT1_0 = "NO";
    defparam add_29_1.INJECT1_1 = "NO";
    CCU2D add_29_17 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[15]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[16]), .CIN(n2740), .COUT(n2741), .S0(n1701), .S1(n1699));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_17.INIT0 = 16'hfe00;
    defparam add_29_17.INIT1 = 16'hfe00;
    defparam add_29_17.INJECT1_0 = "NO";
    defparam add_29_17.INJECT1_1 = "NO";
    FD1P3AX ste_valid_36 (.D(\window_count[3] ), .SP(Rst_L_N_8349), .CK(o_ws_c), 
            .Q(ste_left_valid));   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste_valid_36.GSR = "ENABLED";
    FD1S3DX window_count_191_192__i1 (.D(n27[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192__i1.GSR = "ENABLED";
    LUT4 i1560_1_lut (.A(\window_count[3] ), .Z(n2278)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1560_1_lut.init = 16'h5555;
    CCU2D window_count_191_192_add_4_5 (.A0(\window_count[3] ), .B0(n2278), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2785), .S0(n27[3]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192_add_4_5.INIT0 = 16'h7888;
    defparam window_count_191_192_add_4_5.INIT1 = 16'h0000;
    defparam window_count_191_192_add_4_5.INJECT1_0 = "NO";
    defparam window_count_191_192_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_191_192_add_4_3 (.A0(window_count[1]), .B0(\window_count[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2784), .COUT(n2785), .S0(n27[1]), 
          .S1(n27[2]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192_add_4_3.INIT0 = 16'hd222;
    defparam window_count_191_192_add_4_3.INIT1 = 16'hd222;
    defparam window_count_191_192_add_4_3.INJECT1_0 = "NO";
    defparam window_count_191_192_add_4_3.INJECT1_1 = "NO";
    CCU2D window_count_191_192_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(window_count[0]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2784), .S1(n27[0]));   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam window_count_191_192_add_4_1.INIT0 = 16'hF000;
    defparam window_count_191_192_add_4_1.INIT1 = 16'hd111;
    defparam window_count_191_192_add_4_1.INJECT1_0 = "NO";
    defparam window_count_191_192_add_4_1.INJECT1_1 = "NO";
    CCU2D add_29_31 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[29]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[30]), .CIN(n2747), .S0(n1673), .S1(n1671));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_31.INIT0 = 16'hfe00;
    defparam add_29_31.INIT1 = 16'hfe00;
    defparam add_29_31.INJECT1_0 = "NO";
    defparam add_29_31.INJECT1_1 = "NO";
    CCU2D add_29_29 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[27]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[28]), .CIN(n2746), .COUT(n2747), .S0(n1677), .S1(n1675));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_29.INIT0 = 16'hfe00;
    defparam add_29_29.INIT1 = 16'hfe00;
    defparam add_29_29.INJECT1_0 = "NO";
    defparam add_29_29.INJECT1_1 = "NO";
    CCU2D add_29_27 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[25]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[26]), .CIN(n2745), .COUT(n2746), .S0(n1681), .S1(n1679));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_27.INIT0 = 16'hfe00;
    defparam add_29_27.INIT1 = 16'hfe00;
    defparam add_29_27.INJECT1_0 = "NO";
    defparam add_29_27.INJECT1_1 = "NO";
    CCU2D add_29_25 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[23]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[24]), .CIN(n2744), .COUT(n2745), .S0(n1685), .S1(n1683));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_25.INIT0 = 16'hfe00;
    defparam add_29_25.INIT1 = 16'hfe00;
    defparam add_29_25.INJECT1_0 = "NO";
    defparam add_29_25.INJECT1_1 = "NO";
    CCU2D add_29_23 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[21]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[22]), .CIN(n2743), .COUT(n2744), .S0(n1689), .S1(n1687));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_23.INIT0 = 16'hfe00;
    defparam add_29_23.INIT1 = 16'hfe00;
    defparam add_29_23.INJECT1_0 = "NO";
    defparam add_29_23.INJECT1_1 = "NO";
    FD1P3IX ste__i30 (.D(sum[30]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[30] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i30.GSR = "ENABLED";
    FD1P3IX ste__i29 (.D(sum[29]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[29] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i29.GSR = "ENABLED";
    FD1P3IX ste__i28 (.D(sum[28]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[28] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i28.GSR = "ENABLED";
    FD1P3IX ste__i27 (.D(sum[27]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[27] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i27.GSR = "ENABLED";
    FD1P3IX ste__i26 (.D(sum[26]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[26] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i26.GSR = "ENABLED";
    FD1P3IX ste__i25 (.D(sum[25]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[25] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i25.GSR = "ENABLED";
    FD1P3IX ste__i24 (.D(sum[24]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[24] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i24.GSR = "ENABLED";
    FD1P3IX ste__i23 (.D(sum[23]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[23] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i23.GSR = "ENABLED";
    FD1P3IX ste__i22 (.D(sum[22]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[22] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i22.GSR = "ENABLED";
    FD1P3IX ste__i21 (.D(sum[21]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[21] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i21.GSR = "ENABLED";
    FD1P3IX ste__i20 (.D(sum[20]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[20] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i20.GSR = "ENABLED";
    FD1P3IX ste__i19 (.D(sum[19]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[19] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i19.GSR = "ENABLED";
    LUT4 i1815_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[12]), 
         .Z(n2534)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1815_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1835_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[7]), 
         .Z(n2554)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1835_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1847_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[4]), 
         .Z(n2566)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1847_2_lut_3_lut.init = 16'he0e0;
    LUT4 window_count_0__bdd_4_lut (.A(window_count[0]), .B(\window_count[3] ), 
         .C(window_count[2]), .D(window_count[1]), .Z(o_ws_c_enable_35)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam window_count_0__bdd_4_lut.init = 16'h3235;
    LUT4 i1855_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[2]), 
         .Z(n2574)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1855_2_lut_3_lut.init = 16'he0e0;
    CCU2D add_29_21 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[19]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[20]), .CIN(n2742), .COUT(n2743), .S0(n1693), .S1(n1691));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_21.INIT0 = 16'hfe00;
    defparam add_29_21.INIT1 = 16'hfe00;
    defparam add_29_21.INJECT1_0 = "NO";
    defparam add_29_21.INJECT1_1 = "NO";
    CCU2D add_29_19 (.A0(n4), .B0(window_count[1]), .C0(\window_count[3] ), 
          .D0(sum[17]), .A1(n4), .B1(window_count[1]), .C1(\window_count[3] ), 
          .D1(sum[18]), .CIN(n2741), .COUT(n2742), .S0(n1697), .S1(n1695));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_19.INIT0 = 16'hfe00;
    defparam add_29_19.INIT1 = 16'hfe00;
    defparam add_29_19.INJECT1_0 = "NO";
    defparam add_29_19.INJECT1_1 = "NO";
    LUT4 i1863_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[0]), 
         .Z(n2582)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1863_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut (.A(window_count[2]), .B(window_count[0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX ste__i18 (.D(sum[18]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[18] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i18.GSR = "ENABLED";
    FD1P3IX ste__i17 (.D(sum[17]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[17] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i17.GSR = "ENABLED";
    FD1P3IX ste__i16 (.D(sum[16]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[16] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i16.GSR = "ENABLED";
    FD1P3IX ste__i15 (.D(sum[15]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i15.GSR = "ENABLED";
    FD1P3IX ste__i14 (.D(sum[14]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i14.GSR = "ENABLED";
    FD1P3IX ste__i13 (.D(sum[13]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i13.GSR = "ENABLED";
    FD1P3IX ste__i12 (.D(sum[12]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i12.GSR = "ENABLED";
    FD1P3IX ste__i11 (.D(sum[11]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i11.GSR = "ENABLED";
    FD1P3IX ste__i10 (.D(sum[10]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i10.GSR = "ENABLED";
    FD1P3IX ste__i9 (.D(sum[9]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i9.GSR = "ENABLED";
    FD1P3IX ste__i8 (.D(sum[8]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i8.GSR = "ENABLED";
    FD1P3IX ste__i7 (.D(sum[7]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i7.GSR = "ENABLED";
    FD1P3IX ste__i6 (.D(sum[6]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i6.GSR = "ENABLED";
    FD1P3IX ste__i5 (.D(sum[5]), .SP(Rst_L_N_8349), .CD(n848), .CK(o_ws_c), 
            .Q(\ste_left[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=147, LSE_RLINE=153 */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(31[3] 44[6])
    defparam ste__i5.GSR = "ENABLED";
    CCU2D add_29_15 (.A0(n2530), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[13]), .A1(n2526), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[14]), .CIN(n2739), .COUT(n2740), .S0(n1705), .S1(n1703));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_15.INIT0 = 16'h56aa;
    defparam add_29_15.INIT1 = 16'h56aa;
    defparam add_29_15.INJECT1_0 = "NO";
    defparam add_29_15.INJECT1_1 = "NO";
    CCU2D add_29_7 (.A0(n2562), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[5]), .A1(n2558), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[6]), .CIN(n2735), .COUT(n2736), .S0(n1721), .S1(n1719));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_7.INIT0 = 16'h56aa;
    defparam add_29_7.INIT1 = 16'h56aa;
    defparam add_29_7.INJECT1_0 = "NO";
    defparam add_29_7.INJECT1_1 = "NO";
    CCU2D add_29_11 (.A0(n2546), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[9]), .A1(n2542), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[10]), .CIN(n2737), .COUT(n2738), .S0(n1713), .S1(n1711));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_11.INIT0 = 16'h56aa;
    defparam add_29_11.INIT1 = 16'h56aa;
    defparam add_29_11.INJECT1_0 = "NO";
    defparam add_29_11.INJECT1_1 = "NO";
    CCU2D add_29_13 (.A0(n2538), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[11]), .A1(n2534), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[12]), .CIN(n2738), .COUT(n2739), .S0(n1709), .S1(n1707));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_13.INIT0 = 16'h56aa;
    defparam add_29_13.INIT1 = 16'h56aa;
    defparam add_29_13.INJECT1_0 = "NO";
    defparam add_29_13.INJECT1_1 = "NO";
    CCU2D add_29_9 (.A0(n2554), .B0(n4_adj_8870), .C0(\window_count[3] ), 
          .D0(square[7]), .A1(n2550), .B1(n4_adj_8870), .C1(\window_count[3] ), 
          .D1(square[8]), .CIN(n2736), .COUT(n2737), .S0(n1717), .S1(n1715));   // c:/users/sec29/desktop/i2s_iot/ste.v(66[10:20])
    defparam add_29_9.INIT0 = 16'h56aa;
    defparam add_29_9.INIT1 = 16'h56aa;
    defparam add_29_9.INJECT1_0 = "NO";
    defparam add_29_9.INJECT1_1 = "NO";
    LUT4 i1843_2_lut_3_lut (.A(\window_count[3] ), .B(n4_adj_8870), .C(sum[5]), 
         .Z(n2562)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/ste.v(34[18:32])
    defparam i1843_2_lut_3_lut.init = 16'he0e0;
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
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    
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
// Verilog Description of module classification
//

module classification (zcr_valid_left, ste_left_valid, shout_c, subMean_left_valid, 
            \ste_left[22] , \zcr_count_left[5] , \ste_left[30] , \ste_left[14] , 
            \subMean_left_out[11] , \subMean_left_out[12] , \ste_left[19] , 
            \zcr_count_left[3] , \ste_left[26] , \ste_left[15] , \ste_left[12] , 
            \ste_left[28] , \ste_left[13] , \ste_left[18] , \ste_left[17] , 
            \ste_left[20] , \ste_left[24] , \ste_left[21] , \ste_left[16] , 
            \subMean_left_out[13] , \zcr_count_left[4] , \subMean_left_out[14] , 
            \ste_left[27] , \subMean_left_out[15] , \ste_left[25] , \ste_left[23] , 
            \ste_left[29] , \ste_left[7] , \zcr_count_left[2] , \ste_left[10] , 
            \subMean_left_out[8] , \subMean_left_out[10] , \subMean_left_out[9] , 
            \subMean_left_out[7] , \subMean_left_out[6] , \subMean_left_out[5] , 
            \ste_left[5] , \ste_left[8] , \ste_left[6] , \ste_left[9] , 
            \ste_left[11] , \subMean_left_out[3] , \subMean_left_out[4] , 
            \subMean_left_out[1] , \subMean_left_out[2] ) /* synthesis syn_module_defined=1 */ ;
    input zcr_valid_left;
    input ste_left_valid;
    output shout_c;
    input subMean_left_valid;
    input \ste_left[22] ;
    input \zcr_count_left[5] ;
    input \ste_left[30] ;
    input \ste_left[14] ;
    input \subMean_left_out[11] ;
    input \subMean_left_out[12] ;
    input \ste_left[19] ;
    input \zcr_count_left[3] ;
    input \ste_left[26] ;
    input \ste_left[15] ;
    input \ste_left[12] ;
    input \ste_left[28] ;
    input \ste_left[13] ;
    input \ste_left[18] ;
    input \ste_left[17] ;
    input \ste_left[20] ;
    input \ste_left[24] ;
    input \ste_left[21] ;
    input \ste_left[16] ;
    input \subMean_left_out[13] ;
    input \zcr_count_left[4] ;
    input \subMean_left_out[14] ;
    input \ste_left[27] ;
    input \subMean_left_out[15] ;
    input \ste_left[25] ;
    input \ste_left[23] ;
    input \ste_left[29] ;
    input \ste_left[7] ;
    input \zcr_count_left[2] ;
    input \ste_left[10] ;
    input \subMean_left_out[8] ;
    input \subMean_left_out[10] ;
    input \subMean_left_out[9] ;
    input \subMean_left_out[7] ;
    input \subMean_left_out[6] ;
    input \subMean_left_out[5] ;
    input \ste_left[5] ;
    input \ste_left[8] ;
    input \ste_left[6] ;
    input \ste_left[9] ;
    input \ste_left[11] ;
    input \subMean_left_out[3] ;
    input \subMean_left_out[4] ;
    input \subMean_left_out[1] ;
    input \subMean_left_out[2] ;
    
    
    wire n12, n3067, n3051, n3069, n3025, n3055, n3057, n3053, 
        n3027, n3013, n3065, n2847, n3049, n2091, n2085, n3019;
    
    LUT4 i6_4_lut (.A(zcr_valid_left), .B(n12), .C(ste_left_valid), .D(n3067), 
         .Z(shout_c)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0080;
    LUT4 i5_4_lut (.A(subMean_left_valid), .B(n3051), .C(n3069), .D(\ste_left[22] ), 
         .Z(n12)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0002;
    LUT4 i2250_4_lut (.A(n3025), .B(n3055), .C(n3057), .D(n3053), .Z(n3067)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2250_4_lut.init = 16'hfffe;
    LUT4 i2234_4_lut (.A(\zcr_count_left[5] ), .B(n3027), .C(n3013), .D(\ste_left[30] ), 
         .Z(n3051)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2234_4_lut.init = 16'hfffe;
    LUT4 i2252_4_lut (.A(n3065), .B(\ste_left[14] ), .C(n2847), .D(\subMean_left_out[11] ), 
         .Z(n3069)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2252_4_lut.init = 16'hfeee;
    LUT4 i2214_4_lut (.A(\subMean_left_out[12] ), .B(\ste_left[19] ), .C(\zcr_count_left[3] ), 
         .D(\ste_left[26] ), .Z(n3027)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2214_4_lut.init = 16'hfffe;
    LUT4 i2200_2_lut (.A(\ste_left[15] ), .B(\ste_left[12] ), .Z(n3013)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2200_2_lut.init = 16'heeee;
    LUT4 i2212_4_lut (.A(\ste_left[28] ), .B(\ste_left[13] ), .C(\ste_left[18] ), 
         .D(\ste_left[17] ), .Z(n3025)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2212_4_lut.init = 16'hfffe;
    LUT4 i2238_4_lut (.A(\ste_left[20] ), .B(\ste_left[24] ), .C(\ste_left[21] ), 
         .D(\ste_left[16] ), .Z(n3055)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2238_4_lut.init = 16'hfffe;
    LUT4 i2240_4_lut (.A(\subMean_left_out[13] ), .B(\zcr_count_left[4] ), 
         .C(\subMean_left_out[14] ), .D(\ste_left[27] ), .Z(n3057)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2240_4_lut.init = 16'hfffe;
    LUT4 i2236_4_lut (.A(\subMean_left_out[15] ), .B(\ste_left[25] ), .C(\ste_left[23] ), 
         .D(\ste_left[29] ), .Z(n3053)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2236_4_lut.init = 16'hfffe;
    LUT4 i2248_4_lut (.A(\ste_left[7] ), .B(\zcr_count_left[2] ), .C(n3049), 
         .D(\ste_left[10] ), .Z(n3065)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2248_4_lut.init = 16'heccc;
    LUT4 i3_4_lut (.A(n2091), .B(\subMean_left_out[8] ), .C(\subMean_left_out[10] ), 
         .D(\subMean_left_out[9] ), .Z(n2847)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1382_4_lut (.A(n2085), .B(\subMean_left_out[7] ), .C(\subMean_left_out[6] ), 
         .D(\subMean_left_out[5] ), .Z(n2091)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1382_4_lut.init = 16'hc8c0;
    LUT4 i2232_4_lut (.A(\ste_left[5] ), .B(n3019), .C(\ste_left[8] ), 
         .D(\ste_left[6] ), .Z(n3049)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i2232_4_lut.init = 16'hc080;
    LUT4 i2206_2_lut (.A(\ste_left[9] ), .B(\ste_left[11] ), .Z(n3019)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2206_2_lut.init = 16'h8888;
    LUT4 i1376_4_lut (.A(\subMean_left_out[3] ), .B(\subMean_left_out[4] ), 
         .C(\subMean_left_out[1] ), .D(\subMean_left_out[2] ), .Z(n2085)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1376_4_lut.init = 16'heccc;
    
endmodule
//
// Verilog Description of module submean2
//

module submean2 (subMean_left_valid, GND_net, \subMean_left_out[1] , o_ws_c, 
            i_sys_rst, horizontal_out_c_13, horizontal_out_c_14, horizontal_out_c_11, 
            horizontal_out_c_12, horizontal_out_c_9, horizontal_out_c_10, 
            horizontal_out_c_7, horizontal_out_c_8, horizontal_out_c_5, 
            horizontal_out_c_6, horizontal_out_c_3, horizontal_out_c_4, 
            horizontal_out_c_1, horizontal_out_c_2, horizontal_out_c_0, 
            \subMean_left_out[15] , \subMean_left_out[14] , \subMean_left_out[13] , 
            \subMean_left_out[12] , \subMean_left_out[11] , \subMean_left_out[10] , 
            \subMean_left_out[9] , \subMean_left_out[8] , \subMean_left_out[7] , 
            \subMean_left_out[6] , \subMean_left_out[5] , \subMean_left_out[4] , 
            \subMean_left_out[3] , \subMean_left_out[2] , n3358, VCC_net) /* synthesis syn_module_defined=1 */ ;
    output subMean_left_valid;
    input GND_net;
    output \subMean_left_out[1] ;
    input o_ws_c;
    input i_sys_rst;
    input horizontal_out_c_13;
    input horizontal_out_c_14;
    input horizontal_out_c_11;
    input horizontal_out_c_12;
    input horizontal_out_c_9;
    input horizontal_out_c_10;
    input horizontal_out_c_7;
    input horizontal_out_c_8;
    input horizontal_out_c_5;
    input horizontal_out_c_6;
    input horizontal_out_c_3;
    input horizontal_out_c_4;
    input horizontal_out_c_1;
    input horizontal_out_c_2;
    input horizontal_out_c_0;
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
    output \subMean_left_out[5] ;
    output \subMean_left_out[4] ;
    output \subMean_left_out[3] ;
    output \subMean_left_out[2] ;
    input n3358;
    input VCC_net;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    
    wire n2774;
    wire [19:0]sum_19__N_832;
    wire [14:0]fifo_out;   // c:/users/sec29/desktop/i2s_iot/submean2.v(26[13:21])
    wire [19:0]sum_19__N_812;
    
    wire n2775, n2773;
    wire [15:0]subMean_out_15__N_854;
    wire [15:0]avg;   // c:/users/sec29/desktop/i2s_iot/submean2.v(23[12:15])
    wire [19:0]sum;   // c:/users/sec29/desktop/i2s_iot/submean2.v(22[12:15])
    
    wire n2772, n2771, n2767, n2766, n2765, n2764, n2763, n2762, 
        n2761, n2760, n2758, n2757, n2756, n2755, n2754, n2753, 
        n2752, n2751, n2750, n2780, n2779, n2778, n2777, n2776, 
        Full;
    
    CCU2D sub_6_add_2_9 (.A0(sum_19__N_832[6]), .B0(subMean_left_valid), 
          .C0(fifo_out[6]), .D0(GND_net), .A1(sum_19__N_832[7]), .B1(subMean_left_valid), 
          .C1(fifo_out[7]), .D1(GND_net), .CIN(n2774), .COUT(n2775), 
          .S0(sum_19__N_812[6]), .S1(sum_19__N_812[7]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_9.INIT0 = 16'h56a6;
    defparam sub_6_add_2_9.INIT1 = 16'h56a6;
    defparam sub_6_add_2_9.INJECT1_0 = "NO";
    defparam sub_6_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_7 (.A0(sum_19__N_832[4]), .B0(subMean_left_valid), 
          .C0(fifo_out[4]), .D0(GND_net), .A1(sum_19__N_832[5]), .B1(subMean_left_valid), 
          .C1(fifo_out[5]), .D1(GND_net), .CIN(n2773), .COUT(n2774), 
          .S0(sum_19__N_812[4]), .S1(sum_19__N_812[5]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_7.INIT0 = 16'h56a6;
    defparam sub_6_add_2_7.INIT1 = 16'h56a6;
    defparam sub_6_add_2_7.INJECT1_0 = "NO";
    defparam sub_6_add_2_7.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i1 (.D(subMean_out_15__N_854[1]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i1.GSR = "ENABLED";
    FD1S3DX avg_i0 (.D(sum[4]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i0.GSR = "ENABLED";
    FD1S3DX sum_i0 (.D(sum_19__N_812[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i0.GSR = "ENABLED";
    CCU2D sub_6_add_2_5 (.A0(sum_19__N_832[2]), .B0(subMean_left_valid), 
          .C0(fifo_out[2]), .D0(GND_net), .A1(sum_19__N_832[3]), .B1(subMean_left_valid), 
          .C1(fifo_out[3]), .D1(GND_net), .CIN(n2772), .COUT(n2773), 
          .S0(sum_19__N_812[2]), .S1(sum_19__N_812[3]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_5.INIT0 = 16'h56a6;
    defparam sub_6_add_2_5.INIT1 = 16'h56a6;
    defparam sub_6_add_2_5.INJECT1_0 = "NO";
    defparam sub_6_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_3 (.A0(sum_19__N_832[0]), .B0(subMean_left_valid), 
          .C0(fifo_out[0]), .D0(GND_net), .A1(sum_19__N_832[1]), .B1(subMean_left_valid), 
          .C1(fifo_out[1]), .D1(GND_net), .CIN(n2771), .COUT(n2772), 
          .S0(sum_19__N_812[0]), .S1(sum_19__N_812[1]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_3.INIT0 = 16'h56a6;
    defparam sub_6_add_2_3.INIT1 = 16'h56a6;
    defparam sub_6_add_2_3.INJECT1_0 = "NO";
    defparam sub_6_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(subMean_left_valid), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2771));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_1.INIT0 = 16'hF000;
    defparam sub_6_add_2_1.INIT1 = 16'h0555;
    defparam sub_6_add_2_1.INJECT1_0 = "NO";
    defparam sub_6_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_17 (.A0(avg[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2767), 
          .S0(subMean_out_15__N_854[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_17.INIT0 = 16'hf555;
    defparam sub_7_add_2_17.INIT1 = 16'h0000;
    defparam sub_7_add_2_17.INJECT1_0 = "NO";
    defparam sub_7_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_15 (.A0(horizontal_out_c_13), .B0(avg[13]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_14), .B1(avg[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2766), .COUT(n2767), .S0(subMean_out_15__N_854[13]), 
          .S1(subMean_out_15__N_854[14]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_15.INIT0 = 16'h5999;
    defparam sub_7_add_2_15.INIT1 = 16'h5999;
    defparam sub_7_add_2_15.INJECT1_0 = "NO";
    defparam sub_7_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_13 (.A0(horizontal_out_c_11), .B0(avg[11]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_12), .B1(avg[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2765), .COUT(n2766), .S0(subMean_out_15__N_854[11]), 
          .S1(subMean_out_15__N_854[12]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_13.INIT0 = 16'h5999;
    defparam sub_7_add_2_13.INIT1 = 16'h5999;
    defparam sub_7_add_2_13.INJECT1_0 = "NO";
    defparam sub_7_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_11 (.A0(horizontal_out_c_9), .B0(avg[9]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_10), .B1(avg[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2764), .COUT(n2765), .S0(subMean_out_15__N_854[9]), 
          .S1(subMean_out_15__N_854[10]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_11.INIT0 = 16'h5999;
    defparam sub_7_add_2_11.INIT1 = 16'h5999;
    defparam sub_7_add_2_11.INJECT1_0 = "NO";
    defparam sub_7_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_9 (.A0(horizontal_out_c_7), .B0(avg[7]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_8), .B1(avg[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2763), .COUT(n2764), .S0(subMean_out_15__N_854[7]), 
          .S1(subMean_out_15__N_854[8]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_9.INIT0 = 16'h5999;
    defparam sub_7_add_2_9.INIT1 = 16'h5999;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_7 (.A0(horizontal_out_c_5), .B0(avg[5]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_6), .B1(avg[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2762), .COUT(n2763), .S0(subMean_out_15__N_854[5]), 
          .S1(subMean_out_15__N_854[6]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_7.INIT0 = 16'h5999;
    defparam sub_7_add_2_7.INIT1 = 16'h5999;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_5 (.A0(horizontal_out_c_3), .B0(avg[3]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_4), .B1(avg[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2761), .COUT(n2762), .S0(subMean_out_15__N_854[3]), 
          .S1(subMean_out_15__N_854[4]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_5.INIT0 = 16'h5999;
    defparam sub_7_add_2_5.INIT1 = 16'h5999;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_3 (.A0(horizontal_out_c_1), .B0(avg[1]), .C0(GND_net), 
          .D0(GND_net), .A1(horizontal_out_c_2), .B1(avg[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2760), .COUT(n2761), .S0(subMean_out_15__N_854[1]), 
          .S1(subMean_out_15__N_854[2]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_3.INIT0 = 16'h5999;
    defparam sub_7_add_2_3.INIT1 = 16'h5999;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    LUT4 i2003_2_lut (.A(sum[0]), .B(horizontal_out_c_0), .Z(sum_19__N_832[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2003_2_lut.init = 16'h6666;
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(horizontal_out_c_0), .B1(avg[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2760));   // c:/users/sec29/desktop/i2s_iot/submean2.v(52[17:36])
    defparam sub_7_add_2_1.INIT0 = 16'h0000;
    defparam sub_7_add_2_1.INIT1 = 16'h5999;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2758), 
          .S0(sum_19__N_832[18]), .S1(sum_19__N_832[19]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_20.INIT0 = 16'h5aaa;
    defparam add_5_20.INIT1 = 16'h5aaa;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2757), 
          .COUT(n2758), .S0(sum_19__N_832[16]), .S1(sum_19__N_832[17]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_18.INIT0 = 16'h5aaa;
    defparam add_5_18.INIT1 = 16'h5aaa;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(sum[14]), .B0(horizontal_out_c_14), .C0(GND_net), 
          .D0(GND_net), .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2756), .COUT(n2757), .S0(sum_19__N_832[14]), .S1(sum_19__N_832[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5aaa;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    CCU2D add_5_14 (.A0(sum[12]), .B0(horizontal_out_c_12), .C0(GND_net), 
          .D0(GND_net), .A1(sum[13]), .B1(horizontal_out_c_13), .C1(GND_net), 
          .D1(GND_net), .CIN(n2755), .COUT(n2756), .S0(sum_19__N_832[12]), 
          .S1(sum_19__N_832[13]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(sum[10]), .B0(horizontal_out_c_10), .C0(GND_net), 
          .D0(GND_net), .A1(sum[11]), .B1(horizontal_out_c_11), .C1(GND_net), 
          .D1(GND_net), .CIN(n2754), .COUT(n2755), .S0(sum_19__N_832[10]), 
          .S1(sum_19__N_832[11]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(sum[8]), .B0(horizontal_out_c_8), .C0(GND_net), 
          .D0(GND_net), .A1(sum[9]), .B1(horizontal_out_c_9), .C1(GND_net), 
          .D1(GND_net), .CIN(n2753), .COUT(n2754), .S0(sum_19__N_832[8]), 
          .S1(sum_19__N_832[9]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(sum[6]), .B0(horizontal_out_c_6), .C0(GND_net), 
          .D0(GND_net), .A1(sum[7]), .B1(horizontal_out_c_7), .C1(GND_net), 
          .D1(GND_net), .CIN(n2752), .COUT(n2753), .S0(sum_19__N_832[6]), 
          .S1(sum_19__N_832[7]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    CCU2D add_5_6 (.A0(sum[4]), .B0(horizontal_out_c_4), .C0(GND_net), 
          .D0(GND_net), .A1(sum[5]), .B1(horizontal_out_c_5), .C1(GND_net), 
          .D1(GND_net), .CIN(n2751), .COUT(n2752), .S0(sum_19__N_832[4]), 
          .S1(sum_19__N_832[5]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(sum[2]), .B0(horizontal_out_c_2), .C0(GND_net), 
          .D0(GND_net), .A1(sum[3]), .B1(horizontal_out_c_3), .C1(GND_net), 
          .D1(GND_net), .CIN(n2750), .COUT(n2751), .S0(sum_19__N_832[2]), 
          .S1(sum_19__N_832[3]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    FD1S3DX sum_i19 (.D(sum_19__N_812[19]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i19.GSR = "ENABLED";
    FD1S3DX sum_i18 (.D(sum_19__N_812[18]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i18.GSR = "ENABLED";
    FD1S3DX sum_i17 (.D(sum_19__N_812[17]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i17.GSR = "ENABLED";
    FD1S3DX sum_i16 (.D(sum_19__N_812[16]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i16.GSR = "ENABLED";
    FD1S3DX sum_i15 (.D(sum_19__N_812[15]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i15.GSR = "ENABLED";
    FD1S3DX sum_i14 (.D(sum_19__N_812[14]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i14.GSR = "ENABLED";
    FD1S3DX sum_i13 (.D(sum_19__N_812[13]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i13.GSR = "ENABLED";
    FD1S3DX sum_i12 (.D(sum_19__N_812[12]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i12.GSR = "ENABLED";
    FD1S3DX sum_i11 (.D(sum_19__N_812[11]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i11.GSR = "ENABLED";
    FD1S3DX sum_i10 (.D(sum_19__N_812[10]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i10.GSR = "ENABLED";
    FD1S3DX sum_i9 (.D(sum_19__N_812[9]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i9.GSR = "ENABLED";
    FD1S3DX sum_i8 (.D(sum_19__N_812[8]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i8.GSR = "ENABLED";
    FD1S3DX sum_i7 (.D(sum_19__N_812[7]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i7.GSR = "ENABLED";
    FD1S3DX sum_i6 (.D(sum_19__N_812[6]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i6.GSR = "ENABLED";
    FD1S3DX sum_i5 (.D(sum_19__N_812[5]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i5.GSR = "ENABLED";
    FD1S3DX sum_i4 (.D(sum_19__N_812[4]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i4.GSR = "ENABLED";
    FD1S3DX sum_i3 (.D(sum_19__N_812[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i3.GSR = "ENABLED";
    FD1S3DX sum_i2 (.D(sum_19__N_812[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i2.GSR = "ENABLED";
    FD1S3DX sum_i1 (.D(sum_19__N_812[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(sum[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam sum_i1.GSR = "ENABLED";
    FD1S3DX avg_i15 (.D(sum[19]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i15.GSR = "ENABLED";
    FD1S3DX avg_i14 (.D(sum[18]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i14.GSR = "ENABLED";
    FD1S3DX avg_i13 (.D(sum[17]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i13.GSR = "ENABLED";
    FD1S3DX avg_i12 (.D(sum[16]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i12.GSR = "ENABLED";
    FD1S3DX avg_i11 (.D(sum[15]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i11.GSR = "ENABLED";
    FD1S3DX avg_i10 (.D(sum[14]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i10.GSR = "ENABLED";
    FD1S3DX avg_i9 (.D(sum[13]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i9.GSR = "ENABLED";
    FD1S3DX avg_i8 (.D(sum[12]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i8.GSR = "ENABLED";
    FD1S3DX avg_i7 (.D(sum[11]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i7.GSR = "ENABLED";
    FD1S3DX avg_i6 (.D(sum[10]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i6.GSR = "ENABLED";
    FD1S3DX avg_i5 (.D(sum[9]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i5.GSR = "ENABLED";
    FD1S3DX avg_i4 (.D(sum[8]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i4.GSR = "ENABLED";
    FD1S3DX avg_i3 (.D(sum[7]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i3.GSR = "ENABLED";
    FD1S3DX avg_i2 (.D(sum[6]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i2.GSR = "ENABLED";
    FD1S3DX avg_i1 (.D(sum[5]), .CK(o_ws_c), .CD(i_sys_rst), .Q(avg[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam avg_i1.GSR = "ENABLED";
    CCU2D add_5_2 (.A0(sum[0]), .B0(horizontal_out_c_0), .C0(GND_net), 
          .D0(GND_net), .A1(sum[1]), .B1(horizontal_out_c_1), .C1(GND_net), 
          .D1(GND_net), .COUT(n2750), .S1(sum_19__N_832[1]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:25])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_21 (.A0(sum_19__N_832[18]), .B0(subMean_left_valid), 
          .C0(subMean_left_valid), .D0(GND_net), .A1(sum_19__N_832[19]), 
          .B1(subMean_left_valid), .C1(subMean_left_valid), .D1(GND_net), 
          .CIN(n2780), .S0(sum_19__N_812[18]), .S1(sum_19__N_812[19]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_21.INIT0 = 16'h5a5a;
    defparam sub_6_add_2_21.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_21.INJECT1_0 = "NO";
    defparam sub_6_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_19 (.A0(sum_19__N_832[16]), .B0(subMean_left_valid), 
          .C0(subMean_left_valid), .D0(GND_net), .A1(sum_19__N_832[17]), 
          .B1(subMean_left_valid), .C1(subMean_left_valid), .D1(GND_net), 
          .CIN(n2779), .COUT(n2780), .S0(sum_19__N_812[16]), .S1(sum_19__N_812[17]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_19.INIT0 = 16'h5a5a;
    defparam sub_6_add_2_19.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_19.INJECT1_0 = "NO";
    defparam sub_6_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_17 (.A0(sum_19__N_832[14]), .B0(subMean_left_valid), 
          .C0(fifo_out[14]), .D0(GND_net), .A1(sum_19__N_832[15]), .B1(subMean_left_valid), 
          .C1(subMean_left_valid), .D1(GND_net), .CIN(n2778), .COUT(n2779), 
          .S0(sum_19__N_812[14]), .S1(sum_19__N_812[15]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_17.INIT0 = 16'h56a6;
    defparam sub_6_add_2_17.INIT1 = 16'h5a5a;
    defparam sub_6_add_2_17.INJECT1_0 = "NO";
    defparam sub_6_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_15 (.A0(sum_19__N_832[12]), .B0(subMean_left_valid), 
          .C0(fifo_out[12]), .D0(GND_net), .A1(sum_19__N_832[13]), .B1(subMean_left_valid), 
          .C1(fifo_out[13]), .D1(GND_net), .CIN(n2777), .COUT(n2778), 
          .S0(sum_19__N_812[12]), .S1(sum_19__N_812[13]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_15.INIT0 = 16'h56a6;
    defparam sub_6_add_2_15.INIT1 = 16'h56a6;
    defparam sub_6_add_2_15.INJECT1_0 = "NO";
    defparam sub_6_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_13 (.A0(sum_19__N_832[10]), .B0(subMean_left_valid), 
          .C0(fifo_out[10]), .D0(GND_net), .A1(sum_19__N_832[11]), .B1(subMean_left_valid), 
          .C1(fifo_out[11]), .D1(GND_net), .CIN(n2776), .COUT(n2777), 
          .S0(sum_19__N_812[10]), .S1(sum_19__N_812[11]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_13.INIT0 = 16'h56a6;
    defparam sub_6_add_2_13.INIT1 = 16'h56a6;
    defparam sub_6_add_2_13.INJECT1_0 = "NO";
    defparam sub_6_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_6_add_2_11 (.A0(sum_19__N_832[8]), .B0(subMean_left_valid), 
          .C0(fifo_out[8]), .D0(GND_net), .A1(sum_19__N_832[9]), .B1(subMean_left_valid), 
          .C1(fifo_out[9]), .D1(GND_net), .CIN(n2775), .COUT(n2776), 
          .S0(sum_19__N_812[8]), .S1(sum_19__N_812[9]));   // c:/users/sec29/desktop/i2s_iot/submean2.v(50[8:34])
    defparam sub_6_add_2_11.INIT0 = 16'h56a6;
    defparam sub_6_add_2_11.INIT1 = 16'h56a6;
    defparam sub_6_add_2_11.INJECT1_0 = "NO";
    defparam sub_6_add_2_11.INJECT1_1 = "NO";
    FD1P3DX subMean_out__i15 (.D(subMean_out_15__N_854[15]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i15.GSR = "ENABLED";
    FD1P3DX subMean_out__i14 (.D(subMean_out_15__N_854[14]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i14.GSR = "ENABLED";
    FD1P3DX subMean_out__i13 (.D(subMean_out_15__N_854[13]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i13.GSR = "ENABLED";
    FD1P3DX subMean_out__i12 (.D(subMean_out_15__N_854[12]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i12.GSR = "ENABLED";
    FD1P3DX subMean_out__i11 (.D(subMean_out_15__N_854[11]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i11.GSR = "ENABLED";
    FD1P3DX subMean_out__i10 (.D(subMean_out_15__N_854[10]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[10] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i10.GSR = "ENABLED";
    FD1P3DX subMean_out__i9 (.D(subMean_out_15__N_854[9]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i9.GSR = "ENABLED";
    FD1P3DX subMean_out__i8 (.D(subMean_out_15__N_854[8]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i8.GSR = "ENABLED";
    FD1P3DX subMean_out__i7 (.D(subMean_out_15__N_854[7]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i7.GSR = "ENABLED";
    FD1P3DX subMean_out__i6 (.D(subMean_out_15__N_854[6]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i6.GSR = "ENABLED";
    FD1P3DX subMean_out__i5 (.D(subMean_out_15__N_854[5]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i5.GSR = "ENABLED";
    FD1P3DX subMean_out__i4 (.D(subMean_out_15__N_854[4]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i4.GSR = "ENABLED";
    FD1P3DX subMean_out__i3 (.D(subMean_out_15__N_854[3]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i3.GSR = "ENABLED";
    FD1P3DX subMean_out__i2 (.D(subMean_out_15__N_854[2]), .SP(subMean_left_valid), 
            .CK(o_ws_c), .CD(i_sys_rst), .Q(\subMean_left_out[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=155, LSE_RLINE=161 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(43[7] 53[6])
    defparam subMean_out__i2.GSR = "ENABLED";
    rising_edge_det r1 (.Full(Full), .o_ws_c(o_ws_c), .i_sys_rst(i_sys_rst), 
            .subMean_left_valid(subMean_left_valid), .n3358(n3358)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/submean2.v(31[17:69])
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

module rising_edge_det (Full, o_ws_c, i_sys_rst, subMean_left_valid, 
            n3358) /* synthesis syn_module_defined=1 */ ;
    input Full;
    input o_ws_c;
    input i_sys_rst;
    output subMean_left_valid;
    input n3358;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    
    wire temp, pe_N_871;
    
    LUT4 pe_I_24_2_lut (.A(temp), .B(Full), .Z(pe_N_871)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(18[11:28])
    defparam pe_I_24_2_lut.init = 16'h4444;
    FD1S3DX temp_10 (.D(Full), .CK(o_ws_c), .CD(i_sys_rst), .Q(temp)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=17, LSE_RCOL=69, LSE_LLINE=31, LSE_RLINE=31 */ ;   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(12[3:13])
    defparam temp_10.GSR = "ENABLED";
    FD1P3DX pe_11 (.D(n3358), .SP(pe_N_871), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(subMean_left_valid));   // c:/users/sec29/desktop/i2s_iot/rising_edge_det.v(18[7] 19[9])
    defparam pe_11.GSR = "ENABLED";
    
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
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    
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

module I2S_Controller_U0 (o_ws_c, o_sck_N_80, i_sys_rst, fifo_in1, wr_en, 
            GND_net, VCC_net, i_sd_c) /* synthesis syn_module_defined=1 */ ;
    output o_ws_c;
    input o_sck_N_80;
    input i_sys_rst;
    output [15:0]fifo_in1;
    output wr_en;
    input GND_net;
    input VCC_net;
    input i_sd_c;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    wire o_sck_N_80 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire [4:0]count;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    
    wire n3261, n2840, o_ws_N_87, n3263, n3259, n3040, n2955;
    wire [4:0]n32;
    
    wire n3262, n2969;
    
    LUT4 i1980_4_lut_4_lut_else_4_lut (.A(count[4]), .Z(n3261)) /* synthesis lut_function=(A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1980_4_lut_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i1_2_lut (.A(o_ws_c), .B(n2840), .Z(o_ws_N_87)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1S3DX count_184__i4 (.D(n3263), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[4]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_184__i4.GSR = "ENABLED";
    FD1S3DX count_184__i3 (.D(n3259), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[3]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_184__i3.GSR = "ENABLED";
    FD1S3DX count_184__i2 (.D(n3040), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[2]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_184__i2.GSR = "ENABLED";
    FD1S3DX count_184__i1 (.D(n2955), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[1]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_184__i1.GSR = "ENABLED";
    FD1S3DX o_ws_13 (.D(o_ws_N_87), .CK(o_sck_N_80), .CD(i_sys_rst), .Q(o_ws_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=18, LSE_RCOL=26, LSE_LLINE=65, LSE_RLINE=75 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(56[3] 64[7])
    defparam o_ws_13.GSR = "ENABLED";
    FD1S3DX count_184__i0 (.D(n32[0]), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(count[0]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_184__i0.GSR = "ENABLED";
    PFUMX i2354 (.BLUT(n3261), .ALUT(n3262), .C0(count[3]), .Z(n3263));
    LUT4 i1955_1_lut (.A(count[0]), .Z(n32[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1955_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_124 (.A(count[0]), .B(count[1]), .Z(n2969)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_124.init = 16'h8888;
    LUT4 i1980_4_lut_4_lut_then_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(count[4]), .Z(n3262)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i1980_4_lut_4_lut_then_4_lut.init = 16'h7f80;
    LUT4 i2223_3_lut_4_lut (.A(n2840), .B(count[2]), .C(count[0]), .D(count[1]), 
         .Z(n3040)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i2223_3_lut_4_lut.init = 16'h1444;
    LUT4 i15_2_lut (.A(count[0]), .B(count[1]), .Z(n2955)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 count_2__bdd_3_lut_4_lut (.A(count[2]), .B(count[3]), .C(count[0]), 
         .D(count[1]), .Z(n3259)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B))) */ ;
    defparam count_2__bdd_3_lut_4_lut.init = 16'h6ccc;
    LUT4 i3_4_lut (.A(count[2]), .B(count[4]), .C(count[3]), .D(n2969), 
         .Z(n2840)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    \i2s_rx(DATA_WIDTH=32)  i2s_rx_inst (.o_sck_N_80(o_sck_N_80), .i_sys_rst(i_sys_rst), 
            .fifo_in1({fifo_in1}), .wr_en(wr_en), .o_ws_c(o_ws_c), .GND_net(GND_net), 
            .VCC_net(VCC_net), .i_sd_c(i_sd_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(69[13] 79[19])
    
endmodule
//
// Verilog Description of module \i2s_rx(DATA_WIDTH=32) 
//

module \i2s_rx(DATA_WIDTH=32)  (o_sck_N_80, i_sys_rst, fifo_in1, wr_en, 
            o_ws_c, GND_net, VCC_net, i_sd_c) /* synthesis syn_module_defined=1 */ ;
    input o_sck_N_80;
    input i_sys_rst;
    output [15:0]fifo_in1;
    output wr_en;
    input o_ws_c;
    input GND_net;
    input VCC_net;
    input i_sd_c;
    
    wire o_sck_N_80 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_controller.v(28[15:20])
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    wire [31:0]right_data_reg_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(44[33:49])
    wire [31:0]right_data_ones_compl_i_31__N_250;
    
    wire ws_reg_i, sd_i;
    wire [31:0]right_data_ones_compl_i;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(57[33:56])
    
    wire ws_i, right_vld_i_N_288, right_vld_i, o_sck_N_80_enable_1, 
        right_vld_reg_i;
    wire [31:0]o_right_data_31__N_122;
    
    wire d1_right_vld, n2800, n2799, n2798, n913, n2797, n2796, 
        n2795, n2794, n2793, n2792, n2791, n2790, n2789, n2788, 
        n2787, n2786;
    
    LUT4 right_data_reg_i_31__I_0_i27_1_lut (.A(right_data_reg_i[26]), .Z(right_data_ones_compl_i_31__N_250[26])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i27_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i2_1_lut (.A(right_data_reg_i[1]), .Z(right_data_ones_compl_i_31__N_250[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i2_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i28_1_lut (.A(right_data_reg_i[27]), .Z(right_data_ones_compl_i_31__N_250[27])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i28_1_lut.init = 16'h5555;
    FD1P3DX right_data_reg_i_i0_i0 (.D(sd_i), .SP(ws_reg_i), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i0.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i0 (.D(right_data_ones_compl_i_31__N_250[0]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i0.GSR = "ENABLED";
    LUT4 ws_reg_i_I_0_2_lut (.A(ws_reg_i), .B(ws_i), .Z(right_vld_i_N_288)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[16:38])
    defparam ws_reg_i_I_0_2_lut.init = 16'h2222;
    LUT4 right_data_reg_i_31__I_0_i26_1_lut (.A(right_data_reg_i[25]), .Z(right_data_ones_compl_i_31__N_250[25])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i26_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i1_1_lut (.A(right_data_reg_i[0]), .Z(right_data_ones_compl_i_31__N_250[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i1_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i19_1_lut (.A(right_data_reg_i[18]), .Z(right_data_ones_compl_i_31__N_250[18])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i19_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i29_1_lut (.A(right_data_reg_i[28]), .Z(right_data_ones_compl_i_31__N_250[28])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i29_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i25_1_lut (.A(right_data_reg_i[24]), .Z(right_data_ones_compl_i_31__N_250[24])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i25_1_lut.init = 16'h5555;
    FD1S3DX ws_reg_i_51 (.D(ws_i), .CK(o_sck_N_80), .CD(i_sys_rst), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_51.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i24_1_lut (.A(right_data_reg_i[23]), .Z(right_data_ones_compl_i_31__N_250[23])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i24_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i30_1_lut (.A(right_data_reg_i[29]), .Z(right_data_ones_compl_i_31__N_250[29])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i30_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i31_1_lut (.A(right_data_reg_i[30]), .Z(right_data_ones_compl_i_31__N_250[30])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i31_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i23_1_lut (.A(right_data_reg_i[22]), .Z(right_data_ones_compl_i_31__N_250[22])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i23_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i22_1_lut (.A(right_data_reg_i[21]), .Z(right_data_ones_compl_i_31__N_250[21])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i22_1_lut.init = 16'h5555;
    FD1P3DX right_vld_i_56 (.D(right_vld_i_N_288), .SP(o_sck_N_80_enable_1), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_vld_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam right_vld_i_56.GSR = "ENABLED";
    FD1S3DX right_vld_reg_i_58 (.D(right_vld_i), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(right_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam right_vld_reg_i_58.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i0 (.D(o_right_data_31__N_122[16]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i0.GSR = "ENABLED";
    FD1S3DX d2_right_vld_66 (.D(d1_right_vld), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(wr_en)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d2_right_vld_66.GSR = "ENABLED";
    FD1S3DX ws_i_50 (.D(o_ws_c), .CK(o_sck_N_80), .CD(i_sys_rst), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_i_50.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i21_1_lut (.A(right_data_reg_i[20]), .Z(right_data_ones_compl_i_31__N_250[20])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i21_1_lut.init = 16'h5555;
    CCU2D add_136_32 (.A0(right_data_ones_compl_i[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2800), .S0(o_right_data_31__N_122[31]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_32.INIT0 = 16'h5aaa;
    defparam add_136_32.INIT1 = 16'h0000;
    defparam add_136_32.INJECT1_0 = "NO";
    defparam add_136_32.INJECT1_1 = "NO";
    CCU2D add_136_30 (.A0(right_data_ones_compl_i[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2799), .COUT(n2800), .S0(o_right_data_31__N_122[29]), 
          .S1(o_right_data_31__N_122[30]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_30.INIT0 = 16'h5aaa;
    defparam add_136_30.INIT1 = 16'h5aaa;
    defparam add_136_30.INJECT1_0 = "NO";
    defparam add_136_30.INJECT1_1 = "NO";
    CCU2D add_136_28 (.A0(right_data_ones_compl_i[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2798), .COUT(n2799), .S0(o_right_data_31__N_122[27]), 
          .S1(o_right_data_31__N_122[28]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_28.INIT0 = 16'h5aaa;
    defparam add_136_28.INIT1 = 16'h5aaa;
    defparam add_136_28.INJECT1_0 = "NO";
    defparam add_136_28.INJECT1_1 = "NO";
    LUT4 i1335_2_lut (.A(right_vld_i), .B(right_vld_reg_i), .Z(n913)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam i1335_2_lut.init = 16'h2222;
    FD1S3DX right_data_twos_compl_i_i15 (.D(o_right_data_31__N_122[31]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i15.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i14 (.D(o_right_data_31__N_122[30]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i14.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i13 (.D(o_right_data_31__N_122[29]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i13.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i12 (.D(o_right_data_31__N_122[28]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i12.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i11 (.D(o_right_data_31__N_122[27]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i11.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i10 (.D(o_right_data_31__N_122[26]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i10.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i9 (.D(o_right_data_31__N_122[25]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i9.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i8 (.D(o_right_data_31__N_122[24]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i8.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i7 (.D(o_right_data_31__N_122[23]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i7.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i6 (.D(o_right_data_31__N_122[22]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i6.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i5 (.D(o_right_data_31__N_122[21]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i5.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i4 (.D(o_right_data_31__N_122[20]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i4.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i3 (.D(o_right_data_31__N_122[19]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i3.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i2 (.D(o_right_data_31__N_122[18]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i2.GSR = "ENABLED";
    FD1S3DX right_data_twos_compl_i_i1 (.D(o_right_data_31__N_122[17]), .CK(o_sck_N_80), 
            .CD(i_sys_rst), .Q(fifo_in1[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i1.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i31 (.D(right_data_ones_compl_i_31__N_250[31]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i31.GSR = "ENABLED";
    CCU2D add_136_26 (.A0(right_data_ones_compl_i[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2797), .COUT(n2798), .S0(o_right_data_31__N_122[25]), 
          .S1(o_right_data_31__N_122[26]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_26.INIT0 = 16'h5aaa;
    defparam add_136_26.INIT1 = 16'h5aaa;
    defparam add_136_26.INJECT1_0 = "NO";
    defparam add_136_26.INJECT1_1 = "NO";
    FD1S3DX right_data_ones_compl_i_i30 (.D(right_data_ones_compl_i_31__N_250[30]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i30.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i29 (.D(right_data_ones_compl_i_31__N_250[29]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i29.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i28 (.D(right_data_ones_compl_i_31__N_250[28]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i28.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i27 (.D(right_data_ones_compl_i_31__N_250[27]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i27.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i26 (.D(right_data_ones_compl_i_31__N_250[26]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i26.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i25 (.D(right_data_ones_compl_i_31__N_250[25]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i25.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i24 (.D(right_data_ones_compl_i_31__N_250[24]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i24.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i23 (.D(right_data_ones_compl_i_31__N_250[23]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i23.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i22 (.D(right_data_ones_compl_i_31__N_250[22]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i22.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i21 (.D(right_data_ones_compl_i_31__N_250[21]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i21.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i20 (.D(right_data_ones_compl_i_31__N_250[20]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i20.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i19 (.D(right_data_ones_compl_i_31__N_250[19]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i19.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i18 (.D(right_data_ones_compl_i_31__N_250[18]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i18.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i17 (.D(right_data_ones_compl_i_31__N_250[17]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i17.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i16 (.D(right_data_ones_compl_i_31__N_250[16]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i16.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i15 (.D(right_data_ones_compl_i_31__N_250[15]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i15.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i14 (.D(right_data_ones_compl_i_31__N_250[14]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i14.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i13 (.D(right_data_ones_compl_i_31__N_250[13]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i13.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i12 (.D(right_data_ones_compl_i_31__N_250[12]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i12.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i11 (.D(right_data_ones_compl_i_31__N_250[11]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i11.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i10 (.D(right_data_ones_compl_i_31__N_250[10]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i10.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i9 (.D(right_data_ones_compl_i_31__N_250[9]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i9.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i8 (.D(right_data_ones_compl_i_31__N_250[8]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i8.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i7 (.D(right_data_ones_compl_i_31__N_250[7]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i7.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i6 (.D(right_data_ones_compl_i_31__N_250[6]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i6.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i5 (.D(right_data_ones_compl_i_31__N_250[5]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i5.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i4 (.D(right_data_ones_compl_i_31__N_250[4]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i4.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i3 (.D(right_data_ones_compl_i_31__N_250[3]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i3.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i2 (.D(right_data_ones_compl_i_31__N_250[2]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i2.GSR = "ENABLED";
    FD1S3DX right_data_ones_compl_i_i1 (.D(right_data_ones_compl_i_31__N_250[1]), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i1.GSR = "ENABLED";
    CCU2D add_136_24 (.A0(right_data_ones_compl_i[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2796), .COUT(n2797), .S0(o_right_data_31__N_122[23]), 
          .S1(o_right_data_31__N_122[24]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_24.INIT0 = 16'h5aaa;
    defparam add_136_24.INIT1 = 16'h5aaa;
    defparam add_136_24.INJECT1_0 = "NO";
    defparam add_136_24.INJECT1_1 = "NO";
    CCU2D add_136_22 (.A0(right_data_ones_compl_i[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2795), .COUT(n2796), .S0(o_right_data_31__N_122[21]), 
          .S1(o_right_data_31__N_122[22]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_22.INIT0 = 16'h5aaa;
    defparam add_136_22.INIT1 = 16'h5aaa;
    defparam add_136_22.INJECT1_0 = "NO";
    defparam add_136_22.INJECT1_1 = "NO";
    CCU2D add_136_20 (.A0(right_data_ones_compl_i[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2794), .COUT(n2795), .S0(o_right_data_31__N_122[19]), 
          .S1(o_right_data_31__N_122[20]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_20.INIT0 = 16'h5aaa;
    defparam add_136_20.INIT1 = 16'h5aaa;
    defparam add_136_20.INJECT1_0 = "NO";
    defparam add_136_20.INJECT1_1 = "NO";
    CCU2D add_136_18 (.A0(right_data_ones_compl_i[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2793), .COUT(n2794), .S0(o_right_data_31__N_122[17]), 
          .S1(o_right_data_31__N_122[18]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_18.INIT0 = 16'h5aaa;
    defparam add_136_18.INIT1 = 16'h5aaa;
    defparam add_136_18.INJECT1_0 = "NO";
    defparam add_136_18.INJECT1_1 = "NO";
    CCU2D add_136_16 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2792), .COUT(n2793), .S1(o_right_data_31__N_122[16]));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_16.INIT0 = 16'h5aaa;
    defparam add_136_16.INIT1 = 16'h5aaa;
    defparam add_136_16.INJECT1_0 = "NO";
    defparam add_136_16.INJECT1_1 = "NO";
    CCU2D add_136_14 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2791), .COUT(n2792));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_14.INIT0 = 16'h5aaa;
    defparam add_136_14.INIT1 = 16'h5aaa;
    defparam add_136_14.INJECT1_0 = "NO";
    defparam add_136_14.INJECT1_1 = "NO";
    CCU2D add_136_12 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2790), .COUT(n2791));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_12.INIT0 = 16'h5aaa;
    defparam add_136_12.INIT1 = 16'h5aaa;
    defparam add_136_12.INJECT1_0 = "NO";
    defparam add_136_12.INJECT1_1 = "NO";
    CCU2D add_136_10 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2789), .COUT(n2790));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_10.INIT0 = 16'h5aaa;
    defparam add_136_10.INIT1 = 16'h5aaa;
    defparam add_136_10.INJECT1_0 = "NO";
    defparam add_136_10.INJECT1_1 = "NO";
    CCU2D add_136_8 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2788), .COUT(n2789));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_8.INIT0 = 16'h5aaa;
    defparam add_136_8.INIT1 = 16'h5aaa;
    defparam add_136_8.INJECT1_0 = "NO";
    defparam add_136_8.INJECT1_1 = "NO";
    CCU2D add_136_6 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2787), .COUT(n2788));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_6.INIT0 = 16'h5aaa;
    defparam add_136_6.INIT1 = 16'h5aaa;
    defparam add_136_6.INJECT1_0 = "NO";
    defparam add_136_6.INJECT1_1 = "NO";
    CCU2D add_136_4 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2786), .COUT(n2787));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_4.INIT0 = 16'h5aaa;
    defparam add_136_4.INIT1 = 16'h5aaa;
    defparam add_136_4.INJECT1_0 = "NO";
    defparam add_136_4.INJECT1_1 = "NO";
    CCU2D add_136_2 (.A0(right_data_ones_compl_i[1]), .B0(right_data_ones_compl_i[0]), 
          .C0(GND_net), .D0(GND_net), .A1(right_data_ones_compl_i[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2786));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_136_2.INIT0 = 16'h7000;
    defparam add_136_2.INIT1 = 16'h5aaa;
    defparam add_136_2.INJECT1_0 = "NO";
    defparam add_136_2.INJECT1_1 = "NO";
    FD1S3DX d1_right_vld_65 (.D(n913), .CK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(d1_right_vld));   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d1_right_vld_65.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i31 (.D(right_data_reg_i[30]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i31.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i30 (.D(right_data_reg_i[29]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i30.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i29 (.D(right_data_reg_i[28]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i29.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i28 (.D(right_data_reg_i[27]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i28.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i27 (.D(right_data_reg_i[26]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i27.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i26 (.D(right_data_reg_i[25]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i26.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i25 (.D(right_data_reg_i[24]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i25.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i24 (.D(right_data_reg_i[23]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i24.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i23 (.D(right_data_reg_i[22]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i23.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i22 (.D(right_data_reg_i[21]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i22.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i21 (.D(right_data_reg_i[20]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i21.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i20 (.D(right_data_reg_i[19]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i20.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i19 (.D(right_data_reg_i[18]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i19.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i18 (.D(right_data_reg_i[17]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i18.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i17 (.D(right_data_reg_i[16]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i17.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i16 (.D(right_data_reg_i[15]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i16.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i15 (.D(right_data_reg_i[14]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i15.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i14 (.D(right_data_reg_i[13]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i14.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i13 (.D(right_data_reg_i[12]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i13.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i12 (.D(right_data_reg_i[11]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i12.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i11 (.D(right_data_reg_i[10]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i11.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i10 (.D(right_data_reg_i[9]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i10.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i9 (.D(right_data_reg_i[8]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i9.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i8 (.D(right_data_reg_i[7]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i8.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i7 (.D(right_data_reg_i[6]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i7.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i6 (.D(right_data_reg_i[5]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i6.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i5 (.D(right_data_reg_i[4]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i5.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i4 (.D(right_data_reg_i[3]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i4.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i3 (.D(right_data_reg_i[2]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i3.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i2 (.D(right_data_reg_i[1]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i2.GSR = "ENABLED";
    FD1P3DX right_data_reg_i_i0_i1 (.D(right_data_reg_i[0]), .SP(ws_reg_i), 
            .CK(o_sck_N_80), .CD(i_sys_rst), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i1.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i17_1_lut (.A(right_data_reg_i[16]), .Z(right_data_ones_compl_i_31__N_250[16])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i17_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i16_1_lut (.A(right_data_reg_i[15]), .Z(right_data_ones_compl_i_31__N_250[15])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i16_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i15_1_lut (.A(right_data_reg_i[14]), .Z(right_data_ones_compl_i_31__N_250[14])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i15_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i14_1_lut (.A(right_data_reg_i[13]), .Z(right_data_ones_compl_i_31__N_250[13])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i14_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i13_1_lut (.A(right_data_reg_i[12]), .Z(right_data_ones_compl_i_31__N_250[12])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i13_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i32_1_lut (.A(right_data_reg_i[31]), .Z(right_data_ones_compl_i_31__N_250[31])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i32_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i18_1_lut (.A(right_data_reg_i[17]), .Z(right_data_ones_compl_i_31__N_250[17])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i18_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i20_1_lut (.A(right_data_reg_i[19]), .Z(right_data_ones_compl_i_31__N_250[19])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i20_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i12_1_lut (.A(right_data_reg_i[11]), .Z(right_data_ones_compl_i_31__N_250[11])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i12_1_lut.init = 16'h5555;
    IFS1P3DX sd_i_52 (.D(i_sd_c), .SP(VCC_net), .SCLK(o_sck_N_80), .CD(i_sys_rst), 
            .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam sd_i_52.GSR = "ENABLED";
    LUT4 right_data_reg_i_31__I_0_i11_1_lut (.A(right_data_reg_i[10]), .Z(right_data_ones_compl_i_31__N_250[10])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i11_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i10_1_lut (.A(right_data_reg_i[9]), .Z(right_data_ones_compl_i_31__N_250[9])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i10_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i9_1_lut (.A(right_data_reg_i[8]), .Z(right_data_ones_compl_i_31__N_250[8])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i9_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i8_1_lut (.A(right_data_reg_i[7]), .Z(right_data_ones_compl_i_31__N_250[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i8_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i7_1_lut (.A(right_data_reg_i[6]), .Z(right_data_ones_compl_i_31__N_250[6])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i7_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i6_1_lut (.A(right_data_reg_i[5]), .Z(right_data_ones_compl_i_31__N_250[5])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i6_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i5_1_lut (.A(right_data_reg_i[4]), .Z(right_data_ones_compl_i_31__N_250[4])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i5_1_lut.init = 16'h5555;
    LUT4 i15_2_lut (.A(ws_reg_i), .B(ws_i), .Z(o_sck_N_80_enable_1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 right_data_reg_i_31__I_0_i4_1_lut (.A(right_data_reg_i[3]), .Z(right_data_ones_compl_i_31__N_250[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i4_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_31__I_0_i3_1_lut (.A(right_data_reg_i[2]), .Z(right_data_ones_compl_i_31__N_250[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_31__I_0_i3_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module zcr
//

module zcr (\window_count[3] , \window_count[0] , \zcr_count_left[2] , 
            o_ws_c, o_ws_c_enable_41, n1797, Rst_L_N_8349, horizontal_out_c_15, 
            i_sys_rst, o_ws_c_enable_34, \zcr_count_left[5] , \zcr_count_left[4] , 
            \zcr_count_left[3] , zcr_valid_left, GND_net, n46, \zcr_count_temp[0] , 
            n2459) /* synthesis syn_module_defined=1 */ ;
    output \window_count[3] ;
    output \window_count[0] ;
    output \zcr_count_left[2] ;
    input o_ws_c;
    input o_ws_c_enable_41;
    output n1797;
    input Rst_L_N_8349;
    input horizontal_out_c_15;
    input i_sys_rst;
    input o_ws_c_enable_34;
    output \zcr_count_left[5] ;
    output \zcr_count_left[4] ;
    output \zcr_count_left[3] ;
    output zcr_valid_left;
    input GND_net;
    output n46;
    output \zcr_count_temp[0] ;
    input n2459;
    
    wire o_ws_c /* synthesis SET_AS_NETWORK=o_ws_c, is_clock=1 */ ;   // c:/users/sec29/desktop/i2s_iot/top.v(28[32:36])
    wire [15:0]\zcr_window[2] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    wire [15:0]\zcr_window[6] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    wire [6:0]window_count;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    
    wire n3192, o_ws_c_enable_36;
    wire [5:0]zcr_count_temp;   // c:/users/sec29/desktop/i2s_iot/zcr.v(18[11:25])
    
    wire n48, o_ws_c_enable_46, n45, o_ws_c_enable_45, n1653, n5, 
        n1782, not_previous_N_628, n1783, n3193, n3;
    wire [15:0]\zcr_window[0] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    wire [15:0]\zcr_window[4] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_43, o_ws_c_enable_29, current_N_618;
    wire [15:0]\zcr_window[3] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_51, n1643;
    wire [3:0]n27;
    wire [15:0]\zcr_window[7] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire n1637;
    wire [15:0]\zcr_window[5] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_38, o_ws_c_enable_42, not_previous, current;
    wire [15:0]\zcr_window[1] ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(22[12:22])
    
    wire o_ws_c_enable_47, n1645, n2783, n1777, n2782, n1641, n1635, 
        n505, n2732, n3090, n1639, n3089, n2730, n2731;
    
    LUT4 \zcr_window_2[[15__bdd_3_lut  (.A(\zcr_window[2] [15]), .B(\zcr_window[6] [15]), 
         .C(window_count[2]), .Z(n3192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \zcr_window_2[[15__bdd_3_lut .init = 16'hcaca;
    LUT4 i967_3_lut_4_lut (.A(\window_count[3] ), .B(\window_count[0] ), 
         .C(window_count[1]), .D(window_count[2]), .Z(o_ws_c_enable_36)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam i967_3_lut_4_lut.init = 16'hbaaa;
    FD1P3AX zcr_count__i1 (.D(zcr_count_temp[2]), .SP(o_ws_c_enable_41), 
            .CK(o_ws_c), .Q(\zcr_count_left[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(window_count[1]), .B(window_count[2]), .Z(n1797)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(\window_count[0] ), .B(window_count[2]), .C(window_count[1]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut (.A(\window_count[3] ), .B(\window_count[0] ), .C(window_count[2]), 
         .D(window_count[1]), .Z(o_ws_c_enable_46)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut.init = 16'haaae;
    LUT4 i1_4_lut (.A(Rst_L_N_8349), .B(n45), .C(n48), .D(\window_count[3] ), 
         .Z(o_ws_c_enable_45)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a88;
    LUT4 i1281_2_lut (.A(horizontal_out_c_15), .B(\window_count[3] ), .Z(n1653)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam i1281_2_lut.init = 16'h2222;
    LUT4 i1087_3_lut (.A(n5), .B(n1782), .C(\window_count[0] ), .Z(not_previous_N_628)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1087_3_lut.init = 16'h3535;
    PFUMX i2333 (.BLUT(n1783), .ALUT(n3192), .C0(window_count[1]), .Z(n3193));
    LUT4 i1085_3_lut (.A(n3), .B(n1783), .C(window_count[1]), .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1085_3_lut.init = 16'hcaca;
    LUT4 i1083_3_lut (.A(\zcr_window[6] [15]), .B(\zcr_window[2] [15]), 
         .C(window_count[2]), .Z(n3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1083_3_lut.init = 16'hcaca;
    LUT4 i1077_3_lut (.A(\zcr_window[0] [15]), .B(\zcr_window[4] [15]), 
         .C(window_count[2]), .Z(n1783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1077_3_lut.init = 16'hcaca;
    LUT4 i955_3_lut_4_lut (.A(window_count[1]), .B(window_count[2]), .C(\window_count[0] ), 
         .D(\window_count[3] ), .Z(o_ws_c_enable_43)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i955_3_lut_4_lut.init = 16'hff02;
    LUT4 i1_3_lut_4_lut_adj_119 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_29)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_119.init = 16'hff20;
    LUT4 n1782_bdd_3_lut (.A(n1782), .B(n3193), .C(\window_count[0] ), 
         .Z(current_N_618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1782_bdd_3_lut.init = 16'hcaca;
    FD1P3DX \zcr_window_3[[15__228  (.D(n1653), .SP(o_ws_c_enable_29), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[3] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_3[[15__228 .GSR = "ENABLED";
    FD1P3DX zcr_count_temp__i2 (.D(n1643), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i2.GSR = "ENABLED";
    FD1S3DX window_count_189_190__i1 (.D(n27[0]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190__i1.GSR = "ENABLED";
    FD1S3DX window_count_189_190__i4 (.D(n27[3]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(\window_count[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190__i4.GSR = "ENABLED";
    FD1P3AX \zcr_window_7[[15__294  (.D(horizontal_out_c_15), .SP(o_ws_c_enable_34), 
            .CK(o_ws_c), .Q(\zcr_window[7] [15]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_7[[15__294 .GSR = "ENABLED";
    FD1S3DX window_count_189_190__i3 (.D(n27[2]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190__i3.GSR = "ENABLED";
    FD1P3DX \zcr_window_6[[15__276  (.D(n1653), .SP(o_ws_c_enable_36), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[6] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_6[[15__276 .GSR = "ENABLED";
    FD1S3DX window_count_189_190__i2 (.D(n27[1]), .CK(o_ws_c), .CD(i_sys_rst), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190__i2.GSR = "ENABLED";
    FD1P3DX zcr_count_temp__i5 (.D(n1637), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i5.GSR = "ENABLED";
    FD1P3DX \zcr_window_5[[15__260  (.D(n1653), .SP(o_ws_c_enable_38), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[5] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_5[[15__260 .GSR = "ENABLED";
    FD1P3AX zcr_count__i4 (.D(zcr_count_temp[5]), .SP(o_ws_c_enable_41), 
            .CK(o_ws_c), .Q(\zcr_count_left[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i4.GSR = "ENABLED";
    FD1P3AX zcr_count__i3 (.D(zcr_count_temp[4]), .SP(o_ws_c_enable_41), 
            .CK(o_ws_c), .Q(\zcr_count_left[4] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i3.GSR = "ENABLED";
    FD1P3AX zcr_count__i2 (.D(zcr_count_temp[3]), .SP(o_ws_c_enable_41), 
            .CK(o_ws_c), .Q(\zcr_count_left[3] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_count__i2.GSR = "ENABLED";
    FD1P3DX \zcr_window_4[[15__244  (.D(n1653), .SP(o_ws_c_enable_42), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[4] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_4[[15__244 .GSR = "ENABLED";
    FD1P3DX \zcr_window_2[[15__212  (.D(n1653), .SP(o_ws_c_enable_43), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[2] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_2[[15__212 .GSR = "ENABLED";
    FD1P3AX zcr_valid_178 (.D(\window_count[3] ), .SP(Rst_L_N_8349), .CK(o_ws_c), 
            .Q(zcr_valid_left));   // c:/users/sec29/desktop/i2s_iot/zcr.v(34[3] 46[6])
    defparam zcr_valid_178.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n48), .B(\window_count[3] ), .C(n45), .Z(o_ws_c_enable_51)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h7575;
    FD1P3AX not_previous_327 (.D(not_previous_N_628), .SP(o_ws_c_enable_45), 
            .CK(o_ws_c), .Q(not_previous));   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam not_previous_327.GSR = "ENABLED";
    FD1P3AX current_326 (.D(current_N_618), .SP(o_ws_c_enable_45), .CK(o_ws_c), 
            .Q(current));   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam current_326.GSR = "ENABLED";
    FD1P3DX \zcr_window_1[[15__196  (.D(n1653), .SP(o_ws_c_enable_46), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[1] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_1[[15__196 .GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(\window_count[3] ), .B(\window_count[0] ), 
         .C(window_count[2]), .D(window_count[1]), .Z(o_ws_c_enable_47)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_2_lut_3_lut_4_lut.init = 16'haaab;
    LUT4 i1_3_lut_adj_120 (.A(\window_count[0] ), .B(window_count[2]), .C(window_count[1]), 
         .Z(n45)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_3_lut_adj_120.init = 16'hecec;
    FD1P3DX \zcr_window_0[[15__180  (.D(n1653), .SP(o_ws_c_enable_47), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_window[0] [15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(57[4:35])
    defparam \zcr_window_0[[15__180 .GSR = "ENABLED";
    FD1P3DX zcr_count_temp__i1 (.D(n1645), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i1.GSR = "ENABLED";
    CCU2D window_count_189_190_add_4_5 (.A0(\window_count[3] ), .B0(n1777), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2783), .S0(n27[3]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190_add_4_5.INIT0 = 16'h7888;
    defparam window_count_189_190_add_4_5.INIT1 = 16'h0000;
    defparam window_count_189_190_add_4_5.INJECT1_0 = "NO";
    defparam window_count_189_190_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_189_190_add_4_3 (.A0(window_count[1]), .B0(\window_count[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2782), .COUT(n2783), .S0(n27[1]), 
          .S1(n27[2]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190_add_4_3.INIT0 = 16'hd222;
    defparam window_count_189_190_add_4_3.INIT1 = 16'hd222;
    defparam window_count_189_190_add_4_3.INJECT1_0 = "NO";
    defparam window_count_189_190_add_4_3.INJECT1_1 = "NO";
    LUT4 i1071_1_lut (.A(\window_count[3] ), .Z(n1777)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1071_1_lut.init = 16'h5555;
    FD1P3DX zcr_count_temp__i3 (.D(n1641), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_121 (.A(window_count[2]), .B(window_count[1]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(21[11:23])
    defparam i1_2_lut_adj_121.init = 16'heeee;
    CCU2D window_count_189_190_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\window_count[0] ), .B1(\window_count[3] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2782), .S1(n27[0]));   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam window_count_189_190_add_4_1.INIT0 = 16'hF000;
    defparam window_count_189_190_add_4_1.INIT1 = 16'hd111;
    defparam window_count_189_190_add_4_1.INJECT1_0 = "NO";
    defparam window_count_189_190_add_4_1.INJECT1_1 = "NO";
    FD1P3DX zcr_count_temp__i0 (.D(n1635), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(\zcr_count_temp[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_122 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_42)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_122.init = 16'hff04;
    LUT4 i1_3_lut_4_lut_adj_123 (.A(window_count[1]), .B(window_count[2]), 
         .C(\window_count[0] ), .D(\window_count[3] ), .Z(o_ws_c_enable_38)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(37[18:32])
    defparam i1_3_lut_4_lut_adj_123.init = 16'hff40;
    LUT4 i162_2_lut (.A(current), .B(not_previous), .Z(n505)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(69[8:31])
    defparam i162_2_lut.init = 16'h9999;
    CCU2D add_337_7 (.A0(n46), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[5]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2732), .S0(n1637));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_7.INIT0 = 16'hfe00;
    defparam add_337_7.INIT1 = 16'h0000;
    defparam add_337_7.INJECT1_0 = "NO";
    defparam add_337_7.INJECT1_1 = "NO";
    LUT4 i2267_3_lut (.A(\zcr_window[1] [15]), .B(\zcr_window[5] [15]), 
         .C(window_count[2]), .Z(n3090)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2267_3_lut.init = 16'hcaca;
    FD1P3DX zcr_count_temp__i4 (.D(n1639), .SP(o_ws_c_enable_51), .CK(o_ws_c), 
            .CD(i_sys_rst), .Q(zcr_count_temp[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=139, LSE_RLINE=145 */ ;   // c:/users/sec29/desktop/i2s_iot/zcr.v(65[8] 71[10])
    defparam zcr_count_temp__i4.GSR = "ENABLED";
    PFUMX i2268 (.BLUT(n3089), .ALUT(n3090), .C0(window_count[1]), .Z(n1782));
    CCU2D add_337_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2459), .B1(\window_count[3] ), .C1(n48), .D1(n505), .COUT(n2730), 
          .S1(n1635));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_1.INIT0 = 16'hF000;
    defparam add_337_1.INIT1 = 16'h56aa;
    defparam add_337_1.INJECT1_0 = "NO";
    defparam add_337_1.INJECT1_1 = "NO";
    LUT4 i2266_3_lut (.A(\zcr_window[7] [15]), .B(\zcr_window[3] [15]), 
         .C(window_count[2]), .Z(n3089)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2266_3_lut.init = 16'hcaca;
    CCU2D add_337_5 (.A0(n46), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[3]), .A1(n46), .B1(\window_count[0] ), .C1(\window_count[3] ), 
          .D1(zcr_count_temp[4]), .CIN(n2731), .COUT(n2732), .S0(n1641), 
          .S1(n1639));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_5.INIT0 = 16'hfe00;
    defparam add_337_5.INIT1 = 16'hfe00;
    defparam add_337_5.INJECT1_0 = "NO";
    defparam add_337_5.INJECT1_1 = "NO";
    CCU2D add_337_3 (.A0(n46), .B0(\window_count[0] ), .C0(\window_count[3] ), 
          .D0(zcr_count_temp[1]), .A1(n46), .B1(\window_count[0] ), .C1(\window_count[3] ), 
          .D1(zcr_count_temp[2]), .CIN(n2730), .COUT(n2731), .S0(n1645), 
          .S1(n1643));   // c:/users/sec29/desktop/i2s_iot/zcr.v(70[24:40])
    defparam add_337_3.INIT0 = 16'hfe00;
    defparam add_337_3.INIT1 = 16'hfe00;
    defparam add_337_3.INJECT1_0 = "NO";
    defparam add_337_3.INJECT1_1 = "NO";
    
endmodule
