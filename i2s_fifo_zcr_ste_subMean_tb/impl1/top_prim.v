// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Mar 05 11:24:42 2017
//
// Verilog Description of module top
//

module top (rst, i_sd, o_sck, o_ws, o_left_data, o_right_data, o_left_vld, 
            o_right_vld, zcr_valid_right, zcr_valid_left, ste, ste_valid, 
            subMean_out, subMean_valid) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(1[8:11])
    input rst;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    input i_sd;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(22[32:36])
    output o_sck;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    output o_ws;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(21[28:32])
    output [15:0]o_left_data;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    output [15:0]o_right_data;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    output o_left_vld;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(26[30:40])
    output o_right_vld;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[30:41])
    output zcr_valid_right;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[42:57])
    output zcr_valid_left;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[58:72])
    output ste;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(28[30:33])
    output ste_valid;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(28[34:43])
    output [15:0]subMean_out;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    output subMean_valid;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(30[9:22])
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire GND_net, VCC_net, rst_c, o_ws_c, i_sd_c, o_left_data_c_15, 
        o_left_data_c_14, o_left_data_c_13, o_left_data_c_12, o_left_data_c_11, 
        o_left_data_c_10, o_left_data_c_9, o_left_data_c_8, o_left_data_c_7, 
        o_left_data_c_6, o_left_data_c_5, o_left_data_c_4, o_left_data_c_3, 
        o_left_data_c_2, o_left_data_c_1, o_left_data_c_0, o_right_data_c_15, 
        o_right_data_c_14, o_right_data_c_13, o_right_data_c_12, o_right_data_c_11, 
        o_right_data_c_10, o_right_data_c_9, o_right_data_c_8, o_right_data_c_7, 
        o_right_data_c_6, o_right_data_c_5, o_right_data_c_4, o_right_data_c_3, 
        o_right_data_c_2, o_right_data_c_1, o_right_data_c_0, o_left_vld_c, 
        o_right_vld_c;
    wire [15:0]left_out;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(32[16:24])
    wire [15:0]right_out;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(32[25:34])
    
    wire zcr_valid_right_c, zcr_valid_left_c, ste_c, ste_valid_c, subMean_out_c_15, 
        subMean_out_c_14, subMean_out_c_13, subMean_out_c_12, subMean_out_c_11, 
        subMean_out_c_10, subMean_out_c_9, subMean_out_c_8, subMean_out_c_7, 
        subMean_out_c_6, subMean_out_c_5, subMean_out_c_4, subMean_out_c_3, 
        subMean_out_c_2, subMean_out_c_1, subMean_out_c_0, subMean_valid_c;
    wire [16:0]left_out_15__N_33;
    wire [31:0]left_out_15__N_1;
    wire [16:0]right_out_15__N_50;
    wire [31:0]right_out_15__N_17;
    
    wire lock, i_sys_rst, n10, n9, n8, n7, n3029, n3028, n3027, 
        n3026;
    wire [4:0]window_count_adj_957;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(21[11:23])
    wire [31:0]m;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(24[9:10])
    
    wire n3025, n3024, n3023, n3022, n4055, fifo_read_clk_enable_293, 
        n2967, n2968, n2969, n2966, n2970, n2971, n2965, n2964;
    
    VHI i2 (.Z(VCC_net));
    fifo_left left_out_15__I_0 (.\left_out_15__N_1[15] (left_out_15__N_1[15]), 
            .\left_out_15__N_1[14] (left_out_15__N_1[14]), .\left_out_15__N_1[13] (left_out_15__N_1[13]), 
            .\left_out_15__N_1[12] (left_out_15__N_1[12]), .\left_out_15__N_1[11] (left_out_15__N_1[11]), 
            .\left_out_15__N_1[10] (left_out_15__N_1[10]), .\left_out_15__N_1[9] (left_out_15__N_1[9]), 
            .\left_out_15__N_1[8] (left_out_15__N_1[8]), .\left_out_15__N_1[7] (left_out_15__N_1[7]), 
            .\left_out_15__N_1[6] (left_out_15__N_1[6]), .\left_out_15__N_1[5] (left_out_15__N_1[5]), 
            .\left_out_15__N_1[4] (left_out_15__N_1[4]), .\left_out_15__N_1[3] (left_out_15__N_1[3]), 
            .\left_out_15__N_1[2] (left_out_15__N_1[2]), .\left_out_15__N_1[1] (left_out_15__N_1[1]), 
            .\left_out_15__N_1[0] (left_out_15__N_1[0]), .o_sck_c(o_sck_c), 
            .fifo_read_clk(fifo_read_clk), .o_left_vld_c(o_left_vld_c), 
            .VCC_net(VCC_net), .rst_c(rst_c), .GND_net(GND_net), .left_out({left_out})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[11] 56[20])
    OB subMean_out_pad_1 (.I(subMean_out_c_1), .O(subMean_out[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_2 (.I(subMean_out_c_2), .O(subMean_out[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    I2S_Controller port1 (.o_ws_c(o_ws_c), .i_sys_rst(i_sys_rst), .GND_net(GND_net), 
            .o_sck_c(o_sck_c), .rst_c(rst_c), .fifo_read_clk(fifo_read_clk), 
            .lock(lock), .o_left_data_c_0(o_left_data_c_0), .o_right_data_c_0(o_right_data_c_0), 
            .o_left_vld_c(o_left_vld_c), .o_right_vld_c(o_right_vld_c), 
            .VCC_net(VCC_net), .i_sd_c(i_sd_c), .o_left_data_c_1(o_left_data_c_1), 
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
            .o_right_data_c_15(o_right_data_c_15)) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(40[18] 50[25])
    IB i_sd_pad (.I(i_sd), .O(i_sd_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(22[32:36])
    OB subMean_out_pad_6 (.I(subMean_out_c_6), .O(subMean_out[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_7 (.I(subMean_out_c_7), .O(subMean_out[7]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_8 (.I(subMean_out_c_8), .O(subMean_out[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_9 (.I(subMean_out_c_9), .O(subMean_out[9]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_10 (.I(subMean_out_c_10), .O(subMean_out[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_11 (.I(subMean_out_c_11), .O(subMean_out[11]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_12 (.I(subMean_out_c_12), .O(subMean_out[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_13 (.I(subMean_out_c_13), .O(subMean_out[13]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_14 (.I(subMean_out_c_14), .O(subMean_out[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_15 (.I(subMean_out_c_15), .O(subMean_out[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB ste_valid_pad (.I(ste_valid_c), .O(ste_valid));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(28[34:43])
    OB ste_pad (.I(ste_c), .O(ste));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(28[30:33])
    OB zcr_valid_left_pad (.I(zcr_valid_left_c), .O(zcr_valid_left));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[58:72])
    OB zcr_valid_right_pad (.I(zcr_valid_right_c), .O(zcr_valid_right));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[42:57])
    OB o_right_vld_pad (.I(o_right_vld_c), .O(o_right_vld));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(27[30:41])
    OB o_left_vld_pad (.I(o_left_vld_c), .O(o_left_vld));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(26[30:40])
    OB o_right_data_pad_0 (.I(o_right_data_c_0), .O(o_right_data[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_1 (.I(o_right_data_c_1), .O(o_right_data[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_2 (.I(o_right_data_c_2), .O(o_right_data[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_3 (.I(o_right_data_c_3), .O(o_right_data[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_4 (.I(o_right_data_c_4), .O(o_right_data[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_5 (.I(o_right_data_c_5), .O(o_right_data[5]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_6 (.I(o_right_data_c_6), .O(o_right_data[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_7 (.I(o_right_data_c_7), .O(o_right_data[7]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_8 (.I(o_right_data_c_8), .O(o_right_data[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_9 (.I(o_right_data_c_9), .O(o_right_data[9]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_10 (.I(o_right_data_c_10), .O(o_right_data[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_11 (.I(o_right_data_c_11), .O(o_right_data[11]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_12 (.I(o_right_data_c_12), .O(o_right_data[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_13 (.I(o_right_data_c_13), .O(o_right_data[13]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_14 (.I(o_right_data_c_14), .O(o_right_data[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_right_data_pad_15 (.I(o_right_data_c_15), .O(o_right_data[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(25[33:45])
    OB o_left_data_pad_0 (.I(o_left_data_c_0), .O(o_left_data[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_1 (.I(o_left_data_c_1), .O(o_left_data[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_2 (.I(o_left_data_c_2), .O(o_left_data[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_3 (.I(o_left_data_c_3), .O(o_left_data[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_4 (.I(o_left_data_c_4), .O(o_left_data[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_5 (.I(o_left_data_c_5), .O(o_left_data[5]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_6 (.I(o_left_data_c_6), .O(o_left_data[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_7 (.I(o_left_data_c_7), .O(o_left_data[7]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_8 (.I(o_left_data_c_8), .O(o_left_data[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_9 (.I(o_left_data_c_9), .O(o_left_data[9]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB subMean_out_pad_3 (.I(subMean_out_c_3), .O(subMean_out[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_out_pad_4 (.I(subMean_out_c_4), .O(subMean_out[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    IB rst_pad (.I(rst), .O(rst_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    CCU2D add_66_3 (.A0(o_left_data_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2964), .COUT(n2965), .S0(right_out_15__N_50[1]), 
          .S1(right_out_15__N_50[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_3.INIT0 = 16'h5555;
    defparam add_66_3.INIT1 = 16'h5555;
    defparam add_66_3.INJECT1_0 = "NO";
    defparam add_66_3.INJECT1_1 = "NO";
    OB o_left_data_pad_10 (.I(o_left_data_c_10), .O(o_left_data[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_11 (.I(o_left_data_c_11), .O(o_left_data[11]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_12 (.I(o_left_data_c_12), .O(o_left_data[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_13 (.I(o_left_data_c_13), .O(o_left_data[13]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_14 (.I(o_left_data_c_14), .O(o_left_data[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    OB o_left_data_pad_15 (.I(o_left_data_c_15), .O(o_left_data[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(24[33:44])
    CCU2D add_66_11 (.A0(o_left_data_c_9), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_10), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2968), .COUT(n2969), .S0(right_out_15__N_50[9]), 
          .S1(right_out_15__N_50[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_11.INIT0 = 16'h5555;
    defparam add_66_11.INIT1 = 16'h5555;
    defparam add_66_11.INJECT1_0 = "NO";
    defparam add_66_11.INJECT1_1 = "NO";
    OB subMean_out_pad_5 (.I(subMean_out_c_5), .O(subMean_out[5]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    OB subMean_valid_pad (.I(subMean_valid_c), .O(subMean_valid));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(30[9:22])
    CCU2D add_66_13 (.A0(o_left_data_c_11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_12), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2969), .COUT(n2970), .S0(right_out_15__N_50[11]), 
          .S1(right_out_15__N_50[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_13.INIT0 = 16'h5555;
    defparam add_66_13.INIT1 = 16'h5555;
    defparam add_66_13.INJECT1_0 = "NO";
    defparam add_66_13.INJECT1_1 = "NO";
    OB o_ws_pad (.I(o_ws_c), .O(o_ws));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(21[28:32])
    CCU2D add_66_9 (.A0(o_left_data_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_8), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2967), .COUT(n2968), .S0(right_out_15__N_50[7]), 
          .S1(right_out_15__N_50[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_9.INIT0 = 16'h5555;
    defparam add_66_9.INIT1 = 16'h5555;
    defparam add_66_9.INJECT1_0 = "NO";
    defparam add_66_9.INJECT1_1 = "NO";
    OB o_sck_pad (.I(o_sck_c), .O(o_sck));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    CCU2D add_66_15 (.A0(o_left_data_c_13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_14), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2970), .COUT(n2971), .S0(right_out_15__N_50[13]), 
          .S1(right_out_15__N_50[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_15.INIT0 = 16'h5555;
    defparam add_66_15.INIT1 = 16'h5555;
    defparam add_66_15.INJECT1_0 = "NO";
    defparam add_66_15.INJECT1_1 = "NO";
    OB subMean_out_pad_0 (.I(subMean_out_c_0), .O(subMean_out[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(29[26:37])
    LUT4 left_out_15__I_1_i16_1_lut (.A(left_out_15__N_33[15]), .Z(left_out_15__N_1[15])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i16_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i15_1_lut (.A(left_out_15__N_33[14]), .Z(left_out_15__N_1[14])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i15_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i14_1_lut (.A(left_out_15__N_33[13]), .Z(left_out_15__N_1[13])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i14_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i13_1_lut (.A(left_out_15__N_33[12]), .Z(left_out_15__N_1[12])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i13_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i12_1_lut (.A(left_out_15__N_33[11]), .Z(left_out_15__N_1[11])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i12_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i11_1_lut (.A(left_out_15__N_33[10]), .Z(left_out_15__N_1[10])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i11_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i10_1_lut (.A(left_out_15__N_33[9]), .Z(left_out_15__N_1[9])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i10_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i9_1_lut (.A(left_out_15__N_33[8]), .Z(left_out_15__N_1[8])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i9_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i8_1_lut (.A(left_out_15__N_33[7]), .Z(left_out_15__N_1[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i8_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i7_1_lut (.A(left_out_15__N_33[6]), .Z(left_out_15__N_1[6])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i7_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i6_1_lut (.A(left_out_15__N_33[5]), .Z(left_out_15__N_1[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i6_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i5_1_lut (.A(left_out_15__N_33[4]), .Z(left_out_15__N_1[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i5_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i4_1_lut (.A(left_out_15__N_33[3]), .Z(left_out_15__N_1[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i4_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i3_1_lut (.A(left_out_15__N_33[2]), .Z(left_out_15__N_1[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i3_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i2_1_lut (.A(left_out_15__N_33[1]), .Z(left_out_15__N_1[1])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i2_1_lut.init = 16'h5555;
    LUT4 left_out_15__I_1_i1_1_lut (.A(left_out_15__N_33[0]), .Z(left_out_15__N_1[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[24:41])
    defparam left_out_15__I_1_i1_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i16_1_lut (.A(right_out_15__N_50[15]), .Z(right_out_15__N_17[15])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i16_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i15_1_lut (.A(right_out_15__N_50[14]), .Z(right_out_15__N_17[14])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i15_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i14_1_lut (.A(right_out_15__N_50[13]), .Z(right_out_15__N_17[13])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i14_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i13_1_lut (.A(right_out_15__N_50[12]), .Z(right_out_15__N_17[12])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i13_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i12_1_lut (.A(right_out_15__N_50[11]), .Z(right_out_15__N_17[11])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i12_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i11_1_lut (.A(right_out_15__N_50[10]), .Z(right_out_15__N_17[10])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i11_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i10_1_lut (.A(right_out_15__N_50[9]), .Z(right_out_15__N_17[9])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i10_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i9_1_lut (.A(right_out_15__N_50[8]), .Z(right_out_15__N_17[8])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i9_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i8_1_lut (.A(right_out_15__N_50[7]), .Z(right_out_15__N_17[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i8_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i7_1_lut (.A(right_out_15__N_50[6]), .Z(right_out_15__N_17[6])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i7_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i6_1_lut (.A(right_out_15__N_50[5]), .Z(right_out_15__N_17[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i6_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i5_1_lut (.A(right_out_15__N_50[4]), .Z(right_out_15__N_17[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i5_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i4_1_lut (.A(right_out_15__N_50[3]), .Z(right_out_15__N_17[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i4_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i3_1_lut (.A(right_out_15__N_50[2]), .Z(right_out_15__N_17[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i3_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i2_1_lut (.A(right_out_15__N_50[1]), .Z(right_out_15__N_17[1])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i2_1_lut.init = 16'h5555;
    LUT4 right_out_15__I_2_i1_1_lut (.A(right_out_15__N_50[0]), .Z(right_out_15__N_17[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[27:43])
    defparam right_out_15__I_2_i1_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    zcr_U0 zcr1 (.fifo_read_clk(fifo_read_clk), .rst_c(rst_c), .fifo_read_clk_enable_293(fifo_read_clk_enable_293), 
           .\m[0] (m[0]), .\m[1] (m[1]), .\window_count[4] (window_count_adj_957[4]), 
           .n9(n9), .zcr_valid_right_c(zcr_valid_right_c), .GND_net(GND_net), 
           .n8(n8), .n10(n10), .n7(n7)) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(63[5] 69[2])
    subMean subMean1 (.GND_net(GND_net), .\window_count[4] (window_count_adj_957[4]), 
            .fifo_read_clk(fifo_read_clk), .n4055(n4055), .\m[1] (m[1]), 
            .\m[0] (m[0]), .rst_c(rst_c), .subMean_valid_c(subMean_valid_c), 
            .fifo_read_clk_enable_293(fifo_read_clk_enable_293), .left_out({left_out}), 
            .subMean_out_c_15(subMean_out_c_15), .subMean_out_c_13(subMean_out_c_13), 
            .subMean_out_c_14(subMean_out_c_14), .subMean_out_c_11(subMean_out_c_11), 
            .subMean_out_c_12(subMean_out_c_12), .subMean_out_c_9(subMean_out_c_9), 
            .subMean_out_c_10(subMean_out_c_10), .subMean_out_c_7(subMean_out_c_7), 
            .subMean_out_c_8(subMean_out_c_8), .n8(n8), .subMean_out_c_5(subMean_out_c_5), 
            .subMean_out_c_6(subMean_out_c_6), .subMean_out_c_3(subMean_out_c_3), 
            .subMean_out_c_4(subMean_out_c_4), .subMean_out_c_1(subMean_out_c_1), 
            .subMean_out_c_2(subMean_out_c_2), .subMean_out_c_0(subMean_out_c_0), 
            .n10(n10), .n7(n7), .n9(n9)) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(86[9] 92[2])
    CCU2D add_66_17 (.A0(o_left_data_c_15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2971), .S0(right_out_15__N_50[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_17.INIT0 = 16'h5555;
    defparam add_66_17.INIT1 = 16'h0000;
    defparam add_66_17.INJECT1_0 = "NO";
    defparam add_66_17.INJECT1_1 = "NO";
    CCU2D add_66_5 (.A0(o_left_data_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2965), .COUT(n2966), .S0(right_out_15__N_50[3]), 
          .S1(right_out_15__N_50[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_5.INIT0 = 16'h5555;
    defparam add_66_5.INIT1 = 16'h5555;
    defparam add_66_5.INJECT1_0 = "NO";
    defparam add_66_5.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D add_65_17 (.A0(o_right_data_c_15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3029), .S0(left_out_15__N_33[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_17.INIT0 = 16'h5555;
    defparam add_65_17.INIT1 = 16'h0000;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    CCU2D add_65_15 (.A0(o_right_data_c_13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_14), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3028), .COUT(n3029), .S0(left_out_15__N_33[13]), 
          .S1(left_out_15__N_33[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_15.INIT0 = 16'h5555;
    defparam add_65_15.INIT1 = 16'h5555;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    CCU2D add_65_13 (.A0(o_right_data_c_11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_12), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3027), .COUT(n3028), .S0(left_out_15__N_33[11]), 
          .S1(left_out_15__N_33[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_13.INIT0 = 16'h5555;
    defparam add_65_13.INIT1 = 16'h5555;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    CCU2D add_65_11 (.A0(o_right_data_c_9), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_10), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3026), .COUT(n3027), .S0(left_out_15__N_33[9]), 
          .S1(left_out_15__N_33[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_11.INIT0 = 16'h5555;
    defparam add_65_11.INIT1 = 16'h5555;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    CCU2D add_65_9 (.A0(o_right_data_c_7), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_8), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3025), .COUT(n3026), .S0(left_out_15__N_33[7]), 
          .S1(left_out_15__N_33[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_9.INIT0 = 16'h5555;
    defparam add_65_9.INIT1 = 16'h5555;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    CCU2D add_65_7 (.A0(o_right_data_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3024), .COUT(n3025), .S0(left_out_15__N_33[5]), 
          .S1(left_out_15__N_33[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_7.INIT0 = 16'h5555;
    defparam add_65_7.INIT1 = 16'h5555;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    CCU2D add_65_5 (.A0(o_right_data_c_3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_4), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3023), .COUT(n3024), .S0(left_out_15__N_33[3]), 
          .S1(left_out_15__N_33[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_5.INIT0 = 16'h5555;
    defparam add_65_5.INIT1 = 16'h5555;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    CCU2D add_65_3 (.A0(o_right_data_c_1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_right_data_c_2), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3022), .COUT(n3023), .S0(left_out_15__N_33[1]), 
          .S1(left_out_15__N_33[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_3.INIT0 = 16'h5555;
    defparam add_65_3.INIT1 = 16'h5555;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    CCU2D add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_right_data_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3022), .S1(left_out_15__N_33[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[25:41])
    defparam add_65_1.INIT0 = 16'hF000;
    defparam add_65_1.INIT1 = 16'h5555;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    LUT4 m1_lut (.Z(n4055)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2D add_66_7 (.A0(o_left_data_c_5), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(o_left_data_c_6), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2966), .COUT(n2967), .S0(right_out_15__N_50[5]), 
          .S1(right_out_15__N_50[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_7.INIT0 = 16'h5555;
    defparam add_66_7.INIT1 = 16'h5555;
    defparam add_66_7.INJECT1_0 = "NO";
    defparam add_66_7.INJECT1_1 = "NO";
    CCU2D add_66_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(o_left_data_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2964), .S1(right_out_15__N_50[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[28:43])
    defparam add_66_1.INIT0 = 16'hF000;
    defparam add_66_1.INIT1 = 16'h5555;
    defparam add_66_1.INJECT1_0 = "NO";
    defparam add_66_1.INJECT1_1 = "NO";
    zcr zcr2 (.fifo_read_clk(fifo_read_clk), .zcr_valid_left_c(zcr_valid_left_c), 
        .fifo_read_clk_enable_293(fifo_read_clk_enable_293), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(71[5] 77[2])
    GSR GSR_INST (.GSR(fifo_read_clk_enable_293));
    fifo_right right_out_15__I_0 (.\right_out_15__N_17[15] (right_out_15__N_17[15]), 
            .\right_out_15__N_17[14] (right_out_15__N_17[14]), .\right_out_15__N_17[13] (right_out_15__N_17[13]), 
            .\right_out_15__N_17[12] (right_out_15__N_17[12]), .\right_out_15__N_17[11] (right_out_15__N_17[11]), 
            .\right_out_15__N_17[10] (right_out_15__N_17[10]), .\right_out_15__N_17[9] (right_out_15__N_17[9]), 
            .\right_out_15__N_17[8] (right_out_15__N_17[8]), .\right_out_15__N_17[7] (right_out_15__N_17[7]), 
            .\right_out_15__N_17[6] (right_out_15__N_17[6]), .\right_out_15__N_17[5] (right_out_15__N_17[5]), 
            .\right_out_15__N_17[4] (right_out_15__N_17[4]), .\right_out_15__N_17[3] (right_out_15__N_17[3]), 
            .\right_out_15__N_17[2] (right_out_15__N_17[2]), .\right_out_15__N_17[1] (right_out_15__N_17[1]), 
            .\right_out_15__N_17[0] (right_out_15__N_17[0]), .o_sck_c(o_sck_c), 
            .fifo_read_clk(fifo_read_clk), .o_right_vld_c(o_right_vld_c), 
            .VCC_net(VCC_net), .rst_c(rst_c), .GND_net(GND_net), .\right_out[14] (right_out[14]), 
            .\right_out[13] (right_out[13]), .\right_out[12] (right_out[12]), 
            .\right_out[11] (right_out[11]), .\right_out[10] (right_out[10]), 
            .\right_out[9] (right_out[9]), .\right_out[8] (right_out[8])) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[13] 59[20])
    ste ste1 (.fifo_read_clk(fifo_read_clk), .ste_c(ste_c), .fifo_read_clk_enable_293(fifo_read_clk_enable_293), 
        .GND_net(GND_net), .ste_valid_c(ste_valid_c), .rst_c(rst_c), .lock(lock), 
        .i_sys_rst(i_sys_rst), .VCC_net(VCC_net), .\right_out[14] (right_out[14]), 
        .\right_out[13] (right_out[13]), .\right_out[12] (right_out[12]), 
        .\right_out[11] (right_out[11]), .\right_out[10] (right_out[10]), 
        .\right_out[9] (right_out[9]), .\right_out[8] (right_out[8])) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(78[5] 84[2])
    
endmodule
//
// Verilog Description of module fifo_left
//

module fifo_left (\left_out_15__N_1[15] , \left_out_15__N_1[14] , \left_out_15__N_1[13] , 
            \left_out_15__N_1[12] , \left_out_15__N_1[11] , \left_out_15__N_1[10] , 
            \left_out_15__N_1[9] , \left_out_15__N_1[8] , \left_out_15__N_1[7] , 
            \left_out_15__N_1[6] , \left_out_15__N_1[5] , \left_out_15__N_1[4] , 
            \left_out_15__N_1[3] , \left_out_15__N_1[2] , \left_out_15__N_1[1] , 
            \left_out_15__N_1[0] , o_sck_c, fifo_read_clk, o_left_vld_c, 
            VCC_net, rst_c, GND_net, left_out) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input \left_out_15__N_1[15] ;
    input \left_out_15__N_1[14] ;
    input \left_out_15__N_1[13] ;
    input \left_out_15__N_1[12] ;
    input \left_out_15__N_1[11] ;
    input \left_out_15__N_1[10] ;
    input \left_out_15__N_1[9] ;
    input \left_out_15__N_1[8] ;
    input \left_out_15__N_1[7] ;
    input \left_out_15__N_1[6] ;
    input \left_out_15__N_1[5] ;
    input \left_out_15__N_1[4] ;
    input \left_out_15__N_1[3] ;
    input \left_out_15__N_1[2] ;
    input \left_out_15__N_1[1] ;
    input \left_out_15__N_1[0] ;
    input o_sck_c;
    input fifo_read_clk;
    input o_left_vld_c;
    input VCC_net;
    input rst_c;
    input GND_net;
    output [15:0]left_out;
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire Empty, Full;
    
    FIFO8KB fifo_left_0_0 (.DI0(\left_out_15__N_1[0] ), .DI1(\left_out_15__N_1[1] ), 
            .DI2(\left_out_15__N_1[2] ), .DI3(\left_out_15__N_1[3] ), .DI4(\left_out_15__N_1[4] ), 
            .DI5(\left_out_15__N_1[5] ), .DI6(\left_out_15__N_1[6] ), .DI7(\left_out_15__N_1[7] ), 
            .DI8(\left_out_15__N_1[8] ), .DI9(\left_out_15__N_1[9] ), .DI10(\left_out_15__N_1[10] ), 
            .DI11(\left_out_15__N_1[11] ), .DI12(\left_out_15__N_1[12] ), 
            .DI13(\left_out_15__N_1[13] ), .DI14(\left_out_15__N_1[14] ), 
            .DI15(\left_out_15__N_1[15] ), .DI16(GND_net), .DI17(GND_net), 
            .FULLI(Full), .EMPTYI(Empty), .CSW1(VCC_net), .CSW0(VCC_net), 
            .CSR1(VCC_net), .CSR0(VCC_net), .WE(o_left_vld_c), .RE(VCC_net), 
            .ORE(VCC_net), .CLKW(o_sck_c), .CLKR(fifo_read_clk), .RST(rst_c), 
            .RPRST(GND_net), .DO0(left_out[9]), .DO1(left_out[10]), .DO2(left_out[11]), 
            .DO3(left_out[12]), .DO4(left_out[13]), .DO5(left_out[14]), 
            .DO6(left_out[15]), .DO9(left_out[0]), .DO10(left_out[1]), 
            .DO11(left_out[2]), .DO12(left_out[3]), .DO13(left_out[4]), 
            .DO14(left_out[5]), .DO15(left_out[6]), .DO16(left_out[7]), 
            .DO17(left_out[8]), .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=54, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(54[11] 56[20])
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

module I2S_Controller (o_ws_c, i_sys_rst, GND_net, o_sck_c, rst_c, 
            fifo_read_clk, lock, o_left_data_c_0, o_right_data_c_0, 
            o_left_vld_c, o_right_vld_c, VCC_net, i_sd_c, o_left_data_c_1, 
            o_left_data_c_2, o_left_data_c_3, o_left_data_c_4, o_left_data_c_5, 
            o_left_data_c_6, o_left_data_c_7, o_left_data_c_8, o_left_data_c_9, 
            o_left_data_c_10, o_left_data_c_11, o_left_data_c_12, o_left_data_c_13, 
            o_left_data_c_14, o_left_data_c_15, o_right_data_c_1, o_right_data_c_2, 
            o_right_data_c_3, o_right_data_c_4, o_right_data_c_5, o_right_data_c_6, 
            o_right_data_c_7, o_right_data_c_8, o_right_data_c_9, o_right_data_c_10, 
            o_right_data_c_11, o_right_data_c_12, o_right_data_c_13, o_right_data_c_14, 
            o_right_data_c_15) /* synthesis syn_module_defined=1 */ ;
    output o_ws_c;
    input i_sys_rst;
    input GND_net;
    output o_sck_c;
    input rst_c;
    output fifo_read_clk;
    output lock;
    output o_left_data_c_0;
    output o_right_data_c_0;
    output o_left_vld_c;
    output o_right_vld_c;
    input VCC_net;
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
    
    wire o_sck_N_73 /* synthesis is_inv_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(29[15:20])
    wire osc_clk /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(33[30:37])
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire o_ws_N_80;
    wire [4:0]count;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(29[15:20])
    wire [3:0]n27;
    
    wire n4051, n4052, n3191;
    
    FD1S3DX o_ws_15 (.D(o_ws_N_80), .CK(o_sck_N_73), .CD(i_sys_rst), .Q(o_ws_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=25, LSE_LLINE=40, LSE_RLINE=50 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(56[3] 64[7])
    defparam o_ws_15.GSR = "DISABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=18, LSE_RCOL=25, LSE_LLINE=40, LSE_RLINE=50 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(40[18] 50[25])
    defparam OSCH_inst.NOM_FREQ = "16.63";
    FD1S3DX count_97_98__i1 (.D(n27[0]), .CK(o_sck_N_73), .CD(i_sys_rst), 
            .Q(count[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_97_98__i1.GSR = "DISABLED";
    LUT4 count_3__bdd_4_lut (.A(count[3]), .B(count[2]), .C(count[0]), 
         .D(count[1]), .Z(n4051)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam count_3__bdd_4_lut.init = 16'h6aaa;
    LUT4 i3_4_lut_rep_17 (.A(count[0]), .B(count[1]), .C(count[2]), .D(count[3]), 
         .Z(n4052)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_rep_17.init = 16'h8000;
    FD1S3DX count_97_98__i4 (.D(n4051), .CK(o_sck_N_73), .CD(i_sys_rst), 
            .Q(count[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_97_98__i4.GSR = "DISABLED";
    FD1S3DX count_97_98__i3 (.D(n27[2]), .CK(o_sck_N_73), .CD(i_sys_rst), 
            .Q(count[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_97_98__i3.GSR = "DISABLED";
    FD1S3DX count_97_98__i2 (.D(n3191), .CK(o_sck_N_73), .CD(i_sys_rst), 
            .Q(count[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam count_97_98__i2.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(o_ws_c), .B(n4052), .Z(o_ws_N_80)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i2272_1_lut (.A(count[0]), .Z(n27[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i2272_1_lut.init = 16'h5555;
    LUT4 i2068_3_lut_4_lut_3_lut (.A(count[0]), .B(count[1]), .C(count[2]), 
         .Z(n27[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2068_3_lut_4_lut_3_lut.init = 16'h7878;
    LUT4 i15_2_lut (.A(count[0]), .B(count[1]), .Z(n3191)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(58[10:17])
    defparam i15_2_lut.init = 16'h6666;
    pll1 my_pll (.o_sck_N_73(o_sck_N_73), .o_sck_c(o_sck_c), .osc_clk(osc_clk), 
         .rst_c(rst_c), .fifo_read_clk(fifo_read_clk), .lock(lock), .GND_net(GND_net)) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(39[10] 46[3])
    i2s_rx i2s_rx_inst (.o_sck_c(o_sck_c), .i_sys_rst(i_sys_rst), .o_left_data_c_0(o_left_data_c_0), 
           .o_right_data_c_0(o_right_data_c_0), .o_left_vld_c(o_left_vld_c), 
           .o_right_vld_c(o_right_vld_c), .o_ws_c(o_ws_c), .VCC_net(VCC_net), 
           .i_sd_c(i_sd_c), .GND_net(GND_net), .o_left_data_c_1(o_left_data_c_1), 
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
           .o_right_data_c_15(o_right_data_c_15)) /* synthesis syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(69[13] 79[19])
    
endmodule
//
// Verilog Description of module pll1
//

module pll1 (o_sck_N_73, o_sck_c, osc_clk, rst_c, fifo_read_clk, lock, 
            GND_net) /* synthesis syn_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output o_sck_N_73;
    output o_sck_c;
    input osc_clk;
    input rst_c;
    output fifo_read_clk;
    output lock;
    input GND_net;
    
    wire o_sck_N_73 /* synthesis is_inv_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(29[15:20])
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire osc_clk /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(33[30:37])
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    INV i3560 (.A(o_sck_c), .Z(o_sck_N_73));
    EHXPLLJ PLLInst_0 (.CLKI(osc_clk), .CLKFB(o_sck_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(rst_c), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(o_sck_c), .CLKOS(fifo_read_clk), 
            .LOCK(lock)) /* synthesis FREQUENCY_PIN_CLKOS2="100.000000", FREQUENCY_PIN_CLKOS="0.500000", FREQUENCY_PIN_CLKOP="32.000000", FREQUENCY_PIN_CLKI="32.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=39, LSE_RLINE=46 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_controller.v(39[10] 46[3])
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
// Verilog Description of module i2s_rx
//

module i2s_rx (o_sck_c, i_sys_rst, o_left_data_c_0, o_right_data_c_0, 
            o_left_vld_c, o_right_vld_c, o_ws_c, VCC_net, i_sd_c, 
            GND_net, o_left_data_c_1, o_left_data_c_2, o_left_data_c_3, 
            o_left_data_c_4, o_left_data_c_5, o_left_data_c_6, o_left_data_c_7, 
            o_left_data_c_8, o_left_data_c_9, o_left_data_c_10, o_left_data_c_11, 
            o_left_data_c_12, o_left_data_c_13, o_left_data_c_14, o_left_data_c_15, 
            o_right_data_c_1, o_right_data_c_2, o_right_data_c_3, o_right_data_c_4, 
            o_right_data_c_5, o_right_data_c_6, o_right_data_c_7, o_right_data_c_8, 
            o_right_data_c_9, o_right_data_c_10, o_right_data_c_11, o_right_data_c_12, 
            o_right_data_c_13, o_right_data_c_14, o_right_data_c_15) /* synthesis syn_module_defined=1 */ ;
    input o_sck_c;
    input i_sys_rst;
    output o_left_data_c_0;
    output o_right_data_c_0;
    output o_left_vld_c;
    output o_right_vld_c;
    input o_ws_c;
    input VCC_net;
    input i_sd_c;
    input GND_net;
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
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire [15:0]left_data_reg_i;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(43[33:48])
    
    wire o_sck_c_enable_17, left_vld_i, o_sck_c_enable_16, n4048, sd_i;
    wire [15:0]right_data_reg_i;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(44[33:49])
    
    wire ws_reg_i;
    wire [15:0]left_data_ones_compl_i;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(56[33:55])
    wire [15:0]left_data_ones_compl_i_15__N_147;
    
    wire ws_i, right_vld_i, n1732, left_vld_reg_i, right_vld_reg_i;
    wire [31:0]o_left_data_15__N_83;
    wire [15:0]right_data_ones_compl_i;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(57[33:56])
    wire [15:0]right_data_ones_compl_i_15__N_163;
    wire [31:0]o_right_data_15__N_99;
    
    wire d1_left_vld, left_vld, d1_right_vld, right_vld, n3092, n3091, 
        n3090, n3089, n3088, n3087, n3086, n3085, n3084, n3083, 
        n3082, n3081, n3080, n3079, n3078, n3077;
    
    FD1P3DX left_data_reg_i_i0_i15 (.D(left_data_reg_i[14]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i15.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i14 (.D(left_data_reg_i[13]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i14.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i13 (.D(left_data_reg_i[12]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i13.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i12 (.D(left_data_reg_i[11]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i12.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i11 (.D(left_data_reg_i[10]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i11.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i10 (.D(left_data_reg_i[9]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i10.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i9 (.D(left_data_reg_i[8]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i9.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i8 (.D(left_data_reg_i[7]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i8.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i7 (.D(left_data_reg_i[6]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i7.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i6 (.D(left_data_reg_i[5]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i6.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i5 (.D(left_data_reg_i[4]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i5.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i4 (.D(left_data_reg_i[3]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i4.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i3 (.D(left_data_reg_i[2]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i3.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i2 (.D(left_data_reg_i[1]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i2.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i1 (.D(left_data_reg_i[0]), .SP(o_sck_c_enable_17), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i1.GSR = "DISABLED";
    FD1P3DX left_vld_i_45 (.D(n4048), .SP(o_sck_c_enable_16), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(left_vld_i));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam left_vld_i_45.GSR = "DISABLED";
    FD1P3DX left_data_reg_i_i0_i0 (.D(sd_i), .SP(o_sck_c_enable_17), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(left_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam left_data_reg_i_i0_i0.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i0 (.D(sd_i), .SP(ws_reg_i), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(right_data_reg_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i0.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i0 (.D(left_data_ones_compl_i_15__N_147[0]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i0.GSR = "DISABLED";
    FD1S3DX ws_reg_i_41 (.D(ws_i), .CK(o_sck_c), .CD(i_sys_rst), .Q(ws_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_reg_i_41.GSR = "DISABLED";
    FD1S3DX right_vld_i_46 (.D(n1732), .CK(o_sck_c), .CD(i_sys_rst), .Q(right_vld_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(98[13] 107[52])
    defparam right_vld_i_46.GSR = "DISABLED";
    FD1S3DX left_vld_reg_i_47 (.D(left_vld_i), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(left_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam left_vld_reg_i_47.GSR = "DISABLED";
    FD1S3DX right_vld_reg_i_48 (.D(right_vld_i), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(right_vld_reg_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(118[13] 121[16])
    defparam right_vld_reg_i_48.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i1 (.D(o_left_data_15__N_83[0]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i1.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i0 (.D(right_data_ones_compl_i_15__N_163[0]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i0.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i1 (.D(o_right_data_15__N_99[0]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i1.GSR = "DISABLED";
    FD1S3DX d1_left_vld_53 (.D(left_vld), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(d1_left_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d1_left_vld_53.GSR = "DISABLED";
    FD1S3DX d2_left_vld_54 (.D(d1_left_vld), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(o_left_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(156[14] 158[45])
    defparam d2_left_vld_54.GSR = "DISABLED";
    FD1S3DX d1_right_vld_55 (.D(right_vld), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(d1_right_vld)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d1_right_vld_55.GSR = "DISABLED";
    FD1S3DX d2_right_vld_56 (.D(d1_right_vld), .CK(o_sck_c), .CD(i_sys_rst), 
            .Q(o_right_vld_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(165[14] 167[47])
    defparam d2_right_vld_56.GSR = "DISABLED";
    FD1S3DX ws_i_40 (.D(o_ws_c), .CK(o_sck_c), .CD(i_sys_rst), .Q(ws_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam ws_i_40.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i1 (.D(right_data_reg_i[0]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i1.GSR = "DISABLED";
    IFS1P3DX sd_i_42 (.D(i_sd_c), .SP(VCC_net), .SCLK(o_sck_c), .CD(i_sys_rst), 
            .Q(sd_i)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(72[13] 76[16])
    defparam sd_i_42.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i2 (.D(right_data_reg_i[1]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i2.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i3 (.D(right_data_reg_i[2]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i3.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i4 (.D(right_data_reg_i[3]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i4.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i5 (.D(right_data_reg_i[4]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i5.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i6 (.D(right_data_reg_i[5]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i6.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i7 (.D(right_data_reg_i[6]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i7.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i8 (.D(right_data_reg_i[7]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i8.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i9 (.D(right_data_reg_i[8]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i9.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i10 (.D(right_data_reg_i[9]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i10.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i11 (.D(right_data_reg_i[10]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i11.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i12 (.D(right_data_reg_i[11]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i12.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i13 (.D(right_data_reg_i[12]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i13.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i14 (.D(right_data_reg_i[13]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i14.GSR = "DISABLED";
    FD1P3DX right_data_reg_i_i0_i15 (.D(right_data_reg_i[14]), .SP(ws_reg_i), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_reg_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[13] 90[81])
    defparam right_data_reg_i_i0_i15.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i1 (.D(left_data_ones_compl_i_15__N_147[1]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i1.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(ws_reg_i), .B(ws_i), .Z(o_sck_c_enable_16)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i3515_2_lut_rep_14 (.A(ws_reg_i), .B(ws_i), .Z(n4048)) /* synthesis lut_function=((B)+!A) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(98[16:38])
    defparam i3515_2_lut_rep_14.init = 16'hdddd;
    LUT4 ws_reg_i_I_0_59_1_lut_rep_15 (.A(ws_reg_i), .Z(o_sck_c_enable_17)) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[16:25])
    defparam ws_reg_i_I_0_59_1_lut_rep_15.init = 16'h5555;
    LUT4 i1062_4_lut_4_lut_3_lut (.A(ws_reg_i), .B(right_vld_i), .C(ws_i), 
         .Z(n1732)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(87[16:25])
    defparam i1062_4_lut_4_lut_3_lut.init = 16'h8e8e;
    CCU2D add_64_17 (.A0(left_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3092), .S0(o_left_data_15__N_83[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_17.INIT0 = 16'h5aaa;
    defparam add_64_17.INIT1 = 16'h0000;
    defparam add_64_17.INJECT1_0 = "NO";
    defparam add_64_17.INJECT1_1 = "NO";
    CCU2D add_64_15 (.A0(left_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3091), .COUT(n3092), .S0(o_left_data_15__N_83[13]), 
          .S1(o_left_data_15__N_83[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_15.INIT0 = 16'h5aaa;
    defparam add_64_15.INIT1 = 16'h5aaa;
    defparam add_64_15.INJECT1_0 = "NO";
    defparam add_64_15.INJECT1_1 = "NO";
    CCU2D add_64_13 (.A0(left_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3090), .COUT(n3091), .S0(o_left_data_15__N_83[11]), 
          .S1(o_left_data_15__N_83[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_13.INIT0 = 16'h5aaa;
    defparam add_64_13.INIT1 = 16'h5aaa;
    defparam add_64_13.INJECT1_0 = "NO";
    defparam add_64_13.INJECT1_1 = "NO";
    CCU2D add_64_11 (.A0(left_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3089), .COUT(n3090), .S0(o_left_data_15__N_83[9]), 
          .S1(o_left_data_15__N_83[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_11.INIT0 = 16'h5aaa;
    defparam add_64_11.INIT1 = 16'h5aaa;
    defparam add_64_11.INJECT1_0 = "NO";
    defparam add_64_11.INJECT1_1 = "NO";
    CCU2D add_64_9 (.A0(left_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3088), .COUT(n3089), .S0(o_left_data_15__N_83[7]), 
          .S1(o_left_data_15__N_83[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_9.INIT0 = 16'h5aaa;
    defparam add_64_9.INIT1 = 16'h5aaa;
    defparam add_64_9.INJECT1_0 = "NO";
    defparam add_64_9.INJECT1_1 = "NO";
    CCU2D add_64_7 (.A0(left_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3087), .COUT(n3088), .S0(o_left_data_15__N_83[5]), 
          .S1(o_left_data_15__N_83[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_7.INIT0 = 16'h5aaa;
    defparam add_64_7.INIT1 = 16'h5aaa;
    defparam add_64_7.INJECT1_0 = "NO";
    defparam add_64_7.INJECT1_1 = "NO";
    CCU2D add_64_5 (.A0(left_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3086), .COUT(n3087), .S0(o_left_data_15__N_83[3]), 
          .S1(o_left_data_15__N_83[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_5.INIT0 = 16'h5aaa;
    defparam add_64_5.INIT1 = 16'h5aaa;
    defparam add_64_5.INJECT1_0 = "NO";
    defparam add_64_5.INJECT1_1 = "NO";
    CCU2D add_64_3 (.A0(left_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(left_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3085), .COUT(n3086), .S0(o_left_data_15__N_83[1]), 
          .S1(o_left_data_15__N_83[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_3.INIT0 = 16'h5aaa;
    defparam add_64_3.INIT1 = 16'h5aaa;
    defparam add_64_3.INJECT1_0 = "NO";
    defparam add_64_3.INJECT1_1 = "NO";
    CCU2D add_64_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(left_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3085), .S1(o_left_data_15__N_83[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[39:65])
    defparam add_64_1.INIT0 = 16'hF000;
    defparam add_64_1.INIT1 = 16'h5555;
    defparam add_64_1.INJECT1_0 = "NO";
    defparam add_64_1.INJECT1_1 = "NO";
    CCU2D add_65_17 (.A0(right_data_ones_compl_i[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3084), .S0(o_right_data_15__N_99[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_17.INIT0 = 16'h5aaa;
    defparam add_65_17.INIT1 = 16'h0000;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    CCU2D add_65_15 (.A0(right_data_ones_compl_i[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3083), .COUT(n3084), .S0(o_right_data_15__N_99[13]), 
          .S1(o_right_data_15__N_99[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_15.INIT0 = 16'h5aaa;
    defparam add_65_15.INIT1 = 16'h5aaa;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    CCU2D add_65_13 (.A0(right_data_ones_compl_i[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3082), .COUT(n3083), .S0(o_right_data_15__N_99[11]), 
          .S1(o_right_data_15__N_99[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_13.INIT0 = 16'h5aaa;
    defparam add_65_13.INIT1 = 16'h5aaa;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    CCU2D add_65_11 (.A0(right_data_ones_compl_i[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3081), .COUT(n3082), .S0(o_right_data_15__N_99[9]), 
          .S1(o_right_data_15__N_99[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_11.INIT0 = 16'h5aaa;
    defparam add_65_11.INIT1 = 16'h5aaa;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    CCU2D add_65_9 (.A0(right_data_ones_compl_i[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3080), .COUT(n3081), .S0(o_right_data_15__N_99[7]), 
          .S1(o_right_data_15__N_99[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_9.INIT0 = 16'h5aaa;
    defparam add_65_9.INIT1 = 16'h5aaa;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    CCU2D add_65_7 (.A0(right_data_ones_compl_i[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3079), .COUT(n3080), .S0(o_right_data_15__N_99[5]), 
          .S1(o_right_data_15__N_99[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_7.INIT0 = 16'h5aaa;
    defparam add_65_7.INIT1 = 16'h5aaa;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    CCU2D add_65_5 (.A0(right_data_ones_compl_i[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3078), .COUT(n3079), .S0(o_right_data_15__N_99[3]), 
          .S1(o_right_data_15__N_99[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_5.INIT0 = 16'h5aaa;
    defparam add_65_5.INIT1 = 16'h5aaa;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    CCU2D add_65_3 (.A0(right_data_ones_compl_i[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(right_data_ones_compl_i[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3077), .COUT(n3078), .S0(o_right_data_15__N_99[1]), 
          .S1(o_right_data_15__N_99[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_3.INIT0 = 16'h5aaa;
    defparam add_65_3.INIT1 = 16'h5aaa;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    CCU2D add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(right_data_ones_compl_i[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3077), .S1(o_right_data_15__N_99[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[40:67])
    defparam add_65_1.INIT0 = 16'hF000;
    defparam add_65_1.INIT1 = 16'h5555;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    LUT4 left_data_reg_i_15__I_0_i1_1_lut (.A(left_data_reg_i[0]), .Z(left_data_ones_compl_i_15__N_147[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i1_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i1_1_lut (.A(right_data_reg_i[0]), .Z(right_data_ones_compl_i_15__N_163[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i1_1_lut.init = 16'h5555;
    LUT4 left_vld_i_I_0_2_lut (.A(left_vld_i), .B(left_vld_reg_i), .Z(left_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(177[23:54])
    defparam left_vld_i_I_0_2_lut.init = 16'h2222;
    LUT4 right_vld_i_I_0_2_lut (.A(right_vld_i), .B(right_vld_reg_i), .Z(right_vld)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(178[24:57])
    defparam right_vld_i_I_0_2_lut.init = 16'h2222;
    LUT4 left_data_reg_i_15__I_0_i2_1_lut (.A(left_data_reg_i[1]), .Z(left_data_ones_compl_i_15__N_147[1])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i2_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i3_1_lut (.A(left_data_reg_i[2]), .Z(left_data_ones_compl_i_15__N_147[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i3_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i4_1_lut (.A(left_data_reg_i[3]), .Z(left_data_ones_compl_i_15__N_147[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i4_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i5_1_lut (.A(left_data_reg_i[4]), .Z(left_data_ones_compl_i_15__N_147[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i5_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i6_1_lut (.A(left_data_reg_i[5]), .Z(left_data_ones_compl_i_15__N_147[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i6_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i7_1_lut (.A(left_data_reg_i[6]), .Z(left_data_ones_compl_i_15__N_147[6])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i7_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i8_1_lut (.A(left_data_reg_i[7]), .Z(left_data_ones_compl_i_15__N_147[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i8_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i9_1_lut (.A(left_data_reg_i[8]), .Z(left_data_ones_compl_i_15__N_147[8])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i9_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i10_1_lut (.A(left_data_reg_i[9]), .Z(left_data_ones_compl_i_15__N_147[9])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i10_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i11_1_lut (.A(left_data_reg_i[10]), .Z(left_data_ones_compl_i_15__N_147[10])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i11_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i12_1_lut (.A(left_data_reg_i[11]), .Z(left_data_ones_compl_i_15__N_147[11])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i12_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i13_1_lut (.A(left_data_reg_i[12]), .Z(left_data_ones_compl_i_15__N_147[12])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i13_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i14_1_lut (.A(left_data_reg_i[13]), .Z(left_data_ones_compl_i_15__N_147[13])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i14_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i15_1_lut (.A(left_data_reg_i[14]), .Z(left_data_ones_compl_i_15__N_147[14])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i15_1_lut.init = 16'h5555;
    LUT4 left_data_reg_i_15__I_0_i16_1_lut (.A(left_data_reg_i[15]), .Z(left_data_ones_compl_i_15__N_147[15])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[39:57])
    defparam left_data_reg_i_15__I_0_i16_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i2_1_lut (.A(right_data_reg_i[1]), .Z(right_data_ones_compl_i_15__N_163[1])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i2_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i3_1_lut (.A(right_data_reg_i[2]), .Z(right_data_ones_compl_i_15__N_163[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i3_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i4_1_lut (.A(right_data_reg_i[3]), .Z(right_data_ones_compl_i_15__N_163[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i4_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i5_1_lut (.A(right_data_reg_i[4]), .Z(right_data_ones_compl_i_15__N_163[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i5_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i6_1_lut (.A(right_data_reg_i[5]), .Z(right_data_ones_compl_i_15__N_163[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i6_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i7_1_lut (.A(right_data_reg_i[6]), .Z(right_data_ones_compl_i_15__N_163[6])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i7_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i8_1_lut (.A(right_data_reg_i[7]), .Z(right_data_ones_compl_i_15__N_163[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i8_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i9_1_lut (.A(right_data_reg_i[8]), .Z(right_data_ones_compl_i_15__N_163[8])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i9_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i10_1_lut (.A(right_data_reg_i[9]), .Z(right_data_ones_compl_i_15__N_163[9])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i10_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i11_1_lut (.A(right_data_reg_i[10]), .Z(right_data_ones_compl_i_15__N_163[10])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i11_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i12_1_lut (.A(right_data_reg_i[11]), .Z(right_data_ones_compl_i_15__N_163[11])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i12_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i13_1_lut (.A(right_data_reg_i[12]), .Z(right_data_ones_compl_i_15__N_163[12])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i13_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i14_1_lut (.A(right_data_reg_i[13]), .Z(right_data_ones_compl_i_15__N_163[13])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i14_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i15_1_lut (.A(right_data_reg_i[14]), .Z(right_data_ones_compl_i_15__N_163[14])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i15_1_lut.init = 16'h5555;
    LUT4 right_data_reg_i_15__I_0_i16_1_lut (.A(right_data_reg_i[15]), .Z(right_data_ones_compl_i_15__N_163[15])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[40:59])
    defparam right_data_reg_i_15__I_0_i16_1_lut.init = 16'h5555;
    FD1S3DX left_data_ones_compl_i_i2 (.D(left_data_ones_compl_i_15__N_147[2]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i2.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i3 (.D(left_data_ones_compl_i_15__N_147[3]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i3.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i4 (.D(left_data_ones_compl_i_15__N_147[4]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i4.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i5 (.D(left_data_ones_compl_i_15__N_147[5]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i5.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i6 (.D(left_data_ones_compl_i_15__N_147[6]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i6.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i7 (.D(left_data_ones_compl_i_15__N_147[7]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i7.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i8 (.D(left_data_ones_compl_i_15__N_147[8]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i8.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i9 (.D(left_data_ones_compl_i_15__N_147[9]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i9.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i10 (.D(left_data_ones_compl_i_15__N_147[10]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i10.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i11 (.D(left_data_ones_compl_i_15__N_147[11]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i11.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i12 (.D(left_data_ones_compl_i_15__N_147[12]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i12.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i13 (.D(left_data_ones_compl_i_15__N_147[13]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i13.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i14 (.D(left_data_ones_compl_i_15__N_147[14]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i14.GSR = "DISABLED";
    FD1S3DX left_data_ones_compl_i_i15 (.D(left_data_ones_compl_i_15__N_147[15]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(left_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(128[13:58])
    defparam left_data_ones_compl_i_i15.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i2 (.D(o_left_data_15__N_83[1]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i2.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i3 (.D(o_left_data_15__N_83[2]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i3.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i4 (.D(o_left_data_15__N_83[3]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i4.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i5 (.D(o_left_data_15__N_83[4]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i5.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i6 (.D(o_left_data_15__N_83[5]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i6.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i7 (.D(o_left_data_15__N_83[6]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i7.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i8 (.D(o_left_data_15__N_83[7]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i8.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i9 (.D(o_left_data_15__N_83[8]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i9.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i10 (.D(o_left_data_15__N_83[9]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i10.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i11 (.D(o_left_data_15__N_83[10]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i11.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i12 (.D(o_left_data_15__N_83[11]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i12.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i13 (.D(o_left_data_15__N_83[12]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i13.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i14 (.D(o_left_data_15__N_83[13]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i14.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i15 (.D(o_left_data_15__N_83[14]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i15.GSR = "DISABLED";
    FD1S3DX left_data_twos_compl_i_i16 (.D(o_left_data_15__N_83[15]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_left_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(135[13:66])
    defparam left_data_twos_compl_i_i16.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i1 (.D(right_data_ones_compl_i_15__N_163[1]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i1.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i2 (.D(right_data_ones_compl_i_15__N_163[2]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i2.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i3 (.D(right_data_ones_compl_i_15__N_163[3]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i3.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i4 (.D(right_data_ones_compl_i_15__N_163[4]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i4.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i5 (.D(right_data_ones_compl_i_15__N_163[5]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i5.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i6 (.D(right_data_ones_compl_i_15__N_163[6]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i6.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i7 (.D(right_data_ones_compl_i_15__N_163[7]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i7.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i8 (.D(right_data_ones_compl_i_15__N_163[8]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i8.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i9 (.D(right_data_ones_compl_i_15__N_163[9]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i9.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i10 (.D(right_data_ones_compl_i_15__N_163[10]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i10.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i11 (.D(right_data_ones_compl_i_15__N_163[11]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i11.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i12 (.D(right_data_ones_compl_i_15__N_163[12]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i12.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i13 (.D(right_data_ones_compl_i_15__N_163[13]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i13.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i14 (.D(right_data_ones_compl_i_15__N_163[14]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i14.GSR = "DISABLED";
    FD1S3DX right_data_ones_compl_i_i15 (.D(right_data_ones_compl_i_15__N_163[15]), 
            .CK(o_sck_c), .CD(i_sys_rst), .Q(right_data_ones_compl_i[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(142[13:60])
    defparam right_data_ones_compl_i_i15.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i2 (.D(o_right_data_15__N_99[1]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i2.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i3 (.D(o_right_data_15__N_99[2]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i3.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i4 (.D(o_right_data_15__N_99[3]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i4.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i5 (.D(o_right_data_15__N_99[4]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i5.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i6 (.D(o_right_data_15__N_99[5]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i6.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i7 (.D(o_right_data_15__N_99[6]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i7.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i8 (.D(o_right_data_15__N_99[7]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i8.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i9 (.D(o_right_data_15__N_99[8]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i9.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i10 (.D(o_right_data_15__N_99[9]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i10.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i11 (.D(o_right_data_15__N_99[10]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i11.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i12 (.D(o_right_data_15__N_99[11]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i12.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i13 (.D(o_right_data_15__N_99[12]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i13.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i14 (.D(o_right_data_15__N_99[13]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i14.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i15 (.D(o_right_data_15__N_99[14]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i15.GSR = "DISABLED";
    FD1S3DX right_data_twos_compl_i_i16 (.D(o_right_data_15__N_99[15]), .CK(o_sck_c), 
            .CD(i_sys_rst), .Q(o_right_data_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=19, LSE_LLINE=69, LSE_RLINE=79 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/rd1171/source/verilog/i2s_rx.v(149[13:68])
    defparam right_data_twos_compl_i_i16.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module zcr_U0
//

module zcr_U0 (fifo_read_clk, rst_c, fifo_read_clk_enable_293, \m[0] , 
            \m[1] , \window_count[4] , n9, zcr_valid_right_c, GND_net, 
            n8, n10, n7) /* synthesis syn_module_defined=1 */ ;
    input fifo_read_clk;
    input rst_c;
    output fifo_read_clk_enable_293;
    input \m[0] ;
    input \m[1] ;
    input \window_count[4] ;
    output n9;
    output zcr_valid_right_c;
    input GND_net;
    output n8;
    output n10;
    output n7;
    
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    wire [3:0]n37;
    
    wire window_count_6__N_558;
    wire [3:0]n21;
    wire [6:0]window_count;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(20[11:23])
    
    wire n2982, n2981;
    
    FD1S3IX window_count_99_100__i0 (.D(n21[0]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(n37[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100__i0.GSR = "ENABLED";
    LUT4 i109_1_lut_rep_13 (.A(rst_c), .Z(fifo_read_clk_enable_293)) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i109_1_lut_rep_13.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rst_c), .B(\m[0] ), .C(\m[1] ), 
         .D(\window_count[4] ), .Z(n9)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1S3IX window_count_99_100__i3 (.D(n21[3]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100__i3.GSR = "ENABLED";
    OFS1P3DX zcr_valid_209 (.D(window_count_6__N_558), .SP(fifo_read_clk_enable_293), 
            .SCLK(fifo_read_clk), .CD(GND_net), .Q(zcr_valid_right_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(30[3] 41[6])
    defparam zcr_valid_209.GSR = "DISABLED";
    FD1S3IX window_count_99_100__i2 (.D(n21[2]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100__i2.GSR = "ENABLED";
    FD1S3IX window_count_99_100__i1 (.D(n21[1]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100__i1.GSR = "ENABLED";
    LUT4 i2075_3_lut (.A(window_count[1]), .B(window_count[3]), .C(window_count[2]), 
         .Z(window_count_6__N_558)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2075_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_49 (.A(rst_c), .B(\m[0] ), .C(\m[1] ), 
         .D(\window_count[4] ), .Z(n8)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_49.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_50 (.A(rst_c), .B(\m[0] ), .C(\m[1] ), 
         .D(\window_count[4] ), .Z(n10)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_50.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_51 (.A(rst_c), .B(\m[0] ), .C(\m[1] ), 
         .D(\window_count[4] ), .Z(n7)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_51.init = 16'h1000;
    CCU2D window_count_99_100_add_4_5 (.A0(window_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2982), .S0(n21[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100_add_4_5.INIT0 = 16'hfaaa;
    defparam window_count_99_100_add_4_5.INIT1 = 16'h0000;
    defparam window_count_99_100_add_4_5.INJECT1_0 = "NO";
    defparam window_count_99_100_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_99_100_add_4_3 (.A0(window_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2981), .COUT(n2982), .S0(n21[1]), 
          .S1(n21[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100_add_4_3.INIT0 = 16'hfaaa;
    defparam window_count_99_100_add_4_3.INIT1 = 16'hfaaa;
    defparam window_count_99_100_add_4_3.INJECT1_0 = "NO";
    defparam window_count_99_100_add_4_3.INJECT1_1 = "NO";
    CCU2D window_count_99_100_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n37[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2981), .S1(n21[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_99_100_add_4_1.INIT0 = 16'hF000;
    defparam window_count_99_100_add_4_1.INIT1 = 16'h0555;
    defparam window_count_99_100_add_4_1.INJECT1_0 = "NO";
    defparam window_count_99_100_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module subMean
//

module subMean (GND_net, \window_count[4] , fifo_read_clk, n4055, \m[1] , 
            \m[0] , rst_c, subMean_valid_c, fifo_read_clk_enable_293, 
            left_out, subMean_out_c_15, subMean_out_c_13, subMean_out_c_14, 
            subMean_out_c_11, subMean_out_c_12, subMean_out_c_9, subMean_out_c_10, 
            subMean_out_c_7, subMean_out_c_8, n8, subMean_out_c_5, subMean_out_c_6, 
            subMean_out_c_3, subMean_out_c_4, subMean_out_c_1, subMean_out_c_2, 
            subMean_out_c_0, n10, n7, n9) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \window_count[4] ;
    input fifo_read_clk;
    input n4055;
    output \m[1] ;
    output \m[0] ;
    input rst_c;
    output subMean_valid_c;
    input fifo_read_clk_enable_293;
    input [15:0]left_out;
    output subMean_out_c_15;
    output subMean_out_c_13;
    output subMean_out_c_14;
    output subMean_out_c_11;
    output subMean_out_c_12;
    output subMean_out_c_9;
    output subMean_out_c_10;
    output subMean_out_c_7;
    output subMean_out_c_8;
    input n8;
    output subMean_out_c_5;
    output subMean_out_c_6;
    output subMean_out_c_3;
    output subMean_out_c_4;
    output subMean_out_c_1;
    output subMean_out_c_2;
    output subMean_out_c_0;
    input n10;
    input n7;
    input n9;
    
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire n3866, n3867;
    wire [31:0]n;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(25[9:10])
    
    wire n3873, subMean_window_12_9, subMean_window_13_9, n3540, n3251, 
        n3252, n3258, n3894, n3895;
    wire [4:0]window_count;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(21[11:23])
    
    wire n3902, n2996;
    wire [19:0]n408;
    wire [19:0]n1;
    wire [19:0]n85;
    
    wire n2997;
    wire [4:0]n25;
    
    wire subMean_window_8_3, subMean_window_9_3, n3793, sum_19__N_824, 
        n3896, n3897, n3903, n3898, n3899, n3904;
    wire [31:0]m;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(24[9:10])
    
    wire m_31__N_862;
    wire [31:0]n133;
    wire [19:0]sum;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(19[12:15])
    
    wire subMean_window_12_10, subMean_window_13_10, n3435, subMean_window_10_10, 
        subMean_window_11_10, n3434;
    wire [15:0]avg;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(20[12:15])
    
    wire subMean_window_14_9, subMean_window_15_9, n3541, subMean_window_8_10, 
        subMean_window_9_10, n3433, subMean_window_6_10, subMean_window_7_10, 
        n3432, n3900, n3901, n3905, subMean_window_4_10, subMean_window_5_10, 
        n3431, subMean_window_2_10, subMean_window_3_10, n3430, n3909, 
        n3910, n3917, subMean_window_0_10, subMean_window_1_10, n3429, 
        n3253, n3254, n3259, n3324, n3325, n3332, n3326, n3327, 
        n3333, n3255, n3256, n3260, n3731, n3732, n3738, n4050, 
        n3868, n3869, n3874, n3474, n3475, n3482, n3836, n3837, 
        n3843, n3328, n3329, n3334, n10_c, n3838, n3839, n3844, 
        n3476, n3477, n3483, n3478, n3479, n3484, subMean_window_0_0, 
        subMean_window_1_0, n3234, n3911, n3912, n3918, n9_c, n3913, 
        n3914, n3919, n3915, n3916, n3920, n2751, n7_c, n3330, 
        n3331, n3335, subMean_window_4_7, subMean_window_5_7, subMean_window_6_7, 
        subMean_window_7_7, n3870, n3871, n3875, n3480, n3481, n3485;
    wire [31:0]n66;
    
    wire n3699, n3700, n3707, subMean_window_6_8, subMean_window_7_8, 
        n3582, subMean_window_2_0, subMean_window_3_0, n3235, n3701, 
        n3702, n3708, fifo_read_clk_enable_52, n3703, n3704, n3709, 
        n3705, n3706, n3710, n3294, n3295, n3302, n3819, n3820, 
        n3827, n3296, n3297, n3303, n3821, n3822, n3828, n3489, 
        n3490, n3497, n3491, n3492, n3498, n3823, n3824, n3829, 
        n3825, n3826, n3830, n3714, n3715, n3722, n3493, n3494, 
        n3499, subMean_window_4_15, subMean_window_5_15, subMean_window_0_5, 
        subMean_window_1_5, n3744, subMean_window_8_8, subMean_window_9_8, 
        n3583, subMean_window_12_5, subMean_window_13_5, n3750, subMean_window_10_8, 
        subMean_window_11_8, n3584, subMean_window_0_13, subMean_window_1_13, 
        n3384, subMean_window_12_8, subMean_window_13_8, n3585, subMean_window_2_13, 
        subMean_window_3_13, n3385, subMean_window_4_13, subMean_window_5_13, 
        n3386, subMean_window_6_15, subMean_window_7_15, n2992;
    wire [15:0]subMean_out_15__N_663;
    
    wire n2991, subMean_window_2_5, subMean_window_3_5, n3745, subMean_window_14_8, 
        subMean_window_15_8, n3586, subMean_window_4_4, subMean_window_5_4, 
        n3761, subMean_window_6_4, subMean_window_7_4, n3762, subMean_window_0_1, 
        subMean_window_1_1, subMean_window_2_1, subMean_window_3_1, subMean_window_8_4, 
        subMean_window_9_4, n3763, subMean_window_10_4, subMean_window_11_4, 
        n3764, subMean_window_12_4, subMean_window_13_4, n3765, subMean_window_0_2, 
        subMean_window_0_3, subMean_window_0_4, subMean_window_0_6, subMean_window_0_7, 
        subMean_window_0_8, subMean_window_0_9, subMean_window_0_11, subMean_window_0_12, 
        subMean_window_0_14, subMean_window_0_15, fifo_read_clk_enable_68, 
        subMean_window_1_2, subMean_window_1_3, subMean_window_1_4, subMean_window_1_6, 
        subMean_window_1_7, subMean_window_1_8, subMean_window_1_9, subMean_window_1_11, 
        subMean_window_1_12, subMean_window_1_14, subMean_window_1_15, 
        fifo_read_clk_enable_84, subMean_window_2_2, subMean_window_2_3, 
        subMean_window_2_4, subMean_window_2_6, subMean_window_2_7, subMean_window_2_8, 
        subMean_window_2_9, subMean_window_2_11, subMean_window_2_12, 
        subMean_window_2_14, subMean_window_2_15, fifo_read_clk_enable_100, 
        subMean_window_3_2, subMean_window_3_3, subMean_window_3_4, subMean_window_3_6, 
        subMean_window_3_7, subMean_window_3_8, subMean_window_3_9, subMean_window_3_11, 
        subMean_window_3_12, subMean_window_3_14, subMean_window_3_15, 
        subMean_window_4_0, fifo_read_clk_enable_116, subMean_window_4_1, 
        subMean_window_4_2, subMean_window_4_3, subMean_window_4_5, subMean_window_4_6, 
        subMean_window_4_8, subMean_window_4_9, subMean_window_4_11, subMean_window_4_12, 
        subMean_window_4_14, subMean_window_5_0, fifo_read_clk_enable_132, 
        subMean_window_5_1, subMean_window_5_2, subMean_window_5_3, subMean_window_5_5, 
        subMean_window_5_6, subMean_window_5_8, subMean_window_5_9, subMean_window_5_11, 
        subMean_window_5_12, subMean_window_5_14, subMean_window_6_0, 
        fifo_read_clk_enable_148, subMean_window_6_1, subMean_window_6_2, 
        subMean_window_6_3, subMean_window_6_5, subMean_window_6_6, subMean_window_6_9, 
        subMean_window_6_11, subMean_window_6_12, subMean_window_6_13, 
        subMean_window_6_14, subMean_window_7_0, fifo_read_clk_enable_164, 
        subMean_window_7_1, subMean_window_7_2, subMean_window_7_3, subMean_window_7_5, 
        subMean_window_7_6, subMean_window_7_9, subMean_window_7_11, subMean_window_7_12, 
        subMean_window_7_13, subMean_window_7_14, subMean_window_8_0, 
        fifo_read_clk_enable_180, subMean_window_8_1, subMean_window_8_2, 
        subMean_window_8_5, subMean_window_8_6, subMean_window_8_7, subMean_window_8_9, 
        subMean_window_8_11, subMean_window_8_12, subMean_window_8_13, 
        subMean_window_8_14, subMean_window_8_15, subMean_window_9_0, 
        fifo_read_clk_enable_196, subMean_window_9_1, subMean_window_9_2, 
        subMean_window_9_5, subMean_window_9_6, subMean_window_9_7, subMean_window_9_9, 
        subMean_window_9_11, subMean_window_9_12, subMean_window_9_13, 
        subMean_window_9_14, subMean_window_9_15, subMean_window_10_0, 
        fifo_read_clk_enable_212, subMean_window_10_1, subMean_window_10_2, 
        subMean_window_10_3, subMean_window_10_5, subMean_window_10_6, 
        subMean_window_10_7, subMean_window_10_9, subMean_window_10_11, 
        subMean_window_10_12, subMean_window_10_13, subMean_window_10_14, 
        subMean_window_10_15, subMean_window_11_0, fifo_read_clk_enable_228, 
        subMean_window_11_1, subMean_window_11_2, subMean_window_11_3, 
        subMean_window_11_5, subMean_window_11_6, subMean_window_11_7, 
        subMean_window_11_9, subMean_window_11_11, subMean_window_11_12, 
        subMean_window_11_13, subMean_window_11_14, subMean_window_11_15, 
        subMean_window_12_0, fifo_read_clk_enable_244, subMean_window_12_1, 
        subMean_window_12_2, subMean_window_12_3, subMean_window_12_6, 
        subMean_window_12_7, subMean_window_12_11, subMean_window_12_12, 
        subMean_window_12_13, subMean_window_12_14, subMean_window_12_15, 
        subMean_window_13_0, fifo_read_clk_enable_260, subMean_window_13_1, 
        subMean_window_13_2, subMean_window_13_3, subMean_window_13_6, 
        subMean_window_13_7, subMean_window_13_11, subMean_window_13_12, 
        subMean_window_13_13, subMean_window_13_14, subMean_window_13_15, 
        subMean_window_14_0, fifo_read_clk_enable_276, subMean_window_14_1, 
        subMean_window_14_2, subMean_window_14_3, subMean_window_14_4, 
        subMean_window_14_5, subMean_window_14_6, subMean_window_14_7, 
        subMean_window_14_10, subMean_window_14_11, subMean_window_14_12, 
        subMean_window_14_13, subMean_window_14_14, subMean_window_14_15, 
        subMean_window_15_0, fifo_read_clk_enable_292, subMean_window_15_1, 
        subMean_window_15_2, subMean_window_15_3, subMean_window_15_4, 
        subMean_window_15_5, subMean_window_15_6, subMean_window_15_7, 
        subMean_window_15_10, subMean_window_15_11, subMean_window_15_12, 
        subMean_window_15_13, subMean_window_15_14, subMean_window_15_15, 
        n3766, n3594, n3794, n3595, n3807, n3746, n3747, n3596, 
        n3597, n3598, n3599, n3600, n3601, n3676, n3686, n3687, 
        n3808, n3809, n3688, n3689, n3459, n3460, n3461, n3462, 
        n3690, n3691, n3463, n3464, n3465, n3466, n3810, n3811, 
        n3864, n3865, n3279, n3387, n3656, n3657, n3849, n3850, 
        n3280, n3388, n3281, n3389, n3390, n3391, n3658, n3282, 
        n3495, n3496, n3500, n3283, n3733, n3734, n3739, n3735, 
        n3736, n3740, n3659, n3660, n3661, n3789, n3751, n3790, 
        n3399, n3400, n3401, n3284, n3402, n3403, n3748, n_31__N_895;
    wire [31:0]n_31__N_863;
    
    wire n3285, n3286, n3249, n3250, n3236, n3237, n3238, n3404, 
        n3239, n3240, n3241, n3609, n3610, n3851, n3611, n3612, 
        n3613, n3614, n3939, n3940, n3615, n3616, n3795, n3852, 
        n3796, n3414, n3415, n3416, n3417, n3549, n3550, n3551, 
        n3552, n3553, n3931, n2990, n3554, n3418, n3266, n3267, 
        n3273, n2998, n2999, n3555, n3556, n3564, n2989, n3749, 
        n3419, n3565, n3566, n3567, n2988, n3405, n2747, n2745, 
        n3406, n2987, n2986, n2985, n3941, n3942, n3568, n3943, 
        n2980, n3118, n2979, n3308, n3698, n3117, n3116, n3944, 
        n3115, n3114, n3309, n3113, n2978, n3398, n3728, n3338, 
        n3713, n3112, n3111, n2977, n3818, n3503, n3458, n3473, 
        n3110, n3109, n987, n997, n3108, n3107, n3106, n2976, 
        n3608, n3563, n3518, n3533, n3105, n2975, n3578, n3623, 
        n3863, n3593, n3104, n3103, n3102, n3101, n3100, n2974, 
        n3758, n3653, n3293, n3638, n3099, n3098, n2973, n3893, 
        n3683, n3788, n3668, n3097, n3096, n3095, n3094, n3310, 
        n3093, n2972, n3353, n3908, n3938, n3848, n3413, n3248, 
        n970, n955, n3945, n965, n960, n3076, n3569, n3791, 
        n3792, n3570, n3759, n3946, n3571, n3924, n3311, n3925, 
        n3420, n3421, n3075, n3312, n3074, n3073, n3298, n3299, 
        n3304, n3072, n3071, n3070, n3069, n3669, n3068, n3067, 
        n3066, n3926, n3716, n3717, n3723, n3065, n3064, n3927, 
        n3063, n3062, n3760, n3061, n3879, n3880, n3887, n3624, 
        n3928, n3718, n3719, n3724, n3929, n3579, n3720, n3721, 
        n3725, n3580, n3930, n3670, n3881, n3882, n3888, n3264, 
        n3265, n3272, n3883, n3884, n3889, n3625, n3021, n3300, 
        n3301, n3305, n3020, n3019, n3018, n3017, n3016, n3015, 
        n3014, n3339, n3340, n3347, n3013, n3012, n3011, n3010, 
        n3009, n3008, n3007, n3885, n3886, n3890, n3006, n3004, 
        n3003, n3002, n3313, n3001, n3000, n3504, n3505, n3512, 
        n3314, n3774, n3775, n3436, n3506, n3507, n3513, n3444, 
        n3445, n3446, n3626, n3447, n3448, n3627, n3449, n3315, 
        n3450, n3316, n3508, n3509, n3514, n3451, n3804, n3628, 
        n3805, n3510, n3511, n3515, n3684, n3519, n3520, n3527, 
        n3629, n3630, n3685, n3631, n3776, n3777, n3806, n3778, 
        n3779, n3341, n3342, n3780, n3921, n3922, n3741, n3742, 
        n3846, n3847, n3546, n3547, n3756, n3757, n3781, n3581, 
        n3343, n3344, n3561, n3562, n3576, n3577, n3591, n3592, 
        n3345, n3346, n3936, n3937, n3771, n3772, n3606, n3607, 
        n3639, n3640, n3621, n3622, n3276, n3277, n3246, n3247, 
        n3674, n3636, n3637, n3321, n3322, n3951, n3952, n3351, 
        n3352, n3366, n3367, n3786, n3787, n3651, n3652, n3381, 
        n3382, n3396, n3397, n3666, n3667, n3411, n3412, n3861, 
        n3862, n3671, n3641, n3642, n3426, n3427, n3643, n3644, 
        n3801, n3802, n3681, n3682, n3354, n3672, n3673, n3355, 
        n3521, n3522, n3441, n3442, n3456, n3457, n3471, n3472, 
        n3523, n3524, n3528, n3675, n3729, n3696, n3697, n3906, 
        n3907, n3816, n3817, n3356, n3357, n3645, n3730, n3646, 
        n3358, n3359, n3834, n3835, n3525, n3360, n3361, n3369, 
        n3526, n3291, n3292, n3261, n3262, n3486, n3487, n3876, 
        n3877, n3336, n3337, n3711, n3712, n3501, n3502, n3831, 
        n3832, n3840, n3726, n3727, n3516, n3517, n3891, n3892, 
        n3531, n3532, n3306, n3307, n3842, n3370, n3371, n3529, 
        n3737, n3372, n3841, n3373, n3374, n3375, n3268, n3530, 
        n3845, n3542, n3543, n3544, n3545, n3752, n3753, n3754, 
        n3755, n3557, n3558, n3559, n3560, n3269, n3572, n3573, 
        n3574, n3575, n3932, n3933, n3587, n3588, n3589, n3590, 
        n3934, n3935, n3767, n3768, n3769, n3770, n3602, n3603, 
        n3274, n3275, n3604, n3605, n3617, n3618, n3619, n3620, 
        n3242, n3243, n3244, n3245, n3534, n3947, n3948, n3317, 
        n3318, n3949, n3950, n3632, n3633, n3634, n3635, n3319, 
        n3320, n3348, n3349, n3350, n3782, n3783, n3784, n3785, 
        n3647, n3648, n3362, n3363, n3364, n3365, n3649, n3650, 
        n3377, n3378, n3379, n3380, n3376, n3392, n3393, n3394, 
        n3395, n3857, n3858, n3662, n3663, n3664, n3665, n3859, 
        n3860, n3407, n3408, n3409, n3410, n3797, n3798, n3799, 
        n3800, n3422, n3423, n3424, n3425, n3677, n3678, n3679, 
        n3680, n3437, n3438, n3439, n3440, n3535, n3452, n3453, 
        n3454, n3455, n3692, n3693, n3467, n3468, n3469, n3470, 
        n3812, n3813, n3694, n3695, n3814, n3815, n3287, n3288, 
        n3289, n3290, n3257, n3853, n3872, n3854, n3536, n3537, 
        n3270, n3271, n3538, n3539, n3855, n3856, n3654, n3655;
    
    PFUMX i3066 (.BLUT(n3866), .ALUT(n3867), .C0(n[1]), .Z(n3873));
    LUT4 i2733_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(n[0]), .Z(n3540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2733_3_lut.init = 16'hcaca;
    PFUMX i2451 (.BLUT(n3251), .ALUT(n3252), .C0(n[1]), .Z(n3258));
    PFUMX i3095 (.BLUT(n3894), .ALUT(n3895), .C0(window_count[1]), .Z(n3902));
    CCU2D sum_105_add_4_4 (.A0(n408[2]), .B0(n1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n408[3]), .B1(n1[3]), .C1(GND_net), .D1(GND_net), .CIN(n2996), 
          .COUT(n2997), .S0(n85[2]), .S1(n85[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_4.INIT0 = 16'h5666;
    defparam sum_105_add_4_4.INIT1 = 16'h5666;
    defparam sum_105_add_4_4.INJECT1_0 = "NO";
    defparam sum_105_add_4_4.INJECT1_1 = "NO";
    FD1P3AX window_count_107__i4 (.D(n4055), .SP(n25[4]), .CK(fifo_read_clk), 
            .Q(\window_count[4] ));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam window_count_107__i4.GSR = "ENABLED";
    CCU2D sum_105_add_4_2 (.A0(n408[0]), .B0(n1[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n408[1]), .B1(n1[1]), .C1(GND_net), .D1(GND_net), .COUT(n2996), 
          .S1(n85[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_2.INIT0 = 16'h7000;
    defparam sum_105_add_4_2.INIT1 = 16'h5666;
    defparam sum_105_add_4_2.INJECT1_0 = "NO";
    defparam sum_105_add_4_2.INJECT1_1 = "NO";
    LUT4 i2986_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(n[0]), 
         .Z(n3793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2986_3_lut.init = 16'hcaca;
    FD1P3AX window_count_107__i3 (.D(n25[3]), .SP(sum_19__N_824), .CK(fifo_read_clk), 
            .Q(window_count[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam window_count_107__i3.GSR = "ENABLED";
    FD1P3AX window_count_107__i2 (.D(n25[2]), .SP(sum_19__N_824), .CK(fifo_read_clk), 
            .Q(window_count[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam window_count_107__i2.GSR = "ENABLED";
    FD1P3AX window_count_107__i1 (.D(n25[1]), .SP(sum_19__N_824), .CK(fifo_read_clk), 
            .Q(window_count[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam window_count_107__i1.GSR = "ENABLED";
    PFUMX i3096 (.BLUT(n3896), .ALUT(n3897), .C0(window_count[1]), .Z(n3903));
    PFUMX i3097 (.BLUT(n3898), .ALUT(n3899), .C0(window_count[1]), .Z(n3904));
    FD1S3IX m_106__i31 (.D(n133[31]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i31.GSR = "ENABLED";
    FD1S3IX m_106__i30 (.D(n133[30]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i30.GSR = "ENABLED";
    FD1S3IX m_106__i29 (.D(n133[29]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i29.GSR = "ENABLED";
    FD1S3IX m_106__i28 (.D(n133[28]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i28.GSR = "ENABLED";
    FD1S3IX m_106__i27 (.D(n133[27]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i27.GSR = "ENABLED";
    FD1S3IX m_106__i26 (.D(n133[26]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i26.GSR = "ENABLED";
    FD1S3IX m_106__i25 (.D(n133[25]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i25.GSR = "ENABLED";
    FD1S3IX m_106__i24 (.D(n133[24]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i24.GSR = "ENABLED";
    FD1S3IX m_106__i23 (.D(n133[23]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i23.GSR = "ENABLED";
    FD1S3IX m_106__i22 (.D(n133[22]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i22.GSR = "ENABLED";
    FD1S3IX m_106__i21 (.D(n133[21]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i21.GSR = "ENABLED";
    FD1S3IX m_106__i20 (.D(n133[20]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i20.GSR = "ENABLED";
    FD1S3IX m_106__i19 (.D(n133[19]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i19.GSR = "ENABLED";
    FD1S3IX m_106__i18 (.D(n133[18]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i18.GSR = "ENABLED";
    FD1S3IX m_106__i17 (.D(n133[17]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i17.GSR = "ENABLED";
    FD1S3IX m_106__i16 (.D(n133[16]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i16.GSR = "ENABLED";
    FD1S3IX m_106__i15 (.D(n133[15]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i15.GSR = "ENABLED";
    FD1S3IX m_106__i14 (.D(n133[14]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i14.GSR = "ENABLED";
    FD1S3IX m_106__i13 (.D(n133[13]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i13.GSR = "ENABLED";
    FD1S3IX m_106__i12 (.D(n133[12]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i12.GSR = "ENABLED";
    FD1S3IX m_106__i11 (.D(n133[11]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i11.GSR = "ENABLED";
    FD1S3IX m_106__i10 (.D(n133[10]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i10.GSR = "ENABLED";
    FD1S3IX m_106__i9 (.D(n133[9]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i9.GSR = "ENABLED";
    FD1S3IX m_106__i8 (.D(n133[8]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i8.GSR = "ENABLED";
    FD1S3IX m_106__i7 (.D(n133[7]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i7.GSR = "ENABLED";
    FD1S3IX m_106__i6 (.D(n133[6]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i6.GSR = "ENABLED";
    FD1S3IX m_106__i5 (.D(n133[5]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i5.GSR = "ENABLED";
    FD1S3IX m_106__i4 (.D(n133[4]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i4.GSR = "ENABLED";
    FD1S3IX m_106__i3 (.D(n133[3]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i3.GSR = "ENABLED";
    FD1S3IX m_106__i2 (.D(n133[2]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(m[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i2.GSR = "ENABLED";
    FD1S3IX m_106__i1 (.D(n133[1]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(\m[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i1.GSR = "ENABLED";
    FD1S3AX sum_105__i19 (.D(n85[19]), .CK(fifo_read_clk), .Q(sum[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i19.GSR = "ENABLED";
    FD1S3AX sum_105__i18 (.D(n85[18]), .CK(fifo_read_clk), .Q(sum[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i18.GSR = "ENABLED";
    FD1S3AX sum_105__i17 (.D(n85[17]), .CK(fifo_read_clk), .Q(sum[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i17.GSR = "ENABLED";
    FD1S3AX sum_105__i16 (.D(n85[16]), .CK(fifo_read_clk), .Q(sum[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i16.GSR = "ENABLED";
    FD1S3AX sum_105__i15 (.D(n85[15]), .CK(fifo_read_clk), .Q(sum[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i15.GSR = "ENABLED";
    FD1S3AX sum_105__i14 (.D(n85[14]), .CK(fifo_read_clk), .Q(sum[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i14.GSR = "ENABLED";
    FD1S3AX sum_105__i13 (.D(n85[13]), .CK(fifo_read_clk), .Q(sum[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i13.GSR = "ENABLED";
    FD1S3AX sum_105__i12 (.D(n85[12]), .CK(fifo_read_clk), .Q(sum[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i12.GSR = "ENABLED";
    FD1S3AX sum_105__i11 (.D(n85[11]), .CK(fifo_read_clk), .Q(sum[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i11.GSR = "ENABLED";
    FD1S3AX sum_105__i10 (.D(n85[10]), .CK(fifo_read_clk), .Q(sum[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i10.GSR = "ENABLED";
    FD1S3AX sum_105__i9 (.D(n85[9]), .CK(fifo_read_clk), .Q(sum[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i9.GSR = "ENABLED";
    FD1S3AX sum_105__i8 (.D(n85[8]), .CK(fifo_read_clk), .Q(sum[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i8.GSR = "ENABLED";
    FD1S3AX sum_105__i7 (.D(n85[7]), .CK(fifo_read_clk), .Q(sum[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i7.GSR = "ENABLED";
    FD1S3AX sum_105__i6 (.D(n85[6]), .CK(fifo_read_clk), .Q(sum[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i6.GSR = "ENABLED";
    FD1S3AX sum_105__i5 (.D(n85[5]), .CK(fifo_read_clk), .Q(sum[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i5.GSR = "ENABLED";
    FD1S3AX sum_105__i4 (.D(n85[4]), .CK(fifo_read_clk), .Q(sum[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i4.GSR = "ENABLED";
    FD1S3AX sum_105__i3 (.D(n85[3]), .CK(fifo_read_clk), .Q(n1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i3.GSR = "ENABLED";
    FD1S3AX sum_105__i2 (.D(n85[2]), .CK(fifo_read_clk), .Q(n1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i2.GSR = "ENABLED";
    FD1S3AX sum_105__i1 (.D(n85[1]), .CK(fifo_read_clk), .Q(n1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i1.GSR = "ENABLED";
    LUT4 i2628_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(n[0]), .Z(n3435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2628_3_lut.init = 16'hcaca;
    LUT4 i2627_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(n[0]), .Z(n3434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2627_3_lut.init = 16'hcaca;
    FD1P3AX avg_i0_i0 (.D(sum[4]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i0.GSR = "ENABLED";
    LUT4 i2734_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(n[0]), .Z(n3541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2734_3_lut.init = 16'hcaca;
    LUT4 i2626_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(n[0]), .Z(n3433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2626_3_lut.init = 16'hcaca;
    LUT4 i2625_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(n[0]), .Z(n3432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2625_3_lut.init = 16'hcaca;
    PFUMX i3098 (.BLUT(n3900), .ALUT(n3901), .C0(window_count[1]), .Z(n3905));
    LUT4 i2624_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(n[0]), .Z(n3431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2624_3_lut.init = 16'hcaca;
    LUT4 i2623_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(n[0]), .Z(n3430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2623_3_lut.init = 16'hcaca;
    FD1P3AX avg_i0_i15 (.D(sum[19]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i15.GSR = "ENABLED";
    PFUMX i3110 (.BLUT(n3909), .ALUT(n3910), .C0(n[1]), .Z(n3917));
    LUT4 i2622_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(n[0]), .Z(n3429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2622_3_lut.init = 16'hcaca;
    PFUMX i2452 (.BLUT(n3253), .ALUT(n3254), .C0(n[1]), .Z(n3259));
    PFUMX i2525 (.BLUT(n3324), .ALUT(n3325), .C0(\m[1] ), .Z(n3332));
    PFUMX i2526 (.BLUT(n3326), .ALUT(n3327), .C0(\m[1] ), .Z(n3333));
    PFUMX i2453 (.BLUT(n3255), .ALUT(n3256), .C0(n[1]), .Z(n3260));
    PFUMX i2931 (.BLUT(n3731), .ALUT(n3732), .C0(n[1]), .Z(n3738));
    FD1P3AX avg_i0_i14 (.D(sum[18]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i14.GSR = "ENABLED";
    FD1P3AX avg_i0_i13 (.D(sum[17]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i13.GSR = "ENABLED";
    LUT4 i2324_3_lut_4_lut (.A(window_count[2]), .B(n4050), .C(window_count[3]), 
         .D(\window_count[4] ), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2324_3_lut_4_lut.init = 16'h7f80;
    FD1S3AX sum_105__i0 (.D(n85[0]), .CK(fifo_read_clk), .Q(n1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105__i0.GSR = "ENABLED";
    PFUMX i3067 (.BLUT(n3868), .ALUT(n3869), .C0(n[1]), .Z(n3874));
    PFUMX i2675 (.BLUT(n3474), .ALUT(n3475), .C0(n[1]), .Z(n3482));
    PFUMX i3036 (.BLUT(n3836), .ALUT(n3837), .C0(window_count[1]), .Z(n3843));
    FD1S3IX m_106__i0 (.D(n133[0]), .CK(fifo_read_clk), .CD(m_31__N_862), 
            .Q(\m[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106__i0.GSR = "ENABLED";
    FD1P3AX avg_i0_i12 (.D(sum[16]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i12.GSR = "ENABLED";
    PFUMX i2527 (.BLUT(n3328), .ALUT(n3329), .C0(\m[1] ), .Z(n3334));
    FD1P3AX avg_i0_i11 (.D(sum[15]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i11.GSR = "ENABLED";
    FD1P3AX avg_i0_i10 (.D(sum[14]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i10.GSR = "ENABLED";
    FD1P3AX avg_i0_i9 (.D(sum[13]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(\window_count[4] ), .B(rst_c), .C(window_count[1]), 
         .D(window_count[0]), .Z(n10_c)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    PFUMX i3037 (.BLUT(n3838), .ALUT(n3839), .C0(window_count[1]), .Z(n3844));
    FD1P3AX avg_i0_i8 (.D(sum[12]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i8.GSR = "ENABLED";
    PFUMX i2676 (.BLUT(n3476), .ALUT(n3477), .C0(n[1]), .Z(n3483));
    FD1P3AX avg_i0_i7 (.D(sum[11]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i7.GSR = "ENABLED";
    OFS1P3DX subMean_valid_38 (.D(\window_count[4] ), .SP(fifo_read_clk_enable_293), 
            .SCLK(fifo_read_clk), .CD(GND_net), .Q(subMean_valid_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam subMean_valid_38.GSR = "DISABLED";
    FD1P3AX avg_i0_i6 (.D(sum[10]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i6.GSR = "ENABLED";
    PFUMX i2677 (.BLUT(n3478), .ALUT(n3479), .C0(n[1]), .Z(n3484));
    LUT4 i2427_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(window_count[0]), 
         .Z(n3234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2427_3_lut.init = 16'hcaca;
    PFUMX i3111 (.BLUT(n3911), .ALUT(n3912), .C0(n[1]), .Z(n3918));
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(\window_count[4] ), .B(rst_c), 
         .C(window_count[1]), .D(window_count[0]), .Z(n9_c)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'h1000;
    PFUMX i3112 (.BLUT(n3913), .ALUT(n3914), .C0(n[1]), .Z(n3919));
    PFUMX i3113 (.BLUT(n3915), .ALUT(n3916), .C0(n[1]), .Z(n3920));
    FD1P3AX avg_i0_i5 (.D(sum[9]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i5.GSR = "ENABLED";
    LUT4 i2089_2_lut_3_lut_4_lut (.A(\window_count[4] ), .B(rst_c), .C(window_count[1]), 
         .D(window_count[0]), .Z(n2751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2089_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX avg_i0_i4 (.D(sum[8]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i4.GSR = "ENABLED";
    FD1P3AX avg_i0_i3 (.D(sum[7]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i3.GSR = "ENABLED";
    FD1P3AX avg_i0_i2 (.D(sum[6]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i2.GSR = "ENABLED";
    FD1P3AX avg_i0_i1 (.D(sum[5]), .SP(\window_count[4] ), .CK(fifo_read_clk), 
            .Q(avg[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(39[3] 54[6])
    defparam avg_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(\window_count[4] ), .B(rst_c), 
         .C(window_count[1]), .D(window_count[0]), .Z(n7_c)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h0010;
    FD1P3AX window_count_107__i0 (.D(n25[0]), .SP(sum_19__N_824), .CK(fifo_read_clk), 
            .Q(window_count[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam window_count_107__i0.GSR = "ENABLED";
    PFUMX i2528 (.BLUT(n3330), .ALUT(n3331), .C0(\m[1] ), .Z(n3335));
    LUT4 i3059_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(n[0]), 
         .Z(n3866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3059_3_lut.init = 16'hcaca;
    LUT4 i3060_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(n[0]), 
         .Z(n3867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3060_3_lut.init = 16'hcaca;
    PFUMX i3068 (.BLUT(n3870), .ALUT(n3871), .C0(n[1]), .Z(n3875));
    PFUMX i2678 (.BLUT(n3480), .ALUT(n3481), .C0(n[1]), .Z(n3485));
    FD1S3AY n__i0 (.D(n66[0]), .CK(fifo_read_clk), .Q(n[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i0.GSR = "ENABLED";
    PFUMX i2900 (.BLUT(n3699), .ALUT(n3700), .C0(window_count[1]), .Z(n3707));
    LUT4 i2775_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(window_count[0]), 
         .Z(n3582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2775_3_lut.init = 16'hcaca;
    LUT4 i2428_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(window_count[0]), 
         .Z(n3235)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2428_3_lut.init = 16'hcaca;
    PFUMX i2901 (.BLUT(n3701), .ALUT(n3702), .C0(window_count[1]), .Z(n3708));
    FD1P3AX subMean_window_0_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_0_c.GSR = "DISABLED";
    PFUMX i2902 (.BLUT(n3703), .ALUT(n3704), .C0(window_count[1]), .Z(n3709));
    PFUMX i2903 (.BLUT(n3705), .ALUT(n3706), .C0(window_count[1]), .Z(n3710));
    PFUMX i2495 (.BLUT(n3294), .ALUT(n3295), .C0(\m[1] ), .Z(n3302));
    PFUMX i3020 (.BLUT(n3819), .ALUT(n3820), .C0(n[1]), .Z(n3827));
    PFUMX i2496 (.BLUT(n3296), .ALUT(n3297), .C0(\m[1] ), .Z(n3303));
    PFUMX i3021 (.BLUT(n3821), .ALUT(n3822), .C0(n[1]), .Z(n3828));
    PFUMX i2690 (.BLUT(n3489), .ALUT(n3490), .C0(window_count[1]), .Z(n3497));
    PFUMX i2691 (.BLUT(n3491), .ALUT(n3492), .C0(window_count[1]), .Z(n3498));
    PFUMX i3022 (.BLUT(n3823), .ALUT(n3824), .C0(n[1]), .Z(n3829));
    PFUMX i3023 (.BLUT(n3825), .ALUT(n3826), .C0(n[1]), .Z(n3830));
    PFUMX i2915 (.BLUT(n3714), .ALUT(n3715), .C0(window_count[1]), .Z(n3722));
    PFUMX i2692 (.BLUT(n3493), .ALUT(n3494), .C0(window_count[1]), .Z(n3499));
    LUT4 i2444_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(n[0]), .Z(n3251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2444_3_lut.init = 16'hcaca;
    LUT4 i2937_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(\m[0] ), 
         .Z(n3744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2937_3_lut.init = 16'hcaca;
    LUT4 i2776_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(window_count[0]), 
         .Z(n3583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2776_3_lut.init = 16'hcaca;
    LUT4 i2943_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(\m[0] ), .Z(n3750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2943_3_lut.init = 16'hcaca;
    LUT4 i2777_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(window_count[0]), .Z(n3584)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2777_3_lut.init = 16'hcaca;
    LUT4 i2577_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(\m[0] ), .Z(n3384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2577_3_lut.init = 16'hcaca;
    LUT4 i2778_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(window_count[0]), .Z(n3585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2778_3_lut.init = 16'hcaca;
    LUT4 i2578_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(\m[0] ), .Z(n3385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2578_3_lut.init = 16'hcaca;
    LUT4 i2579_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(\m[0] ), .Z(n3386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2579_3_lut.init = 16'hcaca;
    LUT4 i2445_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(n[0]), .Z(n3252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2445_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_17 (.A0(subMean_out_15__N_663[15]), .B0(avg[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2992), .S0(subMean_out_c_15));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_17.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_17.INIT1 = 16'h0000;
    defparam subMean_out_15__I_0_add_2_17.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_17.INJECT1_1 = "NO";
    CCU2D subMean_out_15__I_0_add_2_15 (.A0(subMean_out_15__N_663[13]), .B0(avg[13]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[14]), 
          .B1(avg[14]), .C1(GND_net), .D1(GND_net), .CIN(n2991), .COUT(n2992), 
          .S0(subMean_out_c_13), .S1(subMean_out_c_14));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_15.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_15.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_15.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_15.INJECT1_1 = "NO";
    LUT4 i2938_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(\m[0] ), 
         .Z(n3745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2938_3_lut.init = 16'hcaca;
    LUT4 i2779_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(window_count[0]), .Z(n3586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2779_3_lut.init = 16'hcaca;
    LUT4 i2954_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(n[0]), 
         .Z(n3761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2954_3_lut.init = 16'hcaca;
    LUT4 i2955_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(n[0]), 
         .Z(n3762)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2955_3_lut.init = 16'hcaca;
    LUT4 i3087_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(window_count[0]), 
         .Z(n3894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3087_3_lut.init = 16'hcaca;
    LUT4 i3088_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(window_count[0]), 
         .Z(n3895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3088_3_lut.init = 16'hcaca;
    LUT4 i2956_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(n[0]), 
         .Z(n3763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2956_3_lut.init = 16'hcaca;
    LUT4 i2957_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(n[0]), .Z(n3764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2957_3_lut.init = 16'hcaca;
    LUT4 i2958_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(n[0]), .Z(n3765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2958_3_lut.init = 16'hcaca;
    FD1P3AX subMean_window_0_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_0_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_52), 
            .CK(fifo_read_clk), .Q(subMean_window_0_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_0_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_1_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_68), 
            .CK(fifo_read_clk), .Q(subMean_window_1_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_1_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_2_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_84), 
            .CK(fifo_read_clk), .Q(subMean_window_2_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_2_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_3_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_100), 
            .CK(fifo_read_clk), .Q(subMean_window_3_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_3_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_4_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_116), 
            .CK(fifo_read_clk), .Q(subMean_window_4_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_4_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_5_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_132), 
            .CK(fifo_read_clk), .Q(subMean_window_5_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_5_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_6_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_148), 
            .CK(fifo_read_clk), .Q(subMean_window_6_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_6_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_7_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_164), 
            .CK(fifo_read_clk), .Q(subMean_window_7_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_7_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_8_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_180), 
            .CK(fifo_read_clk), .Q(subMean_window_8_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_8_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_9_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_196), 
            .CK(fifo_read_clk), .Q(subMean_window_9_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_9_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_10_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_212), 
            .CK(fifo_read_clk), .Q(subMean_window_10_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_10_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_11_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_228), 
            .CK(fifo_read_clk), .Q(subMean_window_11_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_11_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_12_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_244), 
            .CK(fifo_read_clk), .Q(subMean_window_12_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_12_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_13_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_260), 
            .CK(fifo_read_clk), .Q(subMean_window_13_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_13_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_14_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_276), 
            .CK(fifo_read_clk), .Q(subMean_window_14_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_14_15_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_0_c (.D(left_out[0]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_0)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_0_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_1_c (.D(left_out[1]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_1_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_2_c (.D(left_out[2]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_2_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_3_c (.D(left_out[3]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_3)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_3_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_4_c (.D(left_out[4]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_4)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_4_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_5_c (.D(left_out[5]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_5)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_5_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_6_c (.D(left_out[6]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_6)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_6_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_7_c (.D(left_out[7]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_7)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_7_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_8_c (.D(left_out[8]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_8)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_8_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_9_c (.D(left_out[9]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_9)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_9_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_10_c (.D(left_out[10]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_10)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_10_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_11_c (.D(left_out[11]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_11)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_11_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_12_c (.D(left_out[12]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_12)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_12_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_13_c (.D(left_out[13]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_13)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_13_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_14_c (.D(left_out[14]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_14)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_14_c.GSR = "DISABLED";
    FD1P3AX subMean_window_15_15_c (.D(left_out[15]), .SP(fifo_read_clk_enable_292), 
            .CK(fifo_read_clk), .Q(subMean_window_15_15)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(18[12:26])
    defparam subMean_window_15_15_c.GSR = "DISABLED";
    LUT4 i2959_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(n[0]), .Z(n3766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2959_3_lut.init = 16'hcaca;
    LUT4 i2787_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(\m[0] ), 
         .Z(n3594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2787_3_lut.init = 16'hcaca;
    LUT4 i2987_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(n[0]), .Z(n3794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2987_3_lut.init = 16'hcaca;
    LUT4 i2788_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(\m[0] ), 
         .Z(n3595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2788_3_lut.init = 16'hcaca;
    LUT4 i3000_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(\m[0] ), .Z(n3807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3000_3_lut.init = 16'hcaca;
    LUT4 i2939_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(\m[0] ), 
         .Z(n3746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2939_3_lut.init = 16'hcaca;
    LUT4 i2940_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(\m[0] ), 
         .Z(n3747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2940_3_lut.init = 16'hcaca;
    LUT4 i2789_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(\m[0] ), 
         .Z(n3596)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2789_3_lut.init = 16'hcaca;
    LUT4 i2790_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(\m[0] ), 
         .Z(n3597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2790_3_lut.init = 16'hcaca;
    LUT4 i2791_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(\m[0] ), 
         .Z(n3598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2791_3_lut.init = 16'hcaca;
    LUT4 i2792_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(\m[0] ), .Z(n3599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2792_3_lut.init = 16'hcaca;
    LUT4 i2793_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(\m[0] ), .Z(n3600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2793_3_lut.init = 16'hcaca;
    LUT4 i2794_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(\m[0] ), .Z(n3601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2794_3_lut.init = 16'hcaca;
    LUT4 i2869_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(window_count[0]), .Z(n3676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2869_3_lut.init = 16'hcaca;
    LUT4 i2879_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(window_count[0]), .Z(n3686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2879_3_lut.init = 16'hcaca;
    LUT4 i2880_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(window_count[0]), .Z(n3687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2880_3_lut.init = 16'hcaca;
    LUT4 i3001_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(\m[0] ), .Z(n3808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3001_3_lut.init = 16'hcaca;
    LUT4 i3002_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(\m[0] ), .Z(n3809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3002_3_lut.init = 16'hcaca;
    LUT4 i2881_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(window_count[0]), .Z(n3688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2881_3_lut.init = 16'hcaca;
    LUT4 i2882_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(window_count[0]), .Z(n3689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2882_3_lut.init = 16'hcaca;
    LUT4 i2652_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(window_count[0]), .Z(n3459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2652_3_lut.init = 16'hcaca;
    LUT4 i2653_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(window_count[0]), .Z(n3460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2653_3_lut.init = 16'hcaca;
    LUT4 i2654_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(window_count[0]), .Z(n3461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2654_3_lut.init = 16'hcaca;
    LUT4 i2655_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(window_count[0]), .Z(n3462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2655_3_lut.init = 16'hcaca;
    LUT4 i2883_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(window_count[0]), .Z(n3690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2883_3_lut.init = 16'hcaca;
    LUT4 i2884_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(window_count[0]), .Z(n3691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2884_3_lut.init = 16'hcaca;
    LUT4 i2656_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(window_count[0]), .Z(n3463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2656_3_lut.init = 16'hcaca;
    LUT4 i2657_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(window_count[0]), .Z(n3464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2657_3_lut.init = 16'hcaca;
    LUT4 i2658_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(window_count[0]), .Z(n3465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2658_3_lut.init = 16'hcaca;
    LUT4 i2659_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(window_count[0]), .Z(n3466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2659_3_lut.init = 16'hcaca;
    LUT4 i3003_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(\m[0] ), .Z(n3810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3003_3_lut.init = 16'hcaca;
    LUT4 i3004_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(\m[0] ), .Z(n3811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3004_3_lut.init = 16'hcaca;
    LUT4 i3057_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(n[0]), 
         .Z(n3864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3057_3_lut.init = 16'hcaca;
    LUT4 i3058_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(n[0]), 
         .Z(n3865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3058_3_lut.init = 16'hcaca;
    LUT4 i2472_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(\m[0] ), 
         .Z(n3279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2472_3_lut.init = 16'hcaca;
    LUT4 i2580_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(\m[0] ), .Z(n3387)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2580_3_lut.init = 16'hcaca;
    LUT4 i2849_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(window_count[0]), 
         .Z(n3656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2849_3_lut.init = 16'hcaca;
    LUT4 i2850_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(window_count[0]), 
         .Z(n3657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2850_3_lut.init = 16'hcaca;
    LUT4 i3042_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(\m[0] ), 
         .Z(n3849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3042_3_lut.init = 16'hcaca;
    LUT4 i3043_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(\m[0] ), 
         .Z(n3850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3043_3_lut.init = 16'hcaca;
    LUT4 i2473_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(\m[0] ), 
         .Z(n3280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2473_3_lut.init = 16'hcaca;
    LUT4 i2581_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(\m[0] ), .Z(n3388)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2581_3_lut.init = 16'hcaca;
    LUT4 i2474_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(\m[0] ), 
         .Z(n3281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2474_3_lut.init = 16'hcaca;
    LUT4 i2582_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(\m[0] ), .Z(n3389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2582_3_lut.init = 16'hcaca;
    LUT4 i2583_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(\m[0] ), .Z(n3390)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2583_3_lut.init = 16'hcaca;
    LUT4 i2584_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(\m[0] ), .Z(n3391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2584_3_lut.init = 16'hcaca;
    LUT4 i2851_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(window_count[0]), 
         .Z(n3658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2851_3_lut.init = 16'hcaca;
    LUT4 i2475_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(\m[0] ), 
         .Z(n3282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2475_3_lut.init = 16'hcaca;
    PFUMX i2693 (.BLUT(n3495), .ALUT(n3496), .C0(window_count[1]), .Z(n3500));
    LUT4 i2476_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(\m[0] ), 
         .Z(n3283)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2476_3_lut.init = 16'hcaca;
    PFUMX i2932 (.BLUT(n3733), .ALUT(n3734), .C0(n[1]), .Z(n3739));
    PFUMX i2933 (.BLUT(n3735), .ALUT(n3736), .C0(n[1]), .Z(n3740));
    LUT4 i2852_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(window_count[0]), .Z(n3659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2852_3_lut.init = 16'hcaca;
    LUT4 i2853_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(window_count[0]), .Z(n3660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2853_3_lut.init = 16'hcaca;
    LUT4 i2854_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(window_count[0]), .Z(n3661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2854_3_lut.init = 16'hcaca;
    LUT4 i2982_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(n[0]), 
         .Z(n3789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2982_3_lut.init = 16'hcaca;
    LUT4 i2944_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(\m[0] ), .Z(n3751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2944_3_lut.init = 16'hcaca;
    LUT4 i2983_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(n[0]), 
         .Z(n3790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2983_3_lut.init = 16'hcaca;
    LUT4 i2592_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(\m[0] ), 
         .Z(n3399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2592_3_lut.init = 16'hcaca;
    LUT4 i2593_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(\m[0] ), 
         .Z(n3400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2593_3_lut.init = 16'hcaca;
    LUT4 i2594_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(\m[0] ), 
         .Z(n3401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2594_3_lut.init = 16'hcaca;
    LUT4 i2477_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(\m[0] ), .Z(n3284)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2477_3_lut.init = 16'hcaca;
    LUT4 i2595_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(\m[0] ), 
         .Z(n3402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2595_3_lut.init = 16'hcaca;
    LUT4 i2596_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(\m[0] ), 
         .Z(n3403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2596_3_lut.init = 16'hcaca;
    LUT4 i2941_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(\m[0] ), 
         .Z(n3748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2941_3_lut.init = 16'hcaca;
    FD1S3AY n__i1 (.D(n66[1]), .CK(fifo_read_clk), .Q(n[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i1.GSR = "ENABLED";
    FD1S3AY n__i2 (.D(n66[2]), .CK(fifo_read_clk), .Q(n[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i2.GSR = "ENABLED";
    FD1S3IX n__i3 (.D(n_31__N_863[3]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i3.GSR = "ENABLED";
    FD1S3IX n__i4 (.D(n_31__N_863[4]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i4.GSR = "ENABLED";
    FD1S3IX n__i5 (.D(n_31__N_863[5]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i5.GSR = "ENABLED";
    FD1S3IX n__i6 (.D(n_31__N_863[6]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i6.GSR = "ENABLED";
    FD1S3IX n__i7 (.D(n_31__N_863[7]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i7.GSR = "ENABLED";
    FD1S3IX n__i8 (.D(n_31__N_863[8]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i8.GSR = "ENABLED";
    FD1S3IX n__i9 (.D(n_31__N_863[9]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i9.GSR = "ENABLED";
    FD1S3IX n__i10 (.D(n_31__N_863[10]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i10.GSR = "ENABLED";
    FD1S3IX n__i11 (.D(n_31__N_863[11]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i11.GSR = "ENABLED";
    FD1S3IX n__i12 (.D(n_31__N_863[12]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i12.GSR = "ENABLED";
    FD1S3IX n__i13 (.D(n_31__N_863[13]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i13.GSR = "ENABLED";
    FD1S3IX n__i14 (.D(n_31__N_863[14]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i14.GSR = "ENABLED";
    FD1S3IX n__i15 (.D(n_31__N_863[15]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i15.GSR = "ENABLED";
    FD1S3IX n__i16 (.D(n_31__N_863[16]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i16.GSR = "ENABLED";
    FD1S3IX n__i17 (.D(n_31__N_863[17]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i17.GSR = "ENABLED";
    FD1S3IX n__i18 (.D(n_31__N_863[18]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i18.GSR = "ENABLED";
    FD1S3IX n__i19 (.D(n_31__N_863[19]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i19.GSR = "ENABLED";
    FD1S3IX n__i20 (.D(n_31__N_863[20]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i20.GSR = "ENABLED";
    FD1S3IX n__i21 (.D(n_31__N_863[21]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i21.GSR = "ENABLED";
    FD1S3IX n__i22 (.D(n_31__N_863[22]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i22.GSR = "ENABLED";
    FD1S3IX n__i23 (.D(n_31__N_863[23]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i23.GSR = "ENABLED";
    FD1S3IX n__i24 (.D(n_31__N_863[24]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i24.GSR = "ENABLED";
    FD1S3IX n__i25 (.D(n_31__N_863[25]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i25.GSR = "ENABLED";
    FD1S3IX n__i26 (.D(n_31__N_863[26]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i26.GSR = "ENABLED";
    FD1S3IX n__i27 (.D(n_31__N_863[27]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i27.GSR = "ENABLED";
    FD1S3IX n__i28 (.D(n_31__N_863[28]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i28.GSR = "ENABLED";
    FD1S3IX n__i29 (.D(n_31__N_863[29]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i29.GSR = "ENABLED";
    FD1S3IX n__i30 (.D(n_31__N_863[30]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i30.GSR = "ENABLED";
    FD1S3IX n__i31 (.D(n_31__N_863[31]), .CK(fifo_read_clk), .CD(n_31__N_895), 
            .Q(n[31])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=86, LSE_RLINE=92 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam n__i31.GSR = "ENABLED";
    LUT4 i2478_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(\m[0] ), .Z(n3285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2478_3_lut.init = 16'hcaca;
    LUT4 i2479_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(\m[0] ), .Z(n3286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2479_3_lut.init = 16'hcaca;
    LUT4 i2442_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(n[0]), .Z(n3249)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2442_3_lut.init = 16'hcaca;
    LUT4 i2443_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(n[0]), .Z(n3250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2443_3_lut.init = 16'hcaca;
    LUT4 i2429_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(window_count[0]), 
         .Z(n3236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2429_3_lut.init = 16'hcaca;
    LUT4 i2430_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(window_count[0]), 
         .Z(n3237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2430_3_lut.init = 16'hcaca;
    LUT4 i2431_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(window_count[0]), 
         .Z(n3238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2431_3_lut.init = 16'hcaca;
    LUT4 i2597_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(\m[0] ), .Z(n3404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2597_3_lut.init = 16'hcaca;
    LUT4 i2432_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(window_count[0]), .Z(n3239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2432_3_lut.init = 16'hcaca;
    LUT4 i2433_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(window_count[0]), .Z(n3240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2433_3_lut.init = 16'hcaca;
    LUT4 i2434_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(window_count[0]), .Z(n3241)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2434_3_lut.init = 16'hcaca;
    LUT4 i2802_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(window_count[0]), 
         .Z(n3609)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2802_3_lut.init = 16'hcaca;
    LUT4 i2803_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(window_count[0]), 
         .Z(n3610)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2803_3_lut.init = 16'hcaca;
    LUT4 i3044_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(\m[0] ), 
         .Z(n3851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3044_3_lut.init = 16'hcaca;
    LUT4 i2804_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(window_count[0]), 
         .Z(n3611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2804_3_lut.init = 16'hcaca;
    LUT4 i2805_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(window_count[0]), 
         .Z(n3612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2805_3_lut.init = 16'hcaca;
    LUT4 i2806_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(window_count[0]), 
         .Z(n3613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2806_3_lut.init = 16'hcaca;
    LUT4 i2807_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(window_count[0]), .Z(n3614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2807_3_lut.init = 16'hcaca;
    LUT4 i155_1_lut (.A(\window_count[4] ), .Z(sum_19__N_824)) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(40[6:30])
    defparam i155_1_lut.init = 16'h5555;
    LUT4 i3132_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(n[0]), 
         .Z(n3939)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3132_3_lut.init = 16'hcaca;
    LUT4 i2303_2_lut (.A(window_count[1]), .B(window_count[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2303_2_lut.init = 16'h6666;
    LUT4 i3133_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(n[0]), 
         .Z(n3940)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3133_3_lut.init = 16'hcaca;
    LUT4 i2808_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(window_count[0]), .Z(n3615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2808_3_lut.init = 16'hcaca;
    LUT4 i2809_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(window_count[0]), .Z(n3616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2809_3_lut.init = 16'hcaca;
    LUT4 i3089_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(window_count[0]), 
         .Z(n3896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3089_3_lut.init = 16'hcaca;
    LUT4 i3090_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(window_count[0]), 
         .Z(n3897)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3090_3_lut.init = 16'hcaca;
    LUT4 i3091_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(window_count[0]), 
         .Z(n3898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3091_3_lut.init = 16'hcaca;
    LUT4 i3092_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(window_count[0]), .Z(n3899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3092_3_lut.init = 16'hcaca;
    LUT4 i2988_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(n[0]), .Z(n3795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2988_3_lut.init = 16'hcaca;
    LUT4 i3045_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(\m[0] ), 
         .Z(n3852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3045_3_lut.init = 16'hcaca;
    LUT4 i2989_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(n[0]), .Z(n3796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2989_3_lut.init = 16'hcaca;
    LUT4 i2607_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(n[0]), .Z(n3414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2607_3_lut.init = 16'hcaca;
    LUT4 i2608_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(n[0]), .Z(n3415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2608_3_lut.init = 16'hcaca;
    LUT4 i2306_2_lut_rep_16 (.A(window_count[1]), .B(window_count[0]), .Z(n4050)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2306_2_lut_rep_16.init = 16'h8888;
    LUT4 i2609_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(n[0]), .Z(n3416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2609_3_lut.init = 16'hcaca;
    LUT4 i2310_2_lut_3_lut (.A(window_count[1]), .B(window_count[0]), .C(window_count[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2310_2_lut_3_lut.init = 16'h7878;
    LUT4 i2317_2_lut_3_lut_4_lut (.A(window_count[1]), .B(window_count[0]), 
         .C(window_count[3]), .D(window_count[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2317_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3093_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(window_count[0]), .Z(n3900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3093_3_lut.init = 16'hcaca;
    LUT4 i3094_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(window_count[0]), .Z(n3901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3094_3_lut.init = 16'hcaca;
    LUT4 i3102_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(n[0]), 
         .Z(n3909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3102_3_lut.init = 16'hcaca;
    LUT4 i3103_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(n[0]), 
         .Z(n3910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3103_3_lut.init = 16'hcaca;
    LUT4 i2610_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(n[0]), .Z(n3417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2610_3_lut.init = 16'hcaca;
    LUT4 i2742_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(window_count[0]), 
         .Z(n3549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2742_3_lut.init = 16'hcaca;
    LUT4 i2743_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(window_count[0]), 
         .Z(n3550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2743_3_lut.init = 16'hcaca;
    LUT4 i2446_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(n[0]), .Z(n3253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2446_3_lut.init = 16'hcaca;
    LUT4 i2744_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(window_count[0]), 
         .Z(n3551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2744_3_lut.init = 16'hcaca;
    LUT4 i2745_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(window_count[0]), 
         .Z(n3552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2745_3_lut.init = 16'hcaca;
    LUT4 i2447_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(n[0]), .Z(n3254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2447_3_lut.init = 16'hcaca;
    LUT4 i2746_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(window_count[0]), 
         .Z(n3553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2746_3_lut.init = 16'hcaca;
    LUT4 i3124_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(\m[0] ), .Z(n3931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3124_3_lut.init = 16'hcaca;
    LUT4 i2517_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(\m[0] ), .Z(n3324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2517_3_lut.init = 16'hcaca;
    LUT4 i2518_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(\m[0] ), .Z(n3325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2518_3_lut.init = 16'hcaca;
    LUT4 i2519_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(\m[0] ), .Z(n3326)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2519_3_lut.init = 16'hcaca;
    LUT4 i2520_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(\m[0] ), .Z(n3327)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2520_3_lut.init = 16'hcaca;
    LUT4 i2448_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(n[0]), .Z(n3255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2448_3_lut.init = 16'hcaca;
    LUT4 i2449_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(n[0]), .Z(n3256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2449_3_lut.init = 16'hcaca;
    LUT4 i2924_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(n[0]), 
         .Z(n3731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2924_3_lut.init = 16'hcaca;
    LUT4 i2925_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(n[0]), 
         .Z(n3732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2925_3_lut.init = 16'hcaca;
    LUT4 i2330_2_lut (.A(n408[0]), .B(n1[0]), .Z(n85[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2330_2_lut.init = 16'h6666;
    LUT4 i3061_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(n[0]), 
         .Z(n3868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3061_3_lut.init = 16'hcaca;
    LUT4 i3062_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(n[0]), .Z(n3869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3062_3_lut.init = 16'hcaca;
    LUT4 i2667_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(n[0]), .Z(n3474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2667_3_lut.init = 16'hcaca;
    LUT4 i2668_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(n[0]), .Z(n3475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2668_3_lut.init = 16'hcaca;
    LUT4 i3029_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(window_count[0]), 
         .Z(n3836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3029_3_lut.init = 16'hcaca;
    LUT4 i3030_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(window_count[0]), 
         .Z(n3837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3030_3_lut.init = 16'hcaca;
    LUT4 i2521_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(\m[0] ), .Z(n3328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2521_3_lut.init = 16'hcaca;
    LUT4 i2522_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(\m[0] ), .Z(n3329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2522_3_lut.init = 16'hcaca;
    LUT4 i3031_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(window_count[0]), 
         .Z(n3838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3031_3_lut.init = 16'hcaca;
    LUT4 i3032_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(window_count[0]), .Z(n3839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3032_3_lut.init = 16'hcaca;
    LUT4 i2669_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(n[0]), .Z(n3476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2669_3_lut.init = 16'hcaca;
    LUT4 i2670_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(n[0]), .Z(n3477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2670_3_lut.init = 16'hcaca;
    LUT4 i2671_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(n[0]), .Z(n3478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2671_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_13 (.A0(subMean_out_15__N_663[11]), .B0(avg[11]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[12]), 
          .B1(avg[12]), .C1(GND_net), .D1(GND_net), .CIN(n2990), .COUT(n2991), 
          .S0(subMean_out_c_11), .S1(subMean_out_c_12));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_13.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_13.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_13.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_13.INJECT1_1 = "NO";
    LUT4 i2672_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(n[0]), .Z(n3479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2672_3_lut.init = 16'hcaca;
    LUT4 i3104_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(n[0]), 
         .Z(n3911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3104_3_lut.init = 16'hcaca;
    LUT4 i3105_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(n[0]), 
         .Z(n3912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3105_3_lut.init = 16'hcaca;
    LUT4 i2747_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(window_count[0]), .Z(n3554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2747_3_lut.init = 16'hcaca;
    LUT4 i2611_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(n[0]), .Z(n3418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2611_3_lut.init = 16'hcaca;
    LUT4 i3106_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(n[0]), 
         .Z(n3913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3106_3_lut.init = 16'hcaca;
    LUT4 i3107_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(n[0]), .Z(n3914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3107_3_lut.init = 16'hcaca;
    PFUMX i2466 (.BLUT(n3266), .ALUT(n3267), .C0(n[1]), .Z(n3273));
    LUT4 i3108_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(n[0]), .Z(n3915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3108_3_lut.init = 16'hcaca;
    CCU2D sum_105_add_4_8 (.A0(n408[6]), .B0(sum[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n408[7]), .B1(sum[7]), .C1(GND_net), .D1(GND_net), .CIN(n2998), 
          .COUT(n2999), .S0(n85[6]), .S1(n85[7]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_8.INIT0 = 16'h5666;
    defparam sum_105_add_4_8.INIT1 = 16'h5666;
    defparam sum_105_add_4_8.INJECT1_0 = "NO";
    defparam sum_105_add_4_8.INJECT1_1 = "NO";
    LUT4 i3109_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(n[0]), .Z(n3916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3109_3_lut.init = 16'hcaca;
    LUT4 i2301_1_lut (.A(window_count[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(44[21:35])
    defparam i2301_1_lut.init = 16'h5555;
    LUT4 i2523_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(\m[0] ), .Z(n3330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2523_3_lut.init = 16'hcaca;
    LUT4 i2524_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(\m[0] ), .Z(n3331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2524_3_lut.init = 16'hcaca;
    LUT4 i3063_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(n[0]), .Z(n3870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3063_3_lut.init = 16'hcaca;
    LUT4 i2748_3_lut (.A(subMean_window_12_9), .B(subMean_window_13_9), 
         .C(window_count[0]), .Z(n3555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2748_3_lut.init = 16'hcaca;
    LUT4 i3064_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(n[0]), .Z(n3871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3064_3_lut.init = 16'hcaca;
    LUT4 i2673_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(n[0]), .Z(n3480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2673_3_lut.init = 16'hcaca;
    LUT4 i2749_3_lut (.A(subMean_window_14_9), .B(subMean_window_15_9), 
         .C(window_count[0]), .Z(n3556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2749_3_lut.init = 16'hcaca;
    LUT4 i2757_3_lut (.A(subMean_window_0_7), .B(subMean_window_1_7), .C(\m[0] ), 
         .Z(n3564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2757_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_11 (.A0(subMean_out_15__N_663[9]), .B0(avg[9]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[10]), 
          .B1(avg[10]), .C1(GND_net), .D1(GND_net), .CIN(n2989), .COUT(n2990), 
          .S0(subMean_out_c_9), .S1(subMean_out_c_10));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_11.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_11.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_11.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_11.INJECT1_1 = "NO";
    LUT4 i2942_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(\m[0] ), .Z(n3749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2942_3_lut.init = 16'hcaca;
    LUT4 i2612_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(n[0]), .Z(n3419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2612_3_lut.init = 16'hcaca;
    LUT4 i2674_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(n[0]), .Z(n3481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2674_3_lut.init = 16'hcaca;
    LUT4 i2758_3_lut (.A(subMean_window_2_7), .B(subMean_window_3_7), .C(\m[0] ), 
         .Z(n3565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2758_3_lut.init = 16'hcaca;
    LUT4 i2759_3_lut (.A(subMean_window_4_7), .B(subMean_window_5_7), .C(\m[0] ), 
         .Z(n3566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2759_3_lut.init = 16'hcaca;
    LUT4 i2760_3_lut (.A(subMean_window_6_7), .B(subMean_window_7_7), .C(\m[0] ), 
         .Z(n3567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2760_3_lut.init = 16'hcaca;
    LUT4 i2069_2_lut (.A(n_31__N_863[0]), .B(n_31__N_895), .Z(n66[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam i2069_2_lut.init = 16'h2222;
    CCU2D subMean_out_15__I_0_add_2_9 (.A0(subMean_out_15__N_663[7]), .B0(avg[7]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[8]), .B1(avg[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2988), .COUT(n2989), .S0(subMean_out_c_7), 
          .S1(subMean_out_c_8));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_9.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_9.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_9.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_9.INJECT1_1 = "NO";
    LUT4 i2892_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(window_count[0]), .Z(n3699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2892_3_lut.init = 16'hcaca;
    LUT4 i2893_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(window_count[0]), .Z(n3700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2893_3_lut.init = 16'hcaca;
    LUT4 i2598_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(\m[0] ), .Z(n3405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2598_3_lut.init = 16'hcaca;
    LUT4 i2894_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(window_count[0]), .Z(n3701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2894_3_lut.init = 16'hcaca;
    LUT4 i2895_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(window_count[0]), .Z(n3702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2895_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n2751), .B(n8), .C(n2747), .D(n2745), .Z(fifo_read_clk_enable_52)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i1_4_lut.init = 16'h05cd;
    LUT4 i2085_2_lut (.A(window_count[3]), .B(window_count[2]), .Z(n2747)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2085_2_lut.init = 16'heeee;
    LUT4 i2599_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(\m[0] ), .Z(n3406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2599_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_7 (.A0(subMean_out_15__N_663[5]), .B0(avg[5]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[6]), .B1(avg[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2987), .COUT(n2988), .S0(subMean_out_c_5), 
          .S1(subMean_out_c_6));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_7.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_7.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_7.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_7.INJECT1_1 = "NO";
    LUT4 i2083_2_lut (.A(m[3]), .B(m[2]), .Z(n2745)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2083_2_lut.init = 16'heeee;
    CCU2D subMean_out_15__I_0_add_2_5 (.A0(subMean_out_15__N_663[3]), .B0(avg[3]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[4]), .B1(avg[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2986), .COUT(n2987), .S0(subMean_out_c_3), 
          .S1(subMean_out_c_4));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_5.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_5.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_5.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_5.INJECT1_1 = "NO";
    LUT4 i2896_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(window_count[0]), .Z(n3703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2896_3_lut.init = 16'hcaca;
    LUT4 i2897_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(window_count[0]), .Z(n3704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2897_3_lut.init = 16'hcaca;
    LUT4 i2898_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(window_count[0]), .Z(n3705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2898_3_lut.init = 16'hcaca;
    LUT4 i2899_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(window_count[0]), .Z(n3706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2899_3_lut.init = 16'hcaca;
    LUT4 i2487_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(\m[0] ), .Z(n3294)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2487_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_3 (.A0(subMean_out_15__N_663[1]), .B0(avg[1]), 
          .C0(GND_net), .D0(GND_net), .A1(subMean_out_15__N_663[2]), .B1(avg[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2985), .COUT(n2986), .S0(subMean_out_c_1), 
          .S1(subMean_out_c_2));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_3.INIT0 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_3.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_3.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_3.INJECT1_1 = "NO";
    LUT4 i2488_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(\m[0] ), .Z(n3295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2488_3_lut.init = 16'hcaca;
    LUT4 i3134_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(n[0]), 
         .Z(n3941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3134_3_lut.init = 16'hcaca;
    LUT4 i3012_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(n[0]), 
         .Z(n3819)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3012_3_lut.init = 16'hcaca;
    CCU2D subMean_out_15__I_0_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(subMean_out_15__N_663[0]), .B1(avg[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2985), .S1(subMean_out_c_0));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(79[17:40])
    defparam subMean_out_15__I_0_add_2_1.INIT0 = 16'h0000;
    defparam subMean_out_15__I_0_add_2_1.INIT1 = 16'h5999;
    defparam subMean_out_15__I_0_add_2_1.INJECT1_0 = "NO";
    defparam subMean_out_15__I_0_add_2_1.INJECT1_1 = "NO";
    LUT4 i3013_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(n[0]), 
         .Z(n3820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3013_3_lut.init = 16'hcaca;
    LUT4 i2489_3_lut (.A(subMean_window_4_15), .B(subMean_window_5_15), 
         .C(\m[0] ), .Z(n3296)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2489_3_lut.init = 16'hcaca;
    LUT4 i2490_3_lut (.A(subMean_window_6_15), .B(subMean_window_7_15), 
         .C(\m[0] ), .Z(n3297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2490_3_lut.init = 16'hcaca;
    LUT4 i3014_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(n[0]), 
         .Z(n3821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3014_3_lut.init = 16'hcaca;
    LUT4 i3015_3_lut (.A(subMean_window_6_8), .B(subMean_window_7_8), .C(n[0]), 
         .Z(n3822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3015_3_lut.init = 16'hcaca;
    LUT4 i2682_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(window_count[0]), .Z(n3489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2682_3_lut.init = 16'hcaca;
    LUT4 i2683_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(window_count[0]), .Z(n3490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2683_3_lut.init = 16'hcaca;
    LUT4 i2684_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(window_count[0]), .Z(n3491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2684_3_lut.init = 16'hcaca;
    LUT4 i2685_3_lut (.A(subMean_window_6_11), .B(subMean_window_7_11), 
         .C(window_count[0]), .Z(n3492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2685_3_lut.init = 16'hcaca;
    LUT4 i3135_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(n[0]), 
         .Z(n3942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3135_3_lut.init = 16'hcaca;
    LUT4 i3016_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(n[0]), 
         .Z(n3823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3016_3_lut.init = 16'hcaca;
    LUT4 i3017_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(n[0]), .Z(n3824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3017_3_lut.init = 16'hcaca;
    LUT4 i3018_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(n[0]), .Z(n3825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3018_3_lut.init = 16'hcaca;
    LUT4 i2761_3_lut (.A(subMean_window_8_7), .B(subMean_window_9_7), .C(\m[0] ), 
         .Z(n3568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2761_3_lut.init = 16'hcaca;
    LUT4 i3019_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(n[0]), .Z(n3826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3019_3_lut.init = 16'hcaca;
    LUT4 i2907_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(window_count[0]), .Z(n3714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2907_3_lut.init = 16'hcaca;
    LUT4 i3136_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(n[0]), 
         .Z(n3943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3136_3_lut.init = 16'hcaca;
    LUT4 i2908_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(window_count[0]), .Z(n3715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2908_3_lut.init = 16'hcaca;
    LUT4 i2686_3_lut (.A(subMean_window_8_11), .B(subMean_window_9_11), 
         .C(window_count[0]), .Z(n3493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2686_3_lut.init = 16'hcaca;
    LUT4 i2687_3_lut (.A(subMean_window_10_11), .B(subMean_window_11_11), 
         .C(window_count[0]), .Z(n3494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2687_3_lut.init = 16'hcaca;
    CCU2D add_95_19 (.A0(\window_count[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2980), .S0(n408[17]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_19.INIT0 = 16'hfaaa;
    defparam add_95_19.INIT1 = 16'h0000;
    defparam add_95_19.INJECT1_0 = "NO";
    defparam add_95_19.INJECT1_1 = "NO";
    CCU2D add_2252_28 (.A0(n[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3118), 
          .S1(n_31__N_895));
    defparam add_2252_28.INIT0 = 16'hf555;
    defparam add_2252_28.INIT1 = 16'h0000;
    defparam add_2252_28.INJECT1_0 = "NO";
    defparam add_2252_28.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_29 (.A(n10_c), .B(n10), .C(n2747), .D(n2745), 
         .Z(fifo_read_clk_enable_68)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h0ace;
    CCU2D add_95_17 (.A0(\window_count[4] ), .B0(n3308), .C0(left_out[15]), 
          .D0(n3698), .A1(\window_count[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2979), .COUT(n2980), .S0(n408[15]), .S1(n408[16]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_17.INIT0 = 16'hd782;
    defparam add_95_17.INIT1 = 16'hfaaa;
    defparam add_95_17.INJECT1_0 = "NO";
    defparam add_95_17.INJECT1_1 = "NO";
    CCU2D add_2252_26 (.A0(n[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3117), 
          .COUT(n3118));
    defparam add_2252_26.INIT0 = 16'h5555;
    defparam add_2252_26.INIT1 = 16'h5555;
    defparam add_2252_26.INJECT1_0 = "NO";
    defparam add_2252_26.INJECT1_1 = "NO";
    CCU2D add_2252_24 (.A0(n[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3116), 
          .COUT(n3117));
    defparam add_2252_24.INIT0 = 16'h5555;
    defparam add_2252_24.INIT1 = 16'h5555;
    defparam add_2252_24.INJECT1_0 = "NO";
    defparam add_2252_24.INJECT1_1 = "NO";
    LUT4 i3137_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(n[0]), .Z(n3944)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3137_3_lut.init = 16'hcaca;
    CCU2D add_2252_22 (.A0(n[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3115), 
          .COUT(n3116));
    defparam add_2252_22.INIT0 = 16'h5555;
    defparam add_2252_22.INIT1 = 16'h5555;
    defparam add_2252_22.INJECT1_0 = "NO";
    defparam add_2252_22.INJECT1_1 = "NO";
    CCU2D add_2252_20 (.A0(n[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3114), 
          .COUT(n3115));
    defparam add_2252_20.INIT0 = 16'h5555;
    defparam add_2252_20.INIT1 = 16'h5555;
    defparam add_2252_20.INJECT1_0 = "NO";
    defparam add_2252_20.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_30 (.A(n7_c), .B(n7), .C(n2747), .D(n2745), .Z(fifo_read_clk_enable_84)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_30.init = 16'h0ace;
    LUT4 i2502_3_lut (.A(subMean_window_0_14), .B(subMean_window_1_14), 
         .C(n[0]), .Z(n3309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2502_3_lut.init = 16'hcaca;
    CCU2D add_2252_18 (.A0(n[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3113), 
          .COUT(n3114));
    defparam add_2252_18.INIT0 = 16'h5555;
    defparam add_2252_18.INIT1 = 16'h5555;
    defparam add_2252_18.INJECT1_0 = "NO";
    defparam add_2252_18.INJECT1_1 = "NO";
    CCU2D add_95_15 (.A0(\window_count[4] ), .B0(n3398), .C0(left_out[13]), 
          .D0(n3728), .A1(\window_count[4] ), .B1(n3338), .C1(left_out[14]), 
          .D1(n3713), .CIN(n2978), .COUT(n2979), .S0(n408[13]), .S1(n408[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_15.INIT0 = 16'hd782;
    defparam add_95_15.INIT1 = 16'hd782;
    defparam add_95_15.INJECT1_0 = "NO";
    defparam add_95_15.INJECT1_1 = "NO";
    CCU2D add_2252_16 (.A0(n[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3112), 
          .COUT(n3113));
    defparam add_2252_16.INIT0 = 16'h5555;
    defparam add_2252_16.INIT1 = 16'h5555;
    defparam add_2252_16.INJECT1_0 = "NO";
    defparam add_2252_16.INJECT1_1 = "NO";
    CCU2D add_2252_14 (.A0(n[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3111), 
          .COUT(n3112));
    defparam add_2252_14.INIT0 = 16'h5555;
    defparam add_2252_14.INIT1 = 16'h5555;
    defparam add_2252_14.INJECT1_0 = "NO";
    defparam add_2252_14.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_31 (.A(n9_c), .B(n9), .C(n2747), .D(n2745), .Z(fifo_read_clk_enable_100)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_31.init = 16'h0ace;
    CCU2D add_95_13 (.A0(\window_count[4] ), .B0(n3818), .C0(left_out[11]), 
          .D0(n3503), .A1(\window_count[4] ), .B1(n3458), .C1(left_out[12]), 
          .D1(n3473), .CIN(n2977), .COUT(n2978), .S0(n408[11]), .S1(n408[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_13.INIT0 = 16'hd782;
    defparam add_95_13.INIT1 = 16'hd782;
    defparam add_95_13.INJECT1_0 = "NO";
    defparam add_95_13.INJECT1_1 = "NO";
    CCU2D add_2252_12 (.A0(n[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3110), 
          .COUT(n3111));
    defparam add_2252_12.INIT0 = 16'h5555;
    defparam add_2252_12.INIT1 = 16'h5555;
    defparam add_2252_12.INJECT1_0 = "NO";
    defparam add_2252_12.INJECT1_1 = "NO";
    CCU2D add_2252_10 (.A0(n[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3109), 
          .COUT(n3110));
    defparam add_2252_10.INIT0 = 16'h5555;
    defparam add_2252_10.INIT1 = 16'h5555;
    defparam add_2252_10.INJECT1_0 = "NO";
    defparam add_2252_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_32 (.A(n2751), .B(n8), .C(n987), .D(n997), .Z(fifo_read_clk_enable_116)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_32.init = 16'hdc50;
    CCU2D add_2252_8 (.A0(n[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3108), 
          .COUT(n3109));
    defparam add_2252_8.INIT0 = 16'h5555;
    defparam add_2252_8.INIT1 = 16'h5555;
    defparam add_2252_8.INJECT1_0 = "NO";
    defparam add_2252_8.INJECT1_1 = "NO";
    CCU2D add_2252_6 (.A0(n[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3107), 
          .COUT(n3108));
    defparam add_2252_6.INIT0 = 16'h5555;
    defparam add_2252_6.INIT1 = 16'h5555;
    defparam add_2252_6.INJECT1_0 = "NO";
    defparam add_2252_6.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(window_count[2]), .B(window_count[3]), .Z(n987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(42[5:33])
    defparam i1_2_lut.init = 16'h2222;
    CCU2D add_2252_4 (.A0(n[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3106), 
          .COUT(n3107));
    defparam add_2252_4.INIT0 = 16'h5555;
    defparam add_2252_4.INIT1 = 16'h5555;
    defparam add_2252_4.INJECT1_0 = "NO";
    defparam add_2252_4.INJECT1_1 = "NO";
    CCU2D add_95_11 (.A0(\window_count[4] ), .B0(n3608), .C0(left_out[9]), 
          .D0(n3563), .A1(\window_count[4] ), .B1(n3518), .C1(left_out[10]), 
          .D1(n3533), .CIN(n2976), .COUT(n2977), .S0(n408[9]), .S1(n408[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_11.INIT0 = 16'hd782;
    defparam add_95_11.INIT1 = 16'hd782;
    defparam add_95_11.INJECT1_0 = "NO";
    defparam add_95_11.INJECT1_1 = "NO";
    CCU2D add_2252_2 (.A0(n[5]), .B0(n[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3106));
    defparam add_2252_2.INIT0 = 16'h1000;
    defparam add_2252_2.INIT1 = 16'h5555;
    defparam add_2252_2.INJECT1_0 = "NO";
    defparam add_2252_2.INJECT1_1 = "NO";
    CCU2D add_2253_28 (.A0(m[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3105), 
          .S1(m_31__N_862));
    defparam add_2253_28.INIT0 = 16'hf555;
    defparam add_2253_28.INIT1 = 16'h0000;
    defparam add_2253_28.INJECT1_0 = "NO";
    defparam add_2253_28.INJECT1_1 = "NO";
    CCU2D add_95_9 (.A0(\window_count[4] ), .B0(n3578), .C0(left_out[7]), 
          .D0(n3623), .A1(\window_count[4] ), .B1(n3863), .C1(left_out[8]), 
          .D1(n3593), .CIN(n2975), .COUT(n2976), .S0(n408[7]), .S1(n408[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_9.INIT0 = 16'hd782;
    defparam add_95_9.INIT1 = 16'hd782;
    defparam add_95_9.INJECT1_0 = "NO";
    defparam add_95_9.INJECT1_1 = "NO";
    CCU2D add_2253_26 (.A0(m[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3104), 
          .COUT(n3105));
    defparam add_2253_26.INIT0 = 16'h5555;
    defparam add_2253_26.INIT1 = 16'h5555;
    defparam add_2253_26.INJECT1_0 = "NO";
    defparam add_2253_26.INJECT1_1 = "NO";
    CCU2D add_2253_24 (.A0(m[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3103), 
          .COUT(n3104));
    defparam add_2253_24.INIT0 = 16'h5555;
    defparam add_2253_24.INIT1 = 16'h5555;
    defparam add_2253_24.INJECT1_0 = "NO";
    defparam add_2253_24.INJECT1_1 = "NO";
    CCU2D add_2253_22 (.A0(m[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3102), 
          .COUT(n3103));
    defparam add_2253_22.INIT0 = 16'h5555;
    defparam add_2253_22.INIT1 = 16'h5555;
    defparam add_2253_22.INJECT1_0 = "NO";
    defparam add_2253_22.INJECT1_1 = "NO";
    CCU2D add_2253_20 (.A0(m[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3101), 
          .COUT(n3102));
    defparam add_2253_20.INIT0 = 16'h5555;
    defparam add_2253_20.INIT1 = 16'h5555;
    defparam add_2253_20.INJECT1_0 = "NO";
    defparam add_2253_20.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_33 (.A(m[2]), .B(m[3]), .Z(n997)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(51[5:22])
    defparam i1_2_lut_adj_33.init = 16'h2222;
    CCU2D add_2253_18 (.A0(m[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3100), 
          .COUT(n3101));
    defparam add_2253_18.INIT0 = 16'h5555;
    defparam add_2253_18.INIT1 = 16'h5555;
    defparam add_2253_18.INJECT1_0 = "NO";
    defparam add_2253_18.INJECT1_1 = "NO";
    CCU2D add_95_7 (.A0(\window_count[4] ), .B0(n3758), .C0(left_out[5]), 
          .D0(n3653), .A1(\window_count[4] ), .B1(n3293), .C1(left_out[6]), 
          .D1(n3638), .CIN(n2974), .COUT(n2975), .S0(n408[5]), .S1(n408[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_7.INIT0 = 16'hd782;
    defparam add_95_7.INIT1 = 16'hd782;
    defparam add_95_7.INJECT1_0 = "NO";
    defparam add_95_7.INJECT1_1 = "NO";
    CCU2D add_2253_16 (.A0(m[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3099), 
          .COUT(n3100));
    defparam add_2253_16.INIT0 = 16'h5555;
    defparam add_2253_16.INIT1 = 16'h5555;
    defparam add_2253_16.INJECT1_0 = "NO";
    defparam add_2253_16.INJECT1_1 = "NO";
    CCU2D add_2253_14 (.A0(m[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3098), 
          .COUT(n3099));
    defparam add_2253_14.INIT0 = 16'h5555;
    defparam add_2253_14.INIT1 = 16'h5555;
    defparam add_2253_14.INJECT1_0 = "NO";
    defparam add_2253_14.INJECT1_1 = "NO";
    CCU2D add_95_5 (.A0(\window_count[4] ), .B0(n3893), .C0(left_out[3]), 
          .D0(n3683), .A1(\window_count[4] ), .B1(n3788), .C1(left_out[4]), 
          .D1(n3668), .CIN(n2973), .COUT(n2974), .S0(n408[3]), .S1(n408[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_5.INIT0 = 16'hd782;
    defparam add_95_5.INIT1 = 16'hd782;
    defparam add_95_5.INJECT1_0 = "NO";
    defparam add_95_5.INJECT1_1 = "NO";
    CCU2D add_2253_12 (.A0(m[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3097), 
          .COUT(n3098));
    defparam add_2253_12.INIT0 = 16'h5555;
    defparam add_2253_12.INIT1 = 16'h5555;
    defparam add_2253_12.INJECT1_0 = "NO";
    defparam add_2253_12.INJECT1_1 = "NO";
    CCU2D add_2253_10 (.A0(m[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3096), 
          .COUT(n3097));
    defparam add_2253_10.INIT0 = 16'h5555;
    defparam add_2253_10.INIT1 = 16'h5555;
    defparam add_2253_10.INJECT1_0 = "NO";
    defparam add_2253_10.INJECT1_1 = "NO";
    CCU2D add_2253_8 (.A0(m[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3095), 
          .COUT(n3096));
    defparam add_2253_8.INIT0 = 16'h5555;
    defparam add_2253_8.INIT1 = 16'h5555;
    defparam add_2253_8.INJECT1_0 = "NO";
    defparam add_2253_8.INJECT1_1 = "NO";
    CCU2D add_2253_6 (.A0(m[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3094), 
          .COUT(n3095));
    defparam add_2253_6.INIT0 = 16'h5555;
    defparam add_2253_6.INIT1 = 16'h5555;
    defparam add_2253_6.INJECT1_0 = "NO";
    defparam add_2253_6.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_34 (.A(n10_c), .B(n10), .C(n987), .D(n997), .Z(fifo_read_clk_enable_132)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_34.init = 16'heca0;
    LUT4 i2503_3_lut (.A(subMean_window_2_14), .B(subMean_window_3_14), 
         .C(n[0]), .Z(n3310)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2503_3_lut.init = 16'hcaca;
    CCU2D add_2253_4 (.A0(m[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3093), 
          .COUT(n3094));
    defparam add_2253_4.INIT0 = 16'h5555;
    defparam add_2253_4.INIT1 = 16'h5555;
    defparam add_2253_4.INJECT1_0 = "NO";
    defparam add_2253_4.INJECT1_1 = "NO";
    CCU2D add_95_3 (.A0(\window_count[4] ), .B0(n3353), .C0(left_out[1]), 
          .D0(n3908), .A1(\window_count[4] ), .B1(n3938), .C1(left_out[2]), 
          .D1(n3848), .CIN(n2972), .COUT(n2973), .S0(n408[1]), .S1(n408[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_3.INIT0 = 16'hd782;
    defparam add_95_3.INIT1 = 16'hd782;
    defparam add_95_3.INJECT1_0 = "NO";
    defparam add_95_3.INJECT1_1 = "NO";
    CCU2D add_2253_2 (.A0(m[5]), .B0(m[4]), .C0(GND_net), .D0(GND_net), 
          .A1(m[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3093));
    defparam add_2253_2.INIT0 = 16'h1000;
    defparam add_2253_2.INIT1 = 16'h5555;
    defparam add_2253_2.INJECT1_0 = "NO";
    defparam add_2253_2.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_35 (.A(n7_c), .B(n7), .C(n987), .D(n997), .Z(fifo_read_clk_enable_148)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_35.init = 16'heca0;
    CCU2D add_95_1 (.A0(\window_count[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\window_count[4] ), .B1(n3413), .C1(left_out[0]), 
          .D1(n3248), .COUT(n2972), .S1(n408[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam add_95_1.INIT0 = 16'h5000;
    defparam add_95_1.INIT1 = 16'hd782;
    defparam add_95_1.INJECT1_0 = "NO";
    defparam add_95_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_36 (.A(n9_c), .B(n9), .C(n987), .D(n997), .Z(fifo_read_clk_enable_164)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_36.init = 16'heca0;
    LUT4 i1_4_lut_adj_37 (.A(n2751), .B(n8), .C(n970), .D(n955), .Z(fifo_read_clk_enable_180)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_37.init = 16'hdc50;
    LUT4 i1_2_lut_adj_38 (.A(window_count[3]), .B(window_count[2]), .Z(n970)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(42[5:33])
    defparam i1_2_lut_adj_38.init = 16'h2222;
    LUT4 i3138_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(n[0]), .Z(n3945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3138_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_39 (.A(m[3]), .B(m[2]), .Z(n955)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(51[5:22])
    defparam i1_2_lut_adj_39.init = 16'h2222;
    LUT4 i1_4_lut_adj_40 (.A(n10_c), .B(n10), .C(n970), .D(n955), .Z(fifo_read_clk_enable_196)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_40.init = 16'heca0;
    LUT4 i1_4_lut_adj_41 (.A(n7_c), .B(n7), .C(n970), .D(n955), .Z(fifo_read_clk_enable_212)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_41.init = 16'heca0;
    LUT4 i1_4_lut_adj_42 (.A(n9_c), .B(n9), .C(n970), .D(n955), .Z(fifo_read_clk_enable_228)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_42.init = 16'heca0;
    LUT4 i1_4_lut_adj_43 (.A(n2751), .B(n8), .C(n965), .D(n960), .Z(fifo_read_clk_enable_244)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_43.init = 16'hdc50;
    LUT4 i1_2_lut_adj_44 (.A(window_count[2]), .B(window_count[3]), .Z(n965)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(42[5:33])
    defparam i1_2_lut_adj_44.init = 16'h8888;
    LUT4 i1_2_lut_adj_45 (.A(m[2]), .B(m[3]), .Z(n960)) /* synthesis lut_function=(A (B)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(51[5:22])
    defparam i1_2_lut_adj_45.init = 16'h8888;
    LUT4 i1_4_lut_adj_46 (.A(n10_c), .B(n10), .C(n965), .D(n960), .Z(fifo_read_clk_enable_260)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_46.init = 16'heca0;
    CCU2D add_25_33 (.A0(n[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3076), 
          .S0(n_31__N_863[31]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_33.INIT0 = 16'h5aaa;
    defparam add_25_33.INIT1 = 16'h0000;
    defparam add_25_33.INJECT1_0 = "NO";
    defparam add_25_33.INJECT1_1 = "NO";
    LUT4 i2762_3_lut (.A(subMean_window_10_7), .B(subMean_window_11_7), 
         .C(\m[0] ), .Z(n3569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2762_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_47 (.A(n7_c), .B(n7), .C(n965), .D(n960), .Z(fifo_read_clk_enable_276)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_47.init = 16'heca0;
    LUT4 i2984_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(n[0]), 
         .Z(n3791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2984_3_lut.init = 16'hcaca;
    LUT4 i2985_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(n[0]), 
         .Z(n3792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2985_3_lut.init = 16'hcaca;
    LUT4 i2763_3_lut (.A(subMean_window_12_7), .B(subMean_window_13_7), 
         .C(\m[0] ), .Z(n3570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2763_3_lut.init = 16'hcaca;
    LUT4 i2952_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(n[0]), 
         .Z(n3759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2952_3_lut.init = 16'hcaca;
    LUT4 i3139_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(n[0]), .Z(n3946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3139_3_lut.init = 16'hcaca;
    LUT4 i2764_3_lut (.A(subMean_window_14_7), .B(subMean_window_15_7), 
         .C(\m[0] ), .Z(n3571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2764_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_48 (.A(n9_c), .B(n9), .C(n965), .D(n960), .Z(fifo_read_clk_enable_292)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_48.init = 16'heca0;
    LUT4 i3117_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(\m[0] ), 
         .Z(n3924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3117_3_lut.init = 16'hcaca;
    LUT4 i2504_3_lut (.A(subMean_window_4_14), .B(subMean_window_5_14), 
         .C(n[0]), .Z(n3311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2504_3_lut.init = 16'hcaca;
    LUT4 i3118_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(\m[0] ), 
         .Z(n3925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3118_3_lut.init = 16'hcaca;
    LUT4 i2613_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(n[0]), .Z(n3420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2613_3_lut.init = 16'hcaca;
    LUT4 i2614_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(n[0]), .Z(n3421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2614_3_lut.init = 16'hcaca;
    LUT4 i2688_3_lut (.A(subMean_window_12_11), .B(subMean_window_13_11), 
         .C(window_count[0]), .Z(n3495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2688_3_lut.init = 16'hcaca;
    CCU2D add_25_31 (.A0(n[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3075), 
          .COUT(n3076), .S0(n_31__N_863[29]), .S1(n_31__N_863[30]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_31.INIT0 = 16'h5aaa;
    defparam add_25_31.INIT1 = 16'h5aaa;
    defparam add_25_31.INJECT1_0 = "NO";
    defparam add_25_31.INJECT1_1 = "NO";
    LUT4 i2505_3_lut (.A(subMean_window_6_14), .B(subMean_window_7_14), 
         .C(n[0]), .Z(n3312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2505_3_lut.init = 16'hcaca;
    CCU2D add_25_29 (.A0(n[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3074), 
          .COUT(n3075), .S0(n_31__N_863[27]), .S1(n_31__N_863[28]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_29.INIT0 = 16'h5aaa;
    defparam add_25_29.INIT1 = 16'h5aaa;
    defparam add_25_29.INJECT1_0 = "NO";
    defparam add_25_29.INJECT1_1 = "NO";
    CCU2D add_25_27 (.A0(n[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3073), 
          .COUT(n3074), .S0(n_31__N_863[25]), .S1(n_31__N_863[26]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_27.INIT0 = 16'h5aaa;
    defparam add_25_27.INIT1 = 16'h5aaa;
    defparam add_25_27.INJECT1_0 = "NO";
    defparam add_25_27.INJECT1_1 = "NO";
    PFUMX i2497 (.BLUT(n3298), .ALUT(n3299), .C0(\m[1] ), .Z(n3304));
    CCU2D add_25_25 (.A0(n[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3072), 
          .COUT(n3073), .S0(n_31__N_863[23]), .S1(n_31__N_863[24]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_25.INIT0 = 16'h5aaa;
    defparam add_25_25.INIT1 = 16'h5aaa;
    defparam add_25_25.INJECT1_0 = "NO";
    defparam add_25_25.INJECT1_1 = "NO";
    CCU2D add_25_23 (.A0(n[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3071), 
          .COUT(n3072), .S0(n_31__N_863[21]), .S1(n_31__N_863[22]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_23.INIT0 = 16'h5aaa;
    defparam add_25_23.INIT1 = 16'h5aaa;
    defparam add_25_23.INJECT1_0 = "NO";
    defparam add_25_23.INJECT1_1 = "NO";
    CCU2D add_25_21 (.A0(n[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3070), 
          .COUT(n3071), .S0(n_31__N_863[19]), .S1(n_31__N_863[20]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_21.INIT0 = 16'h5aaa;
    defparam add_25_21.INIT1 = 16'h5aaa;
    defparam add_25_21.INJECT1_0 = "NO";
    defparam add_25_21.INJECT1_1 = "NO";
    CCU2D add_25_19 (.A0(n[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3069), 
          .COUT(n3070), .S0(n_31__N_863[17]), .S1(n_31__N_863[18]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_19.INIT0 = 16'h5aaa;
    defparam add_25_19.INIT1 = 16'h5aaa;
    defparam add_25_19.INJECT1_0 = "NO";
    defparam add_25_19.INJECT1_1 = "NO";
    LUT4 i2862_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(window_count[0]), 
         .Z(n3669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2862_3_lut.init = 16'hcaca;
    CCU2D add_25_17 (.A0(n[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3068), 
          .COUT(n3069), .S0(n_31__N_863[15]), .S1(n_31__N_863[16]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_17.INIT0 = 16'h5aaa;
    defparam add_25_17.INIT1 = 16'h5aaa;
    defparam add_25_17.INJECT1_0 = "NO";
    defparam add_25_17.INJECT1_1 = "NO";
    LUT4 i2689_3_lut (.A(subMean_window_14_11), .B(subMean_window_15_11), 
         .C(window_count[0]), .Z(n3496)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2689_3_lut.init = 16'hcaca;
    CCU2D add_25_15 (.A0(n[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3067), 
          .COUT(n3068), .S0(n_31__N_863[13]), .S1(n_31__N_863[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_15.INIT0 = 16'h5aaa;
    defparam add_25_15.INIT1 = 16'h5aaa;
    defparam add_25_15.INJECT1_0 = "NO";
    defparam add_25_15.INJECT1_1 = "NO";
    CCU2D add_25_13 (.A0(n[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3066), 
          .COUT(n3067), .S0(n_31__N_863[11]), .S1(n_31__N_863[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_13.INIT0 = 16'h5aaa;
    defparam add_25_13.INIT1 = 16'h5aaa;
    defparam add_25_13.INJECT1_0 = "NO";
    defparam add_25_13.INJECT1_1 = "NO";
    LUT4 i3119_3_lut (.A(subMean_window_4_2), .B(subMean_window_5_2), .C(\m[0] ), 
         .Z(n3926)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3119_3_lut.init = 16'hcaca;
    PFUMX i2916 (.BLUT(n3716), .ALUT(n3717), .C0(window_count[1]), .Z(n3723));
    CCU2D add_25_11 (.A0(n[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3065), 
          .COUT(n3066), .S0(n_31__N_863[9]), .S1(n_31__N_863[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_11.INIT0 = 16'h5aaa;
    defparam add_25_11.INIT1 = 16'h5aaa;
    defparam add_25_11.INJECT1_0 = "NO";
    defparam add_25_11.INJECT1_1 = "NO";
    CCU2D add_25_9 (.A0(n[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3064), 
          .COUT(n3065), .S0(n_31__N_863[7]), .S1(n_31__N_863[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_9.INIT0 = 16'h5aaa;
    defparam add_25_9.INIT1 = 16'h5aaa;
    defparam add_25_9.INJECT1_0 = "NO";
    defparam add_25_9.INJECT1_1 = "NO";
    LUT4 i3120_3_lut (.A(subMean_window_6_2), .B(subMean_window_7_2), .C(\m[0] ), 
         .Z(n3927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3120_3_lut.init = 16'hcaca;
    CCU2D add_25_7 (.A0(n[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3063), 
          .COUT(n3064), .S0(n_31__N_863[5]), .S1(n_31__N_863[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_7.INIT0 = 16'h5aaa;
    defparam add_25_7.INIT1 = 16'h5aaa;
    defparam add_25_7.INJECT1_0 = "NO";
    defparam add_25_7.INJECT1_1 = "NO";
    CCU2D add_25_5 (.A0(n[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3062), 
          .COUT(n3063), .S0(n_31__N_863[3]), .S1(n_31__N_863[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_5.INIT0 = 16'h5aaa;
    defparam add_25_5.INIT1 = 16'h5aaa;
    defparam add_25_5.INJECT1_0 = "NO";
    defparam add_25_5.INJECT1_1 = "NO";
    LUT4 i2926_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(n[0]), 
         .Z(n3733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2926_3_lut.init = 16'hcaca;
    LUT4 i2953_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(n[0]), 
         .Z(n3760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2953_3_lut.init = 16'hcaca;
    CCU2D add_25_3 (.A0(n[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3061), 
          .COUT(n3062), .S0(n_31__N_863[1]), .S1(n_31__N_863[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_3.INIT0 = 16'h5aaa;
    defparam add_25_3.INIT1 = 16'h5aaa;
    defparam add_25_3.INJECT1_0 = "NO";
    defparam add_25_3.INJECT1_1 = "NO";
    LUT4 i2927_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(n[0]), .Z(n3734)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2927_3_lut.init = 16'hcaca;
    CCU2D add_25_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3061), 
          .S1(n_31__N_863[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(68[9:14])
    defparam add_25_1.INIT0 = 16'hF000;
    defparam add_25_1.INIT1 = 16'h5555;
    defparam add_25_1.INJECT1_0 = "NO";
    defparam add_25_1.INJECT1_1 = "NO";
    LUT4 i2928_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(n[0]), .Z(n3735)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2928_3_lut.init = 16'hcaca;
    PFUMX i3080 (.BLUT(n3879), .ALUT(n3880), .C0(\m[1] ), .Z(n3887));
    LUT4 i2929_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(n[0]), .Z(n3736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2929_3_lut.init = 16'hcaca;
    LUT4 i2817_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(window_count[0]), 
         .Z(n3624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2817_3_lut.init = 16'hcaca;
    LUT4 i3121_3_lut (.A(subMean_window_8_2), .B(subMean_window_9_2), .C(\m[0] ), 
         .Z(n3928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3121_3_lut.init = 16'hcaca;
    LUT4 i2057_2_lut (.A(n_31__N_863[1]), .B(n_31__N_895), .Z(n66[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam i2057_2_lut.init = 16'h2222;
    PFUMX i2917 (.BLUT(n3718), .ALUT(n3719), .C0(window_count[1]), .Z(n3724));
    LUT4 i2056_2_lut (.A(n_31__N_863[2]), .B(n_31__N_895), .Z(n66[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(66[3] 73[6])
    defparam i2056_2_lut.init = 16'h2222;
    LUT4 i3122_3_lut (.A(subMean_window_10_2), .B(subMean_window_11_2), 
         .C(\m[0] ), .Z(n3929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3122_3_lut.init = 16'hcaca;
    LUT4 i2772_3_lut (.A(subMean_window_0_8), .B(subMean_window_1_8), .C(window_count[0]), 
         .Z(n3579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2772_3_lut.init = 16'hcaca;
    PFUMX i2918 (.BLUT(n3720), .ALUT(n3721), .C0(window_count[1]), .Z(n3725));
    LUT4 i2459_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(n[0]), 
         .Z(n3266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2459_3_lut.init = 16'hcaca;
    LUT4 i2773_3_lut (.A(subMean_window_2_8), .B(subMean_window_3_8), .C(window_count[0]), 
         .Z(n3580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2773_3_lut.init = 16'hcaca;
    LUT4 i3123_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(\m[0] ), .Z(n3930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3123_3_lut.init = 16'hcaca;
    LUT4 i2863_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(window_count[0]), 
         .Z(n3670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2863_3_lut.init = 16'hcaca;
    PFUMX i3081 (.BLUT(n3881), .ALUT(n3882), .C0(\m[1] ), .Z(n3888));
    PFUMX i2465 (.BLUT(n3264), .ALUT(n3265), .C0(n[1]), .Z(n3272));
    LUT4 i2460_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(n[0]), 
         .Z(n3267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2460_3_lut.init = 16'hcaca;
    LUT4 i2491_3_lut (.A(subMean_window_8_15), .B(subMean_window_9_15), 
         .C(\m[0] ), .Z(n3298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2491_3_lut.init = 16'hcaca;
    LUT4 i2492_3_lut (.A(subMean_window_10_15), .B(subMean_window_11_15), 
         .C(\m[0] ), .Z(n3299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2492_3_lut.init = 16'hcaca;
    LUT4 i2909_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(window_count[0]), .Z(n3716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2909_3_lut.init = 16'hcaca;
    PFUMX i3082 (.BLUT(n3883), .ALUT(n3884), .C0(\m[1] ), .Z(n3889));
    LUT4 i2910_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(window_count[0]), .Z(n3717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2910_3_lut.init = 16'hcaca;
    LUT4 i3072_3_lut (.A(subMean_window_0_3), .B(subMean_window_1_3), .C(\m[0] ), 
         .Z(n3879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3072_3_lut.init = 16'hcaca;
    LUT4 i2818_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(window_count[0]), 
         .Z(n3625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2818_3_lut.init = 16'hcaca;
    CCU2D m_106_add_4_33 (.A0(m[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3021), 
          .S0(n133[31]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_33.INIT0 = 16'hfaaa;
    defparam m_106_add_4_33.INIT1 = 16'h0000;
    defparam m_106_add_4_33.INJECT1_0 = "NO";
    defparam m_106_add_4_33.INJECT1_1 = "NO";
    LUT4 i3073_3_lut (.A(subMean_window_2_3), .B(subMean_window_3_3), .C(\m[0] ), 
         .Z(n3880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3073_3_lut.init = 16'hcaca;
    PFUMX i2498 (.BLUT(n3300), .ALUT(n3301), .C0(\m[1] ), .Z(n3305));
    CCU2D m_106_add_4_31 (.A0(m[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3020), 
          .COUT(n3021), .S0(n133[29]), .S1(n133[30]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_31.INIT0 = 16'hfaaa;
    defparam m_106_add_4_31.INIT1 = 16'hfaaa;
    defparam m_106_add_4_31.INJECT1_0 = "NO";
    defparam m_106_add_4_31.INJECT1_1 = "NO";
    CCU2D m_106_add_4_29 (.A0(m[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3019), 
          .COUT(n3020), .S0(n133[27]), .S1(n133[28]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_29.INIT0 = 16'hfaaa;
    defparam m_106_add_4_29.INIT1 = 16'hfaaa;
    defparam m_106_add_4_29.INJECT1_0 = "NO";
    defparam m_106_add_4_29.INJECT1_1 = "NO";
    LUT4 i2911_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(window_count[0]), .Z(n3718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2911_3_lut.init = 16'hcaca;
    CCU2D m_106_add_4_27 (.A0(m[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3018), 
          .COUT(n3019), .S0(n133[25]), .S1(n133[26]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_27.INIT0 = 16'hfaaa;
    defparam m_106_add_4_27.INIT1 = 16'hfaaa;
    defparam m_106_add_4_27.INJECT1_0 = "NO";
    defparam m_106_add_4_27.INJECT1_1 = "NO";
    CCU2D m_106_add_4_25 (.A0(m[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3017), 
          .COUT(n3018), .S0(n133[23]), .S1(n133[24]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_25.INIT0 = 16'hfaaa;
    defparam m_106_add_4_25.INIT1 = 16'hfaaa;
    defparam m_106_add_4_25.INJECT1_0 = "NO";
    defparam m_106_add_4_25.INJECT1_1 = "NO";
    LUT4 i2912_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(window_count[0]), .Z(n3719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2912_3_lut.init = 16'hcaca;
    CCU2D m_106_add_4_23 (.A0(m[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3016), 
          .COUT(n3017), .S0(n133[21]), .S1(n133[22]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_23.INIT0 = 16'hfaaa;
    defparam m_106_add_4_23.INIT1 = 16'hfaaa;
    defparam m_106_add_4_23.INJECT1_0 = "NO";
    defparam m_106_add_4_23.INJECT1_1 = "NO";
    CCU2D m_106_add_4_21 (.A0(m[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3015), 
          .COUT(n3016), .S0(n133[19]), .S1(n133[20]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_21.INIT0 = 16'hfaaa;
    defparam m_106_add_4_21.INIT1 = 16'hfaaa;
    defparam m_106_add_4_21.INJECT1_0 = "NO";
    defparam m_106_add_4_21.INJECT1_1 = "NO";
    CCU2D m_106_add_4_19 (.A0(m[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3014), 
          .COUT(n3015), .S0(n133[17]), .S1(n133[18]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_19.INIT0 = 16'hfaaa;
    defparam m_106_add_4_19.INIT1 = 16'hfaaa;
    defparam m_106_add_4_19.INJECT1_0 = "NO";
    defparam m_106_add_4_19.INJECT1_1 = "NO";
    PFUMX i2540 (.BLUT(n3339), .ALUT(n3340), .C0(\m[1] ), .Z(n3347));
    CCU2D m_106_add_4_17 (.A0(m[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3013), 
          .COUT(n3014), .S0(n133[15]), .S1(n133[16]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_17.INIT0 = 16'hfaaa;
    defparam m_106_add_4_17.INIT1 = 16'hfaaa;
    defparam m_106_add_4_17.INJECT1_0 = "NO";
    defparam m_106_add_4_17.INJECT1_1 = "NO";
    CCU2D m_106_add_4_15 (.A0(m[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3012), 
          .COUT(n3013), .S0(n133[13]), .S1(n133[14]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_15.INIT0 = 16'hfaaa;
    defparam m_106_add_4_15.INIT1 = 16'hfaaa;
    defparam m_106_add_4_15.INJECT1_0 = "NO";
    defparam m_106_add_4_15.INJECT1_1 = "NO";
    CCU2D m_106_add_4_13 (.A0(m[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3011), 
          .COUT(n3012), .S0(n133[11]), .S1(n133[12]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_13.INIT0 = 16'hfaaa;
    defparam m_106_add_4_13.INIT1 = 16'hfaaa;
    defparam m_106_add_4_13.INJECT1_0 = "NO";
    defparam m_106_add_4_13.INJECT1_1 = "NO";
    CCU2D m_106_add_4_11 (.A0(m[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3010), 
          .COUT(n3011), .S0(n133[9]), .S1(n133[10]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_11.INIT0 = 16'hfaaa;
    defparam m_106_add_4_11.INIT1 = 16'hfaaa;
    defparam m_106_add_4_11.INJECT1_0 = "NO";
    defparam m_106_add_4_11.INJECT1_1 = "NO";
    LUT4 i2913_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(window_count[0]), .Z(n3720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2913_3_lut.init = 16'hcaca;
    CCU2D m_106_add_4_9 (.A0(m[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3009), 
          .COUT(n3010), .S0(n133[7]), .S1(n133[8]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_9.INIT0 = 16'hfaaa;
    defparam m_106_add_4_9.INIT1 = 16'hfaaa;
    defparam m_106_add_4_9.INJECT1_0 = "NO";
    defparam m_106_add_4_9.INJECT1_1 = "NO";
    LUT4 i2914_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(window_count[0]), .Z(n3721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2914_3_lut.init = 16'hcaca;
    CCU2D m_106_add_4_7 (.A0(m[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3008), 
          .COUT(n3009), .S0(n133[5]), .S1(n133[6]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_7.INIT0 = 16'hfaaa;
    defparam m_106_add_4_7.INIT1 = 16'hfaaa;
    defparam m_106_add_4_7.INJECT1_0 = "NO";
    defparam m_106_add_4_7.INJECT1_1 = "NO";
    CCU2D m_106_add_4_5 (.A0(m[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3007), 
          .COUT(n3008), .S0(n133[3]), .S1(n133[4]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_5.INIT0 = 16'hfaaa;
    defparam m_106_add_4_5.INIT1 = 16'hfaaa;
    defparam m_106_add_4_5.INJECT1_0 = "NO";
    defparam m_106_add_4_5.INJECT1_1 = "NO";
    PFUMX i3083 (.BLUT(n3885), .ALUT(n3886), .C0(\m[1] ), .Z(n3890));
    CCU2D m_106_add_4_3 (.A0(\m[1] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(m[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3006), 
          .COUT(n3007), .S0(n133[1]), .S1(n133[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_3.INIT0 = 16'hfaaa;
    defparam m_106_add_4_3.INIT1 = 16'hfaaa;
    defparam m_106_add_4_3.INJECT1_0 = "NO";
    defparam m_106_add_4_3.INJECT1_1 = "NO";
    CCU2D m_106_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\m[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3006), 
          .S1(n133[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(67[9:14])
    defparam m_106_add_4_1.INIT0 = 16'hF000;
    defparam m_106_add_4_1.INIT1 = 16'h0555;
    defparam m_106_add_4_1.INJECT1_0 = "NO";
    defparam m_106_add_4_1.INJECT1_1 = "NO";
    CCU2D sum_105_add_4_20 (.A0(n408[17]), .B0(sum[18]), .C0(GND_net), 
          .D0(GND_net), .A1(n408[17]), .B1(sum[19]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3004), .S0(n85[18]), .S1(n85[19]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_20.INIT0 = 16'h5666;
    defparam sum_105_add_4_20.INIT1 = 16'h5666;
    defparam sum_105_add_4_20.INJECT1_0 = "NO";
    defparam sum_105_add_4_20.INJECT1_1 = "NO";
    CCU2D sum_105_add_4_18 (.A0(n408[16]), .B0(sum[16]), .C0(GND_net), 
          .D0(GND_net), .A1(n408[17]), .B1(sum[17]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3003), .COUT(n3004), .S0(n85[16]), .S1(n85[17]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_18.INIT0 = 16'h5666;
    defparam sum_105_add_4_18.INIT1 = 16'h5666;
    defparam sum_105_add_4_18.INJECT1_0 = "NO";
    defparam sum_105_add_4_18.INJECT1_1 = "NO";
    LUT4 i3074_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(\m[0] ), 
         .Z(n3881)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3074_3_lut.init = 16'hcaca;
    CCU2D sum_105_add_4_16 (.A0(n408[14]), .B0(sum[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n408[15]), .B1(sum[15]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3002), .COUT(n3003), .S0(n85[14]), .S1(n85[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_16.INIT0 = 16'h5666;
    defparam sum_105_add_4_16.INIT1 = 16'h5666;
    defparam sum_105_add_4_16.INJECT1_0 = "NO";
    defparam sum_105_add_4_16.INJECT1_1 = "NO";
    LUT4 i2506_3_lut (.A(subMean_window_8_14), .B(subMean_window_9_14), 
         .C(n[0]), .Z(n3313)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2506_3_lut.init = 16'hcaca;
    CCU2D sum_105_add_4_14 (.A0(n408[12]), .B0(sum[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n408[13]), .B1(sum[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3001), .COUT(n3002), .S0(n85[12]), .S1(n85[13]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_14.INIT0 = 16'h5666;
    defparam sum_105_add_4_14.INIT1 = 16'h5666;
    defparam sum_105_add_4_14.INJECT1_0 = "NO";
    defparam sum_105_add_4_14.INJECT1_1 = "NO";
    CCU2D sum_105_add_4_12 (.A0(n408[10]), .B0(sum[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n408[11]), .B1(sum[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3000), .COUT(n3001), .S0(n85[10]), .S1(n85[11]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_12.INIT0 = 16'h5666;
    defparam sum_105_add_4_12.INIT1 = 16'h5666;
    defparam sum_105_add_4_12.INJECT1_0 = "NO";
    defparam sum_105_add_4_12.INJECT1_1 = "NO";
    LUT4 i3075_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(\m[0] ), 
         .Z(n3882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3075_3_lut.init = 16'hcaca;
    PFUMX i2705 (.BLUT(n3504), .ALUT(n3505), .C0(\m[1] ), .Z(n3512));
    CCU2D sum_105_add_4_10 (.A0(n408[8]), .B0(sum[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n408[9]), .B1(sum[9]), .C1(GND_net), .D1(GND_net), .CIN(n2999), 
          .COUT(n3000), .S0(n85[8]), .S1(n85[9]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_10.INIT0 = 16'h5666;
    defparam sum_105_add_4_10.INIT1 = 16'h5666;
    defparam sum_105_add_4_10.INJECT1_0 = "NO";
    defparam sum_105_add_4_10.INJECT1_1 = "NO";
    CCU2D sum_105_add_4_6 (.A0(n408[4]), .B0(sum[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n408[5]), .B1(sum[5]), .C1(GND_net), .D1(GND_net), .CIN(n2997), 
          .COUT(n2998), .S0(n85[4]), .S1(n85[5]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/submean.v(48[4] 53[7])
    defparam sum_105_add_4_6.INIT0 = 16'h5666;
    defparam sum_105_add_4_6.INIT1 = 16'h5666;
    defparam sum_105_add_4_6.INJECT1_0 = "NO";
    defparam sum_105_add_4_6.INJECT1_1 = "NO";
    LUT4 i2457_3_lut (.A(subMean_window_0_6), .B(subMean_window_1_6), .C(n[0]), 
         .Z(n3264)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2457_3_lut.init = 16'hcaca;
    LUT4 i2458_3_lut (.A(subMean_window_2_6), .B(subMean_window_3_6), .C(n[0]), 
         .Z(n3265)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2458_3_lut.init = 16'hcaca;
    LUT4 i3076_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(\m[0] ), 
         .Z(n3883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3076_3_lut.init = 16'hcaca;
    LUT4 i3077_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(\m[0] ), .Z(n3884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3077_3_lut.init = 16'hcaca;
    LUT4 i2493_3_lut (.A(subMean_window_12_15), .B(subMean_window_13_15), 
         .C(\m[0] ), .Z(n3300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2493_3_lut.init = 16'hcaca;
    LUT4 i2494_3_lut (.A(subMean_window_14_15), .B(subMean_window_15_15), 
         .C(\m[0] ), .Z(n3301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2494_3_lut.init = 16'hcaca;
    LUT4 i2507_3_lut (.A(subMean_window_10_14), .B(subMean_window_11_14), 
         .C(n[0]), .Z(n3314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2507_3_lut.init = 16'hcaca;
    LUT4 i2967_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(\m[0] ), 
         .Z(n3774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2967_3_lut.init = 16'hcaca;
    LUT4 i2968_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(\m[0] ), 
         .Z(n3775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2968_3_lut.init = 16'hcaca;
    LUT4 i2629_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(n[0]), .Z(n3436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2629_3_lut.init = 16'hcaca;
    PFUMX i2706 (.BLUT(n3506), .ALUT(n3507), .C0(\m[1] ), .Z(n3513));
    LUT4 i2637_3_lut (.A(subMean_window_0_12), .B(subMean_window_1_12), 
         .C(\m[0] ), .Z(n3444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2637_3_lut.init = 16'hcaca;
    LUT4 i2638_3_lut (.A(subMean_window_2_12), .B(subMean_window_3_12), 
         .C(\m[0] ), .Z(n3445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2638_3_lut.init = 16'hcaca;
    LUT4 i2639_3_lut (.A(subMean_window_4_12), .B(subMean_window_5_12), 
         .C(\m[0] ), .Z(n3446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2639_3_lut.init = 16'hcaca;
    LUT4 i2819_3_lut (.A(subMean_window_4_6), .B(subMean_window_5_6), .C(window_count[0]), 
         .Z(n3626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2819_3_lut.init = 16'hcaca;
    LUT4 i2532_3_lut (.A(subMean_window_0_1), .B(subMean_window_1_1), .C(\m[0] ), 
         .Z(n3339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2532_3_lut.init = 16'hcaca;
    LUT4 i2640_3_lut (.A(subMean_window_6_12), .B(subMean_window_7_12), 
         .C(\m[0] ), .Z(n3447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2640_3_lut.init = 16'hcaca;
    LUT4 i2641_3_lut (.A(subMean_window_8_12), .B(subMean_window_9_12), 
         .C(\m[0] ), .Z(n3448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2641_3_lut.init = 16'hcaca;
    LUT4 i2820_3_lut (.A(subMean_window_6_6), .B(subMean_window_7_6), .C(window_count[0]), 
         .Z(n3627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2820_3_lut.init = 16'hcaca;
    LUT4 i2642_3_lut (.A(subMean_window_10_12), .B(subMean_window_11_12), 
         .C(\m[0] ), .Z(n3449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2642_3_lut.init = 16'hcaca;
    LUT4 i2508_3_lut (.A(subMean_window_12_14), .B(subMean_window_13_14), 
         .C(n[0]), .Z(n3315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2508_3_lut.init = 16'hcaca;
    LUT4 i2643_3_lut (.A(subMean_window_12_12), .B(subMean_window_13_12), 
         .C(\m[0] ), .Z(n3450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2643_3_lut.init = 16'hcaca;
    LUT4 i2509_3_lut (.A(subMean_window_14_14), .B(subMean_window_15_14), 
         .C(n[0]), .Z(n3316)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2509_3_lut.init = 16'hcaca;
    PFUMX i2707 (.BLUT(n3508), .ALUT(n3509), .C0(\m[1] ), .Z(n3514));
    LUT4 i2644_3_lut (.A(subMean_window_14_12), .B(subMean_window_15_12), 
         .C(\m[0] ), .Z(n3451)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2644_3_lut.init = 16'hcaca;
    LUT4 i2997_3_lut (.A(subMean_window_0_11), .B(subMean_window_1_11), 
         .C(\m[0] ), .Z(n3804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2997_3_lut.init = 16'hcaca;
    LUT4 i2821_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(window_count[0]), 
         .Z(n3628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2821_3_lut.init = 16'hcaca;
    LUT4 i2998_3_lut (.A(subMean_window_2_11), .B(subMean_window_3_11), 
         .C(\m[0] ), .Z(n3805)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2998_3_lut.init = 16'hcaca;
    LUT4 i2533_3_lut (.A(subMean_window_2_1), .B(subMean_window_3_1), .C(\m[0] ), 
         .Z(n3340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2533_3_lut.init = 16'hcaca;
    LUT4 i3078_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(\m[0] ), .Z(n3885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3078_3_lut.init = 16'hcaca;
    LUT4 i3079_3_lut (.A(subMean_window_14_3), .B(subMean_window_15_3), 
         .C(\m[0] ), .Z(n3886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3079_3_lut.init = 16'hcaca;
    LUT4 i2697_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(\m[0] ), .Z(n3504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2697_3_lut.init = 16'hcaca;
    PFUMX i2708 (.BLUT(n3510), .ALUT(n3511), .C0(\m[1] ), .Z(n3515));
    LUT4 i2698_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(\m[0] ), .Z(n3505)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2698_3_lut.init = 16'hcaca;
    LUT4 i2699_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(\m[0] ), .Z(n3506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2699_3_lut.init = 16'hcaca;
    LUT4 i2700_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(\m[0] ), .Z(n3507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2700_3_lut.init = 16'hcaca;
    LUT4 i2701_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(\m[0] ), .Z(n3508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2701_3_lut.init = 16'hcaca;
    LUT4 i2702_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(\m[0] ), .Z(n3509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2702_3_lut.init = 16'hcaca;
    LUT4 i2877_3_lut (.A(subMean_window_0_15), .B(subMean_window_1_15), 
         .C(window_count[0]), .Z(n3684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2877_3_lut.init = 16'hcaca;
    LUT4 i2703_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(\m[0] ), .Z(n3510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2703_3_lut.init = 16'hcaca;
    LUT4 i2704_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(\m[0] ), .Z(n3511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2704_3_lut.init = 16'hcaca;
    PFUMX i2720 (.BLUT(n3519), .ALUT(n3520), .C0(window_count[1]), .Z(n3527));
    LUT4 i2822_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(window_count[0]), .Z(n3629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2822_3_lut.init = 16'hcaca;
    LUT4 i2823_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(window_count[0]), .Z(n3630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2823_3_lut.init = 16'hcaca;
    LUT4 i2878_3_lut (.A(subMean_window_2_15), .B(subMean_window_3_15), 
         .C(window_count[0]), .Z(n3685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2878_3_lut.init = 16'hcaca;
    LUT4 i2824_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(window_count[0]), .Z(n3631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2824_3_lut.init = 16'hcaca;
    LUT4 i2712_3_lut (.A(subMean_window_0_10), .B(subMean_window_1_10), 
         .C(window_count[0]), .Z(n3519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2712_3_lut.init = 16'hcaca;
    LUT4 i2713_3_lut (.A(subMean_window_2_10), .B(subMean_window_3_10), 
         .C(window_count[0]), .Z(n3520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2713_3_lut.init = 16'hcaca;
    LUT4 i2969_3_lut (.A(subMean_window_4_4), .B(subMean_window_5_4), .C(\m[0] ), 
         .Z(n3776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2969_3_lut.init = 16'hcaca;
    LUT4 i2970_3_lut (.A(subMean_window_6_4), .B(subMean_window_7_4), .C(\m[0] ), 
         .Z(n3777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2970_3_lut.init = 16'hcaca;
    LUT4 i2999_3_lut (.A(subMean_window_4_11), .B(subMean_window_5_11), 
         .C(\m[0] ), .Z(n3806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2999_3_lut.init = 16'hcaca;
    LUT4 i2971_3_lut (.A(subMean_window_8_4), .B(subMean_window_9_4), .C(\m[0] ), 
         .Z(n3778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2971_3_lut.init = 16'hcaca;
    LUT4 i2972_3_lut (.A(subMean_window_10_4), .B(subMean_window_11_4), 
         .C(\m[0] ), .Z(n3779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2972_3_lut.init = 16'hcaca;
    LUT4 i2534_3_lut (.A(subMean_window_4_1), .B(subMean_window_5_1), .C(\m[0] ), 
         .Z(n3341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2534_3_lut.init = 16'hcaca;
    LUT4 i2535_3_lut (.A(subMean_window_6_1), .B(subMean_window_7_1), .C(\m[0] ), 
         .Z(n3342)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2535_3_lut.init = 16'hcaca;
    LUT4 i2973_3_lut (.A(subMean_window_12_4), .B(subMean_window_13_4), 
         .C(\m[0] ), .Z(n3780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2973_3_lut.init = 16'hcaca;
    L6MUX21 i3116 (.D0(n3921), .D1(n3922), .SD(n[3]), .Z(subMean_out_15__N_663[2]));
    L6MUX21 i2936 (.D0(n3741), .D1(n3742), .SD(n[3]), .Z(subMean_out_15__N_663[5]));
    L6MUX21 i3041 (.D0(n3846), .D1(n3847), .SD(window_count[3]), .Z(n3848));
    L6MUX21 i2741 (.D0(n3546), .D1(n3547), .SD(n[3]), .Z(subMean_out_15__N_663[9]));
    L6MUX21 i2951 (.D0(n3756), .D1(n3757), .SD(m[3]), .Z(n3758));
    LUT4 i2974_3_lut (.A(subMean_window_14_4), .B(subMean_window_15_4), 
         .C(\m[0] ), .Z(n3781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2974_3_lut.init = 16'hcaca;
    LUT4 i2774_3_lut (.A(subMean_window_4_8), .B(subMean_window_5_8), .C(window_count[0]), 
         .Z(n3581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2774_3_lut.init = 16'hcaca;
    LUT4 i2536_3_lut (.A(subMean_window_8_1), .B(subMean_window_9_1), .C(\m[0] ), 
         .Z(n3343)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2536_3_lut.init = 16'hcaca;
    LUT4 i2537_3_lut (.A(subMean_window_10_1), .B(subMean_window_11_1), 
         .C(\m[0] ), .Z(n3344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2537_3_lut.init = 16'hcaca;
    L6MUX21 i2756 (.D0(n3561), .D1(n3562), .SD(window_count[3]), .Z(n3563));
    L6MUX21 i2771 (.D0(n3576), .D1(n3577), .SD(m[3]), .Z(n3578));
    L6MUX21 i2786 (.D0(n3591), .D1(n3592), .SD(window_count[3]), .Z(n3593));
    LUT4 i2538_3_lut (.A(subMean_window_12_1), .B(subMean_window_13_1), 
         .C(\m[0] ), .Z(n3345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2538_3_lut.init = 16'hcaca;
    LUT4 i2539_3_lut (.A(subMean_window_14_1), .B(subMean_window_15_1), 
         .C(\m[0] ), .Z(n3346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2539_3_lut.init = 16'hcaca;
    L6MUX21 i3131 (.D0(n3936), .D1(n3937), .SD(m[3]), .Z(n3938));
    L6MUX21 i2966 (.D0(n3771), .D1(n3772), .SD(n[3]), .Z(subMean_out_15__N_663[4]));
    L6MUX21 i2801 (.D0(n3606), .D1(n3607), .SD(m[3]), .Z(n3608));
    LUT4 i2832_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(window_count[0]), 
         .Z(n3639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2832_3_lut.init = 16'hcaca;
    LUT4 i2833_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(window_count[0]), 
         .Z(n3640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2833_3_lut.init = 16'hcaca;
    L6MUX21 i2816 (.D0(n3621), .D1(n3622), .SD(window_count[3]), .Z(n3623));
    L6MUX21 i2471 (.D0(n3276), .D1(n3277), .SD(n[3]), .Z(subMean_out_15__N_663[6]));
    L6MUX21 i2441 (.D0(n3246), .D1(n3247), .SD(window_count[3]), .Z(n3248));
    LUT4 i2867_3_lut (.A(subMean_window_10_3), .B(subMean_window_11_3), 
         .C(window_count[0]), .Z(n3674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2867_3_lut.init = 16'hcaca;
    L6MUX21 i2831 (.D0(n3636), .D1(n3637), .SD(window_count[3]), .Z(n3638));
    L6MUX21 i2516 (.D0(n3321), .D1(n3322), .SD(n[3]), .Z(subMean_out_15__N_663[14]));
    L6MUX21 i3146 (.D0(n3951), .D1(n3952), .SD(n[3]), .Z(subMean_out_15__N_663[1]));
    L6MUX21 i2546 (.D0(n3351), .D1(n3352), .SD(m[3]), .Z(n3353));
    L6MUX21 i2561 (.D0(n3366), .D1(n3367), .SD(n[3]), .Z(subMean_out_15__N_663[13]));
    L6MUX21 i2981 (.D0(n3786), .D1(n3787), .SD(m[3]), .Z(n3788));
    L6MUX21 i2846 (.D0(n3651), .D1(n3652), .SD(window_count[3]), .Z(n3653));
    L6MUX21 i2576 (.D0(n3381), .D1(n3382), .SD(n[3]), .Z(subMean_out_15__N_663[0]));
    L6MUX21 i2591 (.D0(n3396), .D1(n3397), .SD(m[3]), .Z(n3398));
    L6MUX21 i2861 (.D0(n3666), .D1(n3667), .SD(window_count[3]), .Z(n3668));
    L6MUX21 i2606 (.D0(n3411), .D1(n3412), .SD(m[3]), .Z(n3413));
    L6MUX21 i3056 (.D0(n3861), .D1(n3862), .SD(m[3]), .Z(n3863));
    LUT4 i2864_3_lut (.A(subMean_window_4_3), .B(subMean_window_5_3), .C(window_count[0]), 
         .Z(n3671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2864_3_lut.init = 16'hcaca;
    LUT4 i2834_3_lut (.A(subMean_window_4_5), .B(subMean_window_5_5), .C(window_count[0]), 
         .Z(n3641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2834_3_lut.init = 16'hcaca;
    LUT4 i2835_3_lut (.A(subMean_window_6_5), .B(subMean_window_7_5), .C(window_count[0]), 
         .Z(n3642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2835_3_lut.init = 16'hcaca;
    L6MUX21 i2621 (.D0(n3426), .D1(n3427), .SD(n[3]), .Z(subMean_out_15__N_663[12]));
    LUT4 i2836_3_lut (.A(subMean_window_8_5), .B(subMean_window_9_5), .C(window_count[0]), 
         .Z(n3643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2836_3_lut.init = 16'hcaca;
    LUT4 i2837_3_lut (.A(subMean_window_10_5), .B(subMean_window_11_5), 
         .C(window_count[0]), .Z(n3644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2837_3_lut.init = 16'hcaca;
    L6MUX21 i2996 (.D0(n3801), .D1(n3802), .SD(n[3]), .Z(subMean_out_15__N_663[3]));
    L6MUX21 i2876 (.D0(n3681), .D1(n3682), .SD(window_count[3]), .Z(n3683));
    LUT4 i2547_3_lut (.A(subMean_window_0_13), .B(subMean_window_1_13), 
         .C(n[0]), .Z(n3354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2547_3_lut.init = 16'hcaca;
    LUT4 i2865_3_lut (.A(subMean_window_6_3), .B(subMean_window_7_3), .C(window_count[0]), 
         .Z(n3672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2865_3_lut.init = 16'hcaca;
    LUT4 i2866_3_lut (.A(subMean_window_8_3), .B(subMean_window_9_3), .C(window_count[0]), 
         .Z(n3673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2866_3_lut.init = 16'hcaca;
    LUT4 i2548_3_lut (.A(subMean_window_2_13), .B(subMean_window_3_13), 
         .C(n[0]), .Z(n3355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2548_3_lut.init = 16'hcaca;
    LUT4 i2714_3_lut (.A(subMean_window_4_10), .B(subMean_window_5_10), 
         .C(window_count[0]), .Z(n3521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2714_3_lut.init = 16'hcaca;
    LUT4 i2715_3_lut (.A(subMean_window_6_10), .B(subMean_window_7_10), 
         .C(window_count[0]), .Z(n3522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2715_3_lut.init = 16'hcaca;
    L6MUX21 i2636 (.D0(n3441), .D1(n3442), .SD(n[3]), .Z(subMean_out_15__N_663[10]));
    L6MUX21 i2651 (.D0(n3456), .D1(n3457), .SD(m[3]), .Z(n3458));
    L6MUX21 i2666 (.D0(n3471), .D1(n3472), .SD(window_count[3]), .Z(n3473));
    LUT4 i2716_3_lut (.A(subMean_window_8_10), .B(subMean_window_9_10), 
         .C(window_count[0]), .Z(n3523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2716_3_lut.init = 16'hcaca;
    LUT4 i2717_3_lut (.A(subMean_window_10_10), .B(subMean_window_11_10), 
         .C(window_count[0]), .Z(n3524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2717_3_lut.init = 16'hcaca;
    PFUMX i2721 (.BLUT(n3521), .ALUT(n3522), .C0(window_count[1]), .Z(n3528));
    LUT4 i2868_3_lut (.A(subMean_window_12_3), .B(subMean_window_13_3), 
         .C(window_count[0]), .Z(n3675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2868_3_lut.init = 16'hcaca;
    LUT4 i2922_3_lut (.A(subMean_window_0_5), .B(subMean_window_1_5), .C(n[0]), 
         .Z(n3729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2922_3_lut.init = 16'hcaca;
    L6MUX21 i2891 (.D0(n3696), .D1(n3697), .SD(window_count[3]), .Z(n3698));
    L6MUX21 i3101 (.D0(n3906), .D1(n3907), .SD(window_count[3]), .Z(n3908));
    L6MUX21 i3011 (.D0(n3816), .D1(n3817), .SD(m[3]), .Z(n3818));
    LUT4 i2549_3_lut (.A(subMean_window_4_13), .B(subMean_window_5_13), 
         .C(n[0]), .Z(n3356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2549_3_lut.init = 16'hcaca;
    LUT4 i2550_3_lut (.A(subMean_window_6_13), .B(subMean_window_7_13), 
         .C(n[0]), .Z(n3357)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2550_3_lut.init = 16'hcaca;
    LUT4 i2838_3_lut (.A(subMean_window_12_5), .B(subMean_window_13_5), 
         .C(window_count[0]), .Z(n3645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2838_3_lut.init = 16'hcaca;
    LUT4 i2923_3_lut (.A(subMean_window_2_5), .B(subMean_window_3_5), .C(n[0]), 
         .Z(n3730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2923_3_lut.init = 16'hcaca;
    LUT4 i2839_3_lut (.A(subMean_window_14_5), .B(subMean_window_15_5), 
         .C(window_count[0]), .Z(n3646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2839_3_lut.init = 16'hcaca;
    LUT4 i2551_3_lut (.A(subMean_window_8_13), .B(subMean_window_9_13), 
         .C(n[0]), .Z(n3358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2551_3_lut.init = 16'hcaca;
    LUT4 i2552_3_lut (.A(subMean_window_10_13), .B(subMean_window_11_13), 
         .C(n[0]), .Z(n3359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2552_3_lut.init = 16'hcaca;
    LUT4 i3027_3_lut (.A(subMean_window_0_2), .B(subMean_window_1_2), .C(window_count[0]), 
         .Z(n3834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3027_3_lut.init = 16'hcaca;
    LUT4 i3028_3_lut (.A(subMean_window_2_2), .B(subMean_window_3_2), .C(window_count[0]), 
         .Z(n3835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3028_3_lut.init = 16'hcaca;
    LUT4 i2718_3_lut (.A(subMean_window_12_10), .B(subMean_window_13_10), 
         .C(window_count[0]), .Z(n3525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2718_3_lut.init = 16'hcaca;
    LUT4 i2553_3_lut (.A(subMean_window_12_13), .B(subMean_window_13_13), 
         .C(n[0]), .Z(n3360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2553_3_lut.init = 16'hcaca;
    LUT4 i2554_3_lut (.A(subMean_window_14_13), .B(subMean_window_15_13), 
         .C(n[0]), .Z(n3361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2554_3_lut.init = 16'hcaca;
    LUT4 i2562_3_lut (.A(subMean_window_0_0), .B(subMean_window_1_0), .C(n[0]), 
         .Z(n3369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2562_3_lut.init = 16'hcaca;
    LUT4 i2719_3_lut (.A(subMean_window_14_10), .B(subMean_window_15_10), 
         .C(window_count[0]), .Z(n3526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2719_3_lut.init = 16'hcaca;
    L6MUX21 i2486 (.D0(n3291), .D1(n3292), .SD(m[3]), .Z(n3293));
    L6MUX21 i2456 (.D0(n3261), .D1(n3262), .SD(n[3]), .Z(subMean_out_15__N_663[15]));
    L6MUX21 i2681 (.D0(n3486), .D1(n3487), .SD(n[3]), .Z(subMean_out_15__N_663[11]));
    L6MUX21 i3071 (.D0(n3876), .D1(n3877), .SD(n[3]), .Z(subMean_out_15__N_663[7]));
    L6MUX21 i2531 (.D0(n3336), .D1(n3337), .SD(m[3]), .Z(n3338));
    L6MUX21 i2906 (.D0(n3711), .D1(n3712), .SD(window_count[3]), .Z(n3713));
    L6MUX21 i2696 (.D0(n3501), .D1(n3502), .SD(window_count[3]), .Z(n3503));
    L6MUX21 i3026 (.D0(n3831), .D1(n3832), .SD(n[3]), .Z(subMean_out_15__N_663[8]));
    LUT4 i3033_3_lut (.A(subMean_window_12_2), .B(subMean_window_13_2), 
         .C(window_count[0]), .Z(n3840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3033_3_lut.init = 16'hcaca;
    L6MUX21 i2921 (.D0(n3726), .D1(n3727), .SD(window_count[3]), .Z(n3728));
    L6MUX21 i2711 (.D0(n3516), .D1(n3517), .SD(m[3]), .Z(n3518));
    L6MUX21 i3086 (.D0(n3891), .D1(n3892), .SD(m[3]), .Z(n3893));
    L6MUX21 i2726 (.D0(n3531), .D1(n3532), .SD(window_count[3]), .Z(n3533));
    L6MUX21 i2501 (.D0(n3306), .D1(n3307), .SD(m[3]), .Z(n3308));
    L6MUX21 i3039 (.D0(n3842), .D1(n3843), .SD(window_count[2]), .Z(n3846));
    L6MUX21 i3114 (.D0(n3917), .D1(n3918), .SD(n[2]), .Z(n3921));
    LUT4 i2563_3_lut (.A(subMean_window_2_0), .B(subMean_window_3_0), .C(n[0]), 
         .Z(n3370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2563_3_lut.init = 16'hcaca;
    LUT4 i2564_3_lut (.A(subMean_window_4_0), .B(subMean_window_5_0), .C(n[0]), 
         .Z(n3371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2564_3_lut.init = 16'hcaca;
    PFUMX i2722 (.BLUT(n3523), .ALUT(n3524), .C0(window_count[1]), .Z(n3529));
    PFUMX i2930 (.BLUT(n3729), .ALUT(n3730), .C0(n[1]), .Z(n3737));
    LUT4 i2565_3_lut (.A(subMean_window_6_0), .B(subMean_window_7_0), .C(n[0]), 
         .Z(n3372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2565_3_lut.init = 16'hcaca;
    LUT4 i3034_3_lut (.A(subMean_window_14_2), .B(subMean_window_15_2), 
         .C(window_count[0]), .Z(n3841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3034_3_lut.init = 16'hcaca;
    LUT4 i2566_3_lut (.A(subMean_window_8_0), .B(subMean_window_9_0), .C(n[0]), 
         .Z(n3373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2566_3_lut.init = 16'hcaca;
    LUT4 i2567_3_lut (.A(subMean_window_10_0), .B(subMean_window_11_0), 
         .C(n[0]), .Z(n3374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2567_3_lut.init = 16'hcaca;
    LUT4 i2568_3_lut (.A(subMean_window_12_0), .B(subMean_window_13_0), 
         .C(n[0]), .Z(n3375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2568_3_lut.init = 16'hcaca;
    LUT4 i2461_3_lut (.A(subMean_window_8_6), .B(subMean_window_9_6), .C(n[0]), 
         .Z(n3268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2461_3_lut.init = 16'hcaca;
    PFUMX i3035 (.BLUT(n3834), .ALUT(n3835), .C0(window_count[1]), .Z(n3842));
    L6MUX21 i3115 (.D0(n3919), .D1(n3920), .SD(n[2]), .Z(n3922));
    PFUMX i2723 (.BLUT(n3525), .ALUT(n3526), .C0(window_count[1]), .Z(n3530));
    L6MUX21 i2935 (.D0(n3739), .D1(n3740), .SD(n[2]), .Z(n3742));
    L6MUX21 i3040 (.D0(n3844), .D1(n3845), .SD(window_count[2]), .Z(n3847));
    L6MUX21 i2739 (.D0(n3542), .D1(n3543), .SD(n[2]), .Z(n3546));
    L6MUX21 i2740 (.D0(n3544), .D1(n3545), .SD(n[2]), .Z(n3547));
    L6MUX21 i2949 (.D0(n3752), .D1(n3753), .SD(m[2]), .Z(n3756));
    L6MUX21 i2950 (.D0(n3754), .D1(n3755), .SD(m[2]), .Z(n3757));
    L6MUX21 i2754 (.D0(n3557), .D1(n3558), .SD(window_count[2]), .Z(n3561));
    L6MUX21 i2755 (.D0(n3559), .D1(n3560), .SD(window_count[2]), .Z(n3562));
    LUT4 i2462_3_lut (.A(subMean_window_10_6), .B(subMean_window_11_6), 
         .C(n[0]), .Z(n3269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2462_3_lut.init = 16'hcaca;
    L6MUX21 i2769 (.D0(n3572), .D1(n3573), .SD(m[2]), .Z(n3576));
    L6MUX21 i2770 (.D0(n3574), .D1(n3575), .SD(m[2]), .Z(n3577));
    L6MUX21 i3129 (.D0(n3932), .D1(n3933), .SD(m[2]), .Z(n3936));
    L6MUX21 i2784 (.D0(n3587), .D1(n3588), .SD(window_count[2]), .Z(n3591));
    L6MUX21 i2785 (.D0(n3589), .D1(n3590), .SD(window_count[2]), .Z(n3592));
    L6MUX21 i3130 (.D0(n3934), .D1(n3935), .SD(m[2]), .Z(n3937));
    L6MUX21 i2964 (.D0(n3767), .D1(n3768), .SD(n[2]), .Z(n3771));
    L6MUX21 i2965 (.D0(n3769), .D1(n3770), .SD(n[2]), .Z(n3772));
    L6MUX21 i2799 (.D0(n3602), .D1(n3603), .SD(m[2]), .Z(n3606));
    L6MUX21 i2469 (.D0(n3272), .D1(n3273), .SD(n[2]), .Z(n3276));
    L6MUX21 i2470 (.D0(n3274), .D1(n3275), .SD(n[2]), .Z(n3277));
    L6MUX21 i2800 (.D0(n3604), .D1(n3605), .SD(m[2]), .Z(n3607));
    L6MUX21 i2814 (.D0(n3617), .D1(n3618), .SD(window_count[2]), .Z(n3621));
    L6MUX21 i2815 (.D0(n3619), .D1(n3620), .SD(window_count[2]), .Z(n3622));
    L6MUX21 i2439 (.D0(n3242), .D1(n3243), .SD(window_count[2]), .Z(n3246));
    L6MUX21 i2440 (.D0(n3244), .D1(n3245), .SD(window_count[2]), .Z(n3247));
    LUT4 i2727_3_lut (.A(subMean_window_0_9), .B(subMean_window_1_9), .C(n[0]), 
         .Z(n3534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2727_3_lut.init = 16'hcaca;
    L6MUX21 i3144 (.D0(n3947), .D1(n3948), .SD(n[2]), .Z(n3951));
    L6MUX21 i2514 (.D0(n3317), .D1(n3318), .SD(n[2]), .Z(n3321));
    L6MUX21 i3145 (.D0(n3949), .D1(n3950), .SD(n[2]), .Z(n3952));
    L6MUX21 i2829 (.D0(n3632), .D1(n3633), .SD(window_count[2]), .Z(n3636));
    L6MUX21 i2830 (.D0(n3634), .D1(n3635), .SD(window_count[2]), .Z(n3637));
    L6MUX21 i2515 (.D0(n3319), .D1(n3320), .SD(n[2]), .Z(n3322));
    L6MUX21 i2544 (.D0(n3347), .D1(n3348), .SD(m[2]), .Z(n3351));
    L6MUX21 i2545 (.D0(n3349), .D1(n3350), .SD(m[2]), .Z(n3352));
    L6MUX21 i2979 (.D0(n3782), .D1(n3783), .SD(m[2]), .Z(n3786));
    L6MUX21 i2980 (.D0(n3784), .D1(n3785), .SD(m[2]), .Z(n3787));
    L6MUX21 i2844 (.D0(n3647), .D1(n3648), .SD(window_count[2]), .Z(n3651));
    L6MUX21 i2559 (.D0(n3362), .D1(n3363), .SD(n[2]), .Z(n3366));
    L6MUX21 i2560 (.D0(n3364), .D1(n3365), .SD(n[2]), .Z(n3367));
    L6MUX21 i2845 (.D0(n3649), .D1(n3650), .SD(window_count[2]), .Z(n3652));
    L6MUX21 i2574 (.D0(n3377), .D1(n3378), .SD(n[2]), .Z(n3381));
    L6MUX21 i2575 (.D0(n3379), .D1(n3380), .SD(n[2]), .Z(n3382));
    LUT4 i2569_3_lut (.A(subMean_window_14_0), .B(subMean_window_15_0), 
         .C(n[0]), .Z(n3376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2569_3_lut.init = 16'hcaca;
    L6MUX21 i2589 (.D0(n3392), .D1(n3393), .SD(m[2]), .Z(n3396));
    L6MUX21 i2590 (.D0(n3394), .D1(n3395), .SD(m[2]), .Z(n3397));
    L6MUX21 i3054 (.D0(n3857), .D1(n3858), .SD(m[2]), .Z(n3861));
    L6MUX21 i2859 (.D0(n3662), .D1(n3663), .SD(window_count[2]), .Z(n3666));
    L6MUX21 i2860 (.D0(n3664), .D1(n3665), .SD(window_count[2]), .Z(n3667));
    L6MUX21 i3055 (.D0(n3859), .D1(n3860), .SD(m[2]), .Z(n3862));
    L6MUX21 i2604 (.D0(n3407), .D1(n3408), .SD(m[2]), .Z(n3411));
    L6MUX21 i2605 (.D0(n3409), .D1(n3410), .SD(m[2]), .Z(n3412));
    L6MUX21 i2994 (.D0(n3797), .D1(n3798), .SD(n[2]), .Z(n3801));
    L6MUX21 i2995 (.D0(n3799), .D1(n3800), .SD(n[2]), .Z(n3802));
    L6MUX21 i2619 (.D0(n3422), .D1(n3423), .SD(n[2]), .Z(n3426));
    L6MUX21 i2620 (.D0(n3424), .D1(n3425), .SD(n[2]), .Z(n3427));
    L6MUX21 i2874 (.D0(n3677), .D1(n3678), .SD(window_count[2]), .Z(n3681));
    L6MUX21 i2875 (.D0(n3679), .D1(n3680), .SD(window_count[2]), .Z(n3682));
    L6MUX21 i2634 (.D0(n3437), .D1(n3438), .SD(n[2]), .Z(n3441));
    L6MUX21 i2635 (.D0(n3439), .D1(n3440), .SD(n[2]), .Z(n3442));
    LUT4 i2728_3_lut (.A(subMean_window_2_9), .B(subMean_window_3_9), .C(n[0]), 
         .Z(n3535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2728_3_lut.init = 16'hcaca;
    L6MUX21 i2649 (.D0(n3452), .D1(n3453), .SD(m[2]), .Z(n3456));
    L6MUX21 i2650 (.D0(n3454), .D1(n3455), .SD(m[2]), .Z(n3457));
    L6MUX21 i2889 (.D0(n3692), .D1(n3693), .SD(window_count[2]), .Z(n3696));
    L6MUX21 i2664 (.D0(n3467), .D1(n3468), .SD(window_count[2]), .Z(n3471));
    L6MUX21 i2665 (.D0(n3469), .D1(n3470), .SD(window_count[2]), .Z(n3472));
    L6MUX21 i3009 (.D0(n3812), .D1(n3813), .SD(m[2]), .Z(n3816));
    L6MUX21 i2890 (.D0(n3694), .D1(n3695), .SD(window_count[2]), .Z(n3697));
    L6MUX21 i3010 (.D0(n3814), .D1(n3815), .SD(m[2]), .Z(n3817));
    L6MUX21 i3099 (.D0(n3902), .D1(n3903), .SD(window_count[2]), .Z(n3906));
    L6MUX21 i3100 (.D0(n3904), .D1(n3905), .SD(window_count[2]), .Z(n3907));
    L6MUX21 i2484 (.D0(n3287), .D1(n3288), .SD(m[2]), .Z(n3291));
    L6MUX21 i2485 (.D0(n3289), .D1(n3290), .SD(m[2]), .Z(n3292));
    L6MUX21 i2454 (.D0(n3257), .D1(n3258), .SD(n[2]), .Z(n3261));
    L6MUX21 i2455 (.D0(n3259), .D1(n3260), .SD(n[2]), .Z(n3262));
    L6MUX21 i2529 (.D0(n3332), .D1(n3333), .SD(m[2]), .Z(n3336));
    L6MUX21 i2679 (.D0(n3482), .D1(n3483), .SD(n[2]), .Z(n3486));
    LUT4 i3046_3_lut (.A(subMean_window_8_8), .B(subMean_window_9_8), .C(\m[0] ), 
         .Z(n3853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3046_3_lut.init = 16'hcaca;
    L6MUX21 i2680 (.D0(n3484), .D1(n3485), .SD(n[2]), .Z(n3487));
    L6MUX21 i3069 (.D0(n3872), .D1(n3873), .SD(n[2]), .Z(n3876));
    L6MUX21 i2530 (.D0(n3334), .D1(n3335), .SD(m[2]), .Z(n3337));
    L6MUX21 i3070 (.D0(n3874), .D1(n3875), .SD(n[2]), .Z(n3877));
    L6MUX21 i2904 (.D0(n3707), .D1(n3708), .SD(window_count[2]), .Z(n3711));
    L6MUX21 i2905 (.D0(n3709), .D1(n3710), .SD(window_count[2]), .Z(n3712));
    L6MUX21 i2694 (.D0(n3497), .D1(n3498), .SD(window_count[2]), .Z(n3501));
    L6MUX21 i3024 (.D0(n3827), .D1(n3828), .SD(n[2]), .Z(n3831));
    L6MUX21 i3025 (.D0(n3829), .D1(n3830), .SD(n[2]), .Z(n3832));
    L6MUX21 i2695 (.D0(n3499), .D1(n3500), .SD(window_count[2]), .Z(n3502));
    L6MUX21 i2919 (.D0(n3722), .D1(n3723), .SD(window_count[2]), .Z(n3726));
    L6MUX21 i2920 (.D0(n3724), .D1(n3725), .SD(window_count[2]), .Z(n3727));
    L6MUX21 i3084 (.D0(n3887), .D1(n3888), .SD(m[2]), .Z(n3891));
    L6MUX21 i2709 (.D0(n3512), .D1(n3513), .SD(m[2]), .Z(n3516));
    L6MUX21 i2710 (.D0(n3514), .D1(n3515), .SD(m[2]), .Z(n3517));
    L6MUX21 i3085 (.D0(n3889), .D1(n3890), .SD(m[2]), .Z(n3892));
    LUT4 i3047_3_lut (.A(subMean_window_10_8), .B(subMean_window_11_8), 
         .C(\m[0] ), .Z(n3854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3047_3_lut.init = 16'hcaca;
    L6MUX21 i2724 (.D0(n3527), .D1(n3528), .SD(window_count[2]), .Z(n3531));
    L6MUX21 i2499 (.D0(n3302), .D1(n3303), .SD(m[2]), .Z(n3306));
    L6MUX21 i2725 (.D0(n3529), .D1(n3530), .SD(window_count[2]), .Z(n3532));
    L6MUX21 i2500 (.D0(n3304), .D1(n3305), .SD(m[2]), .Z(n3307));
    L6MUX21 i2934 (.D0(n3737), .D1(n3738), .SD(n[2]), .Z(n3741));
    PFUMX i3038 (.BLUT(n3840), .ALUT(n3841), .C0(window_count[1]), .Z(n3845));
    PFUMX i2467 (.BLUT(n3268), .ALUT(n3269), .C0(n[1]), .Z(n3274));
    PFUMX i2735 (.BLUT(n3534), .ALUT(n3535), .C0(n[1]), .Z(n3542));
    PFUMX i2736 (.BLUT(n3536), .ALUT(n3537), .C0(n[1]), .Z(n3543));
    PFUMX i2468 (.BLUT(n3270), .ALUT(n3271), .C0(n[1]), .Z(n3275));
    PFUMX i2737 (.BLUT(n3538), .ALUT(n3539), .C0(n[1]), .Z(n3544));
    PFUMX i2738 (.BLUT(n3540), .ALUT(n3541), .C0(n[1]), .Z(n3545));
    PFUMX i2435 (.BLUT(n3234), .ALUT(n3235), .C0(window_count[1]), .Z(n3242));
    PFUMX i2945 (.BLUT(n3744), .ALUT(n3745), .C0(\m[1] ), .Z(n3752));
    PFUMX i2946 (.BLUT(n3746), .ALUT(n3747), .C0(\m[1] ), .Z(n3753));
    PFUMX i3050 (.BLUT(n3849), .ALUT(n3850), .C0(\m[1] ), .Z(n3857));
    LUT4 i3048_3_lut (.A(subMean_window_12_8), .B(subMean_window_13_8), 
         .C(\m[0] ), .Z(n3855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3048_3_lut.init = 16'hcaca;
    PFUMX i2947 (.BLUT(n3748), .ALUT(n3749), .C0(\m[1] ), .Z(n3754));
    PFUMX i2948 (.BLUT(n3750), .ALUT(n3751), .C0(\m[1] ), .Z(n3755));
    PFUMX i3051 (.BLUT(n3851), .ALUT(n3852), .C0(\m[1] ), .Z(n3858));
    PFUMX i2750 (.BLUT(n3549), .ALUT(n3550), .C0(window_count[1]), .Z(n3557));
    PFUMX i2751 (.BLUT(n3551), .ALUT(n3552), .C0(window_count[1]), .Z(n3558));
    PFUMX i2752 (.BLUT(n3553), .ALUT(n3554), .C0(window_count[1]), .Z(n3559));
    PFUMX i2753 (.BLUT(n3555), .ALUT(n3556), .C0(window_count[1]), .Z(n3560));
    PFUMX i2765 (.BLUT(n3564), .ALUT(n3565), .C0(\m[1] ), .Z(n3572));
    PFUMX i2766 (.BLUT(n3566), .ALUT(n3567), .C0(\m[1] ), .Z(n3573));
    PFUMX i2767 (.BLUT(n3568), .ALUT(n3569), .C0(\m[1] ), .Z(n3574));
    PFUMX i2768 (.BLUT(n3570), .ALUT(n3571), .C0(\m[1] ), .Z(n3575));
    PFUMX i3125 (.BLUT(n3924), .ALUT(n3925), .C0(\m[1] ), .Z(n3932));
    PFUMX i3126 (.BLUT(n3926), .ALUT(n3927), .C0(\m[1] ), .Z(n3933));
    PFUMX i3127 (.BLUT(n3928), .ALUT(n3929), .C0(\m[1] ), .Z(n3934));
    PFUMX i2780 (.BLUT(n3579), .ALUT(n3580), .C0(window_count[1]), .Z(n3587));
    PFUMX i3128 (.BLUT(n3930), .ALUT(n3931), .C0(\m[1] ), .Z(n3935));
    LUT4 i2729_3_lut (.A(subMean_window_4_9), .B(subMean_window_5_9), .C(n[0]), 
         .Z(n3536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2729_3_lut.init = 16'hcaca;
    PFUMX i2960 (.BLUT(n3759), .ALUT(n3760), .C0(n[1]), .Z(n3767));
    PFUMX i2781 (.BLUT(n3581), .ALUT(n3582), .C0(window_count[1]), .Z(n3588));
    PFUMX i2782 (.BLUT(n3583), .ALUT(n3584), .C0(window_count[1]), .Z(n3589));
    PFUMX i2783 (.BLUT(n3585), .ALUT(n3586), .C0(window_count[1]), .Z(n3590));
    PFUMX i2961 (.BLUT(n3761), .ALUT(n3762), .C0(n[1]), .Z(n3768));
    PFUMX i2962 (.BLUT(n3763), .ALUT(n3764), .C0(n[1]), .Z(n3769));
    PFUMX i2963 (.BLUT(n3765), .ALUT(n3766), .C0(n[1]), .Z(n3770));
    PFUMX i2795 (.BLUT(n3594), .ALUT(n3595), .C0(\m[1] ), .Z(n3602));
    PFUMX i2796 (.BLUT(n3596), .ALUT(n3597), .C0(\m[1] ), .Z(n3603));
    PFUMX i2797 (.BLUT(n3598), .ALUT(n3599), .C0(\m[1] ), .Z(n3604));
    PFUMX i2798 (.BLUT(n3600), .ALUT(n3601), .C0(\m[1] ), .Z(n3605));
    PFUMX i2436 (.BLUT(n3236), .ALUT(n3237), .C0(window_count[1]), .Z(n3243));
    PFUMX i2437 (.BLUT(n3238), .ALUT(n3239), .C0(window_count[1]), .Z(n3244));
    PFUMX i2438 (.BLUT(n3240), .ALUT(n3241), .C0(window_count[1]), .Z(n3245));
    PFUMX i2810 (.BLUT(n3609), .ALUT(n3610), .C0(window_count[1]), .Z(n3617));
    PFUMX i2811 (.BLUT(n3611), .ALUT(n3612), .C0(window_count[1]), .Z(n3618));
    LUT4 i2730_3_lut (.A(subMean_window_6_9), .B(subMean_window_7_9), .C(n[0]), 
         .Z(n3537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2730_3_lut.init = 16'hcaca;
    PFUMX i2812 (.BLUT(n3613), .ALUT(n3614), .C0(window_count[1]), .Z(n3619));
    PFUMX i3140 (.BLUT(n3939), .ALUT(n3940), .C0(n[1]), .Z(n3947));
    PFUMX i2813 (.BLUT(n3615), .ALUT(n3616), .C0(window_count[1]), .Z(n3620));
    PFUMX i3141 (.BLUT(n3941), .ALUT(n3942), .C0(n[1]), .Z(n3948));
    PFUMX i3142 (.BLUT(n3943), .ALUT(n3944), .C0(n[1]), .Z(n3949));
    PFUMX i2510 (.BLUT(n3309), .ALUT(n3310), .C0(n[1]), .Z(n3317));
    PFUMX i3143 (.BLUT(n3945), .ALUT(n3946), .C0(n[1]), .Z(n3950));
    PFUMX i2511 (.BLUT(n3311), .ALUT(n3312), .C0(n[1]), .Z(n3318));
    PFUMX i2825 (.BLUT(n3624), .ALUT(n3625), .C0(window_count[1]), .Z(n3632));
    PFUMX i2512 (.BLUT(n3313), .ALUT(n3314), .C0(n[1]), .Z(n3319));
    PFUMX i2975 (.BLUT(n3774), .ALUT(n3775), .C0(\m[1] ), .Z(n3782));
    PFUMX i2826 (.BLUT(n3626), .ALUT(n3627), .C0(window_count[1]), .Z(n3633));
    PFUMX i2513 (.BLUT(n3315), .ALUT(n3316), .C0(n[1]), .Z(n3320));
    PFUMX i2827 (.BLUT(n3628), .ALUT(n3629), .C0(window_count[1]), .Z(n3634));
    PFUMX i2828 (.BLUT(n3630), .ALUT(n3631), .C0(window_count[1]), .Z(n3635));
    PFUMX i2976 (.BLUT(n3776), .ALUT(n3777), .C0(\m[1] ), .Z(n3783));
    LUT4 i2463_3_lut (.A(subMean_window_12_6), .B(subMean_window_13_6), 
         .C(n[0]), .Z(n3270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2463_3_lut.init = 16'hcaca;
    PFUMX i2977 (.BLUT(n3778), .ALUT(n3779), .C0(\m[1] ), .Z(n3784));
    PFUMX i2541 (.BLUT(n3341), .ALUT(n3342), .C0(\m[1] ), .Z(n3348));
    PFUMX i2978 (.BLUT(n3780), .ALUT(n3781), .C0(\m[1] ), .Z(n3785));
    PFUMX i2542 (.BLUT(n3343), .ALUT(n3344), .C0(\m[1] ), .Z(n3349));
    PFUMX i2543 (.BLUT(n3345), .ALUT(n3346), .C0(\m[1] ), .Z(n3350));
    PFUMX i2840 (.BLUT(n3639), .ALUT(n3640), .C0(window_count[1]), .Z(n3647));
    PFUMX i2841 (.BLUT(n3641), .ALUT(n3642), .C0(window_count[1]), .Z(n3648));
    PFUMX i2842 (.BLUT(n3643), .ALUT(n3644), .C0(window_count[1]), .Z(n3649));
    PFUMX i2555 (.BLUT(n3354), .ALUT(n3355), .C0(n[1]), .Z(n3362));
    PFUMX i2556 (.BLUT(n3356), .ALUT(n3357), .C0(n[1]), .Z(n3363));
    PFUMX i2843 (.BLUT(n3645), .ALUT(n3646), .C0(window_count[1]), .Z(n3650));
    PFUMX i2557 (.BLUT(n3358), .ALUT(n3359), .C0(n[1]), .Z(n3364));
    PFUMX i2558 (.BLUT(n3360), .ALUT(n3361), .C0(n[1]), .Z(n3365));
    PFUMX i2570 (.BLUT(n3369), .ALUT(n3370), .C0(n[1]), .Z(n3377));
    PFUMX i2571 (.BLUT(n3371), .ALUT(n3372), .C0(n[1]), .Z(n3378));
    PFUMX i2572 (.BLUT(n3373), .ALUT(n3374), .C0(n[1]), .Z(n3379));
    LUT4 i3049_3_lut (.A(subMean_window_14_8), .B(subMean_window_15_8), 
         .C(\m[0] ), .Z(n3856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3049_3_lut.init = 16'hcaca;
    PFUMX i2573 (.BLUT(n3375), .ALUT(n3376), .C0(n[1]), .Z(n3380));
    PFUMX i3052 (.BLUT(n3853), .ALUT(n3854), .C0(\m[1] ), .Z(n3859));
    PFUMX i3053 (.BLUT(n3855), .ALUT(n3856), .C0(\m[1] ), .Z(n3860));
    PFUMX i2855 (.BLUT(n3654), .ALUT(n3655), .C0(window_count[1]), .Z(n3662));
    PFUMX i2585 (.BLUT(n3384), .ALUT(n3385), .C0(\m[1] ), .Z(n3392));
    PFUMX i2586 (.BLUT(n3386), .ALUT(n3387), .C0(\m[1] ), .Z(n3393));
    PFUMX i2856 (.BLUT(n3656), .ALUT(n3657), .C0(window_count[1]), .Z(n3663));
    PFUMX i2587 (.BLUT(n3388), .ALUT(n3389), .C0(\m[1] ), .Z(n3394));
    PFUMX i2588 (.BLUT(n3390), .ALUT(n3391), .C0(\m[1] ), .Z(n3395));
    PFUMX i2857 (.BLUT(n3658), .ALUT(n3659), .C0(window_count[1]), .Z(n3664));
    PFUMX i2858 (.BLUT(n3660), .ALUT(n3661), .C0(window_count[1]), .Z(n3665));
    PFUMX i2990 (.BLUT(n3789), .ALUT(n3790), .C0(n[1]), .Z(n3797));
    PFUMX i2600 (.BLUT(n3399), .ALUT(n3400), .C0(\m[1] ), .Z(n3407));
    PFUMX i2601 (.BLUT(n3401), .ALUT(n3402), .C0(\m[1] ), .Z(n3408));
    PFUMX i2602 (.BLUT(n3403), .ALUT(n3404), .C0(\m[1] ), .Z(n3409));
    PFUMX i2603 (.BLUT(n3405), .ALUT(n3406), .C0(\m[1] ), .Z(n3410));
    LUT4 i2847_3_lut (.A(subMean_window_0_4), .B(subMean_window_1_4), .C(window_count[0]), 
         .Z(n3654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2847_3_lut.init = 16'hcaca;
    PFUMX i2991 (.BLUT(n3791), .ALUT(n3792), .C0(n[1]), .Z(n3798));
    PFUMX i2992 (.BLUT(n3793), .ALUT(n3794), .C0(n[1]), .Z(n3799));
    PFUMX i2993 (.BLUT(n3795), .ALUT(n3796), .C0(n[1]), .Z(n3800));
    PFUMX i2615 (.BLUT(n3414), .ALUT(n3415), .C0(n[1]), .Z(n3422));
    PFUMX i2616 (.BLUT(n3416), .ALUT(n3417), .C0(n[1]), .Z(n3423));
    PFUMX i2617 (.BLUT(n3418), .ALUT(n3419), .C0(n[1]), .Z(n3424));
    PFUMX i2618 (.BLUT(n3420), .ALUT(n3421), .C0(n[1]), .Z(n3425));
    PFUMX i2870 (.BLUT(n3669), .ALUT(n3670), .C0(window_count[1]), .Z(n3677));
    PFUMX i2871 (.BLUT(n3671), .ALUT(n3672), .C0(window_count[1]), .Z(n3678));
    PFUMX i2872 (.BLUT(n3673), .ALUT(n3674), .C0(window_count[1]), .Z(n3679));
    PFUMX i2873 (.BLUT(n3675), .ALUT(n3676), .C0(window_count[1]), .Z(n3680));
    PFUMX i2630 (.BLUT(n3429), .ALUT(n3430), .C0(n[1]), .Z(n3437));
    PFUMX i2631 (.BLUT(n3431), .ALUT(n3432), .C0(n[1]), .Z(n3438));
    PFUMX i2632 (.BLUT(n3433), .ALUT(n3434), .C0(n[1]), .Z(n3439));
    PFUMX i2633 (.BLUT(n3435), .ALUT(n3436), .C0(n[1]), .Z(n3440));
    PFUMX i2645 (.BLUT(n3444), .ALUT(n3445), .C0(\m[1] ), .Z(n3452));
    LUT4 i2848_3_lut (.A(subMean_window_2_4), .B(subMean_window_3_4), .C(window_count[0]), 
         .Z(n3655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2848_3_lut.init = 16'hcaca;
    PFUMX i2646 (.BLUT(n3446), .ALUT(n3447), .C0(\m[1] ), .Z(n3453));
    PFUMX i2647 (.BLUT(n3448), .ALUT(n3449), .C0(\m[1] ), .Z(n3454));
    PFUMX i2648 (.BLUT(n3450), .ALUT(n3451), .C0(\m[1] ), .Z(n3455));
    PFUMX i3005 (.BLUT(n3804), .ALUT(n3805), .C0(\m[1] ), .Z(n3812));
    PFUMX i2885 (.BLUT(n3684), .ALUT(n3685), .C0(window_count[1]), .Z(n3692));
    PFUMX i3006 (.BLUT(n3806), .ALUT(n3807), .C0(\m[1] ), .Z(n3813));
    PFUMX i2886 (.BLUT(n3686), .ALUT(n3687), .C0(window_count[1]), .Z(n3693));
    LUT4 i2464_3_lut (.A(subMean_window_14_6), .B(subMean_window_15_6), 
         .C(n[0]), .Z(n3271)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2464_3_lut.init = 16'hcaca;
    PFUMX i3007 (.BLUT(n3808), .ALUT(n3809), .C0(\m[1] ), .Z(n3814));
    LUT4 i2731_3_lut (.A(subMean_window_8_9), .B(subMean_window_9_9), .C(n[0]), 
         .Z(n3538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2731_3_lut.init = 16'hcaca;
    PFUMX i2887 (.BLUT(n3688), .ALUT(n3689), .C0(window_count[1]), .Z(n3694));
    LUT4 i2732_3_lut (.A(subMean_window_10_9), .B(subMean_window_11_9), 
         .C(n[0]), .Z(n3539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2732_3_lut.init = 16'hcaca;
    PFUMX i2660 (.BLUT(n3459), .ALUT(n3460), .C0(window_count[1]), .Z(n3467));
    PFUMX i2661 (.BLUT(n3461), .ALUT(n3462), .C0(window_count[1]), .Z(n3468));
    PFUMX i2888 (.BLUT(n3690), .ALUT(n3691), .C0(window_count[1]), .Z(n3695));
    PFUMX i2662 (.BLUT(n3463), .ALUT(n3464), .C0(window_count[1]), .Z(n3469));
    PFUMX i2663 (.BLUT(n3465), .ALUT(n3466), .C0(window_count[1]), .Z(n3470));
    PFUMX i3008 (.BLUT(n3810), .ALUT(n3811), .C0(\m[1] ), .Z(n3815));
    PFUMX i3065 (.BLUT(n3864), .ALUT(n3865), .C0(n[1]), .Z(n3872));
    PFUMX i2480 (.BLUT(n3279), .ALUT(n3280), .C0(\m[1] ), .Z(n3287));
    PFUMX i2481 (.BLUT(n3281), .ALUT(n3282), .C0(\m[1] ), .Z(n3288));
    PFUMX i2482 (.BLUT(n3283), .ALUT(n3284), .C0(\m[1] ), .Z(n3289));
    PFUMX i2483 (.BLUT(n3285), .ALUT(n3286), .C0(\m[1] ), .Z(n3290));
    PFUMX i2450 (.BLUT(n3249), .ALUT(n3250), .C0(n[1]), .Z(n3257));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module zcr
//

module zcr (fifo_read_clk, zcr_valid_left_c, fifo_read_clk_enable_293, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input fifo_read_clk;
    output zcr_valid_left_c;
    input fifo_read_clk_enable_293;
    input GND_net;
    
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    wire [3:0]n37;
    
    wire window_count_6__N_558;
    wire [3:0]n21;
    wire [6:0]window_count;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(20[11:23])
    
    wire n2984, n2983;
    
    FD1S3IX window_count_101_102__i0 (.D(n21[0]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(n37[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102__i0.GSR = "ENABLED";
    OFS1P3DX zcr_valid_209 (.D(window_count_6__N_558), .SP(fifo_read_clk_enable_293), 
            .SCLK(fifo_read_clk), .CD(GND_net), .Q(zcr_valid_left_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(30[3] 41[6])
    defparam zcr_valid_209.GSR = "DISABLED";
    FD1S3IX window_count_101_102__i3 (.D(n21[3]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102__i3.GSR = "ENABLED";
    FD1S3IX window_count_101_102__i2 (.D(n21[2]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102__i2.GSR = "ENABLED";
    FD1S3IX window_count_101_102__i1 (.D(n21[1]), .CK(fifo_read_clk), .CD(window_count_6__N_558), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102__i1.GSR = "ENABLED";
    LUT4 i2079_3_lut (.A(window_count[1]), .B(window_count[3]), .C(window_count[2]), 
         .Z(window_count_6__N_558)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2079_3_lut.init = 16'hc8c8;
    CCU2D window_count_101_102_add_4_5 (.A0(window_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2984), .S0(n21[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102_add_4_5.INIT0 = 16'hfaaa;
    defparam window_count_101_102_add_4_5.INIT1 = 16'h0000;
    defparam window_count_101_102_add_4_5.INJECT1_0 = "NO";
    defparam window_count_101_102_add_4_5.INJECT1_1 = "NO";
    CCU2D window_count_101_102_add_4_3 (.A0(window_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2983), .COUT(n2984), .S0(n21[1]), 
          .S1(n21[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102_add_4_3.INIT0 = 16'hfaaa;
    defparam window_count_101_102_add_4_3.INIT1 = 16'hfaaa;
    defparam window_count_101_102_add_4_3.INJECT1_0 = "NO";
    defparam window_count_101_102_add_4_3.INJECT1_1 = "NO";
    CCU2D window_count_101_102_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n37[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2983), .S1(n21[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/zcr.v(33[18:32])
    defparam window_count_101_102_add_4_1.INIT0 = 16'hF000;
    defparam window_count_101_102_add_4_1.INIT1 = 16'h0555;
    defparam window_count_101_102_add_4_1.INJECT1_0 = "NO";
    defparam window_count_101_102_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module fifo_right
//

module fifo_right (\right_out_15__N_17[15] , \right_out_15__N_17[14] , \right_out_15__N_17[13] , 
            \right_out_15__N_17[12] , \right_out_15__N_17[11] , \right_out_15__N_17[10] , 
            \right_out_15__N_17[9] , \right_out_15__N_17[8] , \right_out_15__N_17[7] , 
            \right_out_15__N_17[6] , \right_out_15__N_17[5] , \right_out_15__N_17[4] , 
            \right_out_15__N_17[3] , \right_out_15__N_17[2] , \right_out_15__N_17[1] , 
            \right_out_15__N_17[0] , o_sck_c, fifo_read_clk, o_right_vld_c, 
            VCC_net, rst_c, GND_net, \right_out[14] , \right_out[13] , 
            \right_out[12] , \right_out[11] , \right_out[10] , \right_out[9] , 
            \right_out[8] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input \right_out_15__N_17[15] ;
    input \right_out_15__N_17[14] ;
    input \right_out_15__N_17[13] ;
    input \right_out_15__N_17[12] ;
    input \right_out_15__N_17[11] ;
    input \right_out_15__N_17[10] ;
    input \right_out_15__N_17[9] ;
    input \right_out_15__N_17[8] ;
    input \right_out_15__N_17[7] ;
    input \right_out_15__N_17[6] ;
    input \right_out_15__N_17[5] ;
    input \right_out_15__N_17[4] ;
    input \right_out_15__N_17[3] ;
    input \right_out_15__N_17[2] ;
    input \right_out_15__N_17[1] ;
    input \right_out_15__N_17[0] ;
    input o_sck_c;
    input fifo_read_clk;
    input o_right_vld_c;
    input VCC_net;
    input rst_c;
    input GND_net;
    output \right_out[14] ;
    output \right_out[13] ;
    output \right_out[12] ;
    output \right_out[11] ;
    output \right_out[10] ;
    output \right_out[9] ;
    output \right_out[8] ;
    
    wire o_sck_c /* synthesis is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(20[32:37])
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire Empty, Full;
    
    FIFO8KB fifo_right_0_0 (.DI0(\right_out_15__N_17[0] ), .DI1(\right_out_15__N_17[1] ), 
            .DI2(\right_out_15__N_17[2] ), .DI3(\right_out_15__N_17[3] ), 
            .DI4(\right_out_15__N_17[4] ), .DI5(\right_out_15__N_17[5] ), 
            .DI6(\right_out_15__N_17[6] ), .DI7(\right_out_15__N_17[7] ), 
            .DI8(\right_out_15__N_17[8] ), .DI9(\right_out_15__N_17[9] ), 
            .DI10(\right_out_15__N_17[10] ), .DI11(\right_out_15__N_17[11] ), 
            .DI12(\right_out_15__N_17[12] ), .DI13(\right_out_15__N_17[13] ), 
            .DI14(\right_out_15__N_17[14] ), .DI15(\right_out_15__N_17[15] ), 
            .DI16(GND_net), .DI17(GND_net), .FULLI(Full), .EMPTYI(Empty), 
            .CSW1(VCC_net), .CSW0(VCC_net), .CSR1(VCC_net), .CSR0(VCC_net), 
            .WE(o_right_vld_c), .RE(VCC_net), .ORE(VCC_net), .CLKW(o_sck_c), 
            .CLKR(fifo_read_clk), .RST(rst_c), .RPRST(GND_net), .DO0(\right_out[9] ), 
            .DO1(\right_out[10] ), .DO2(\right_out[11] ), .DO3(\right_out[12] ), 
            .DO4(\right_out[13] ), .DO5(\right_out[14] ), .DO17(\right_out[8] ), 
            .EF(Empty), .FF(Full)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=6, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=57, LSE_RLINE=59 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(57[13] 59[20])
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
// Verilog Description of module ste
//

module ste (fifo_read_clk, ste_c, fifo_read_clk_enable_293, GND_net, 
            ste_valid_c, rst_c, lock, i_sys_rst, VCC_net, \right_out[14] , 
            \right_out[13] , \right_out[12] , \right_out[11] , \right_out[10] , 
            \right_out[9] , \right_out[8] ) /* synthesis syn_module_defined=1 */ ;
    input fifo_read_clk;
    output ste_c;
    input fifo_read_clk_enable_293;
    input GND_net;
    output ste_valid_c;
    input rst_c;
    input lock;
    output i_sys_rst;
    input VCC_net;
    input \right_out[14] ;
    input \right_out[13] ;
    input \right_out[12] ;
    input \right_out[11] ;
    input \right_out[10] ;
    input \right_out[9] ;
    input \right_out[8] ;
    
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    wire [6:0]window_count;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(17[11:23])
    
    wire window_count_6__N_662;
    wire [3:0]n21;
    wire [30:0]sum;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(20[12:15])
    
    wire fifo_read_clk_enable_30, sum_30__N_656;
    wire [30:0]n589;
    
    wire fifo_read_clk_enable_36;
    wire [30:0]n96;
    
    wire n743, n2994, n2993, n443;
    wire [14:0]square;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(16[13:19])
    
    wire n3060, n3059, n3058, n3057, n3056, n3055, n3054, n3053, 
        n3052, n3051, n3050, n3049, n3048, n3047, n3046, n3044, 
        n3043, n3042, n3041, n3040, n3039, n3038, n3037, n3036, 
        n3035, n3034, n3033, n3032, n3031, n3030;
    
    FD1S3IX window_count_103_104__i3 (.D(n21[2]), .CK(fifo_read_clk), .CD(window_count_6__N_662), 
            .Q(window_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104__i3.GSR = "ENABLED";
    FD1S3IX window_count_103_104__i2 (.D(n21[1]), .CK(fifo_read_clk), .CD(window_count_6__N_662), 
            .Q(window_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104__i2.GSR = "ENABLED";
    FD1P3IX sum__i30 (.D(n589[30]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[30])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i30.GSR = "ENABLED";
    FD1P3IX sum__i29 (.D(n589[29]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[29])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i29.GSR = "ENABLED";
    FD1P3IX sum__i28 (.D(n589[28]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[28])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i28.GSR = "ENABLED";
    FD1P3IX sum__i27 (.D(n589[27]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[27])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i27.GSR = "ENABLED";
    FD1P3IX sum__i26 (.D(n589[26]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[26])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i26.GSR = "ENABLED";
    FD1P3IX sum__i25 (.D(n589[25]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i25.GSR = "ENABLED";
    FD1P3IX sum__i24 (.D(n589[24]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i24.GSR = "ENABLED";
    FD1P3IX sum__i23 (.D(n589[23]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i23.GSR = "ENABLED";
    FD1P3IX sum__i22 (.D(n589[22]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i22.GSR = "ENABLED";
    FD1P3IX sum__i21 (.D(n589[21]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i21.GSR = "ENABLED";
    FD1P3IX sum__i20 (.D(n589[20]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i20.GSR = "ENABLED";
    FD1P3IX sum__i19 (.D(n589[19]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i19.GSR = "ENABLED";
    FD1P3IX sum__i18 (.D(n589[18]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i18.GSR = "ENABLED";
    FD1P3IX sum__i17 (.D(n589[17]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i17.GSR = "ENABLED";
    FD1P3IX sum__i16 (.D(n589[16]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i16.GSR = "ENABLED";
    FD1P3IX sum__i15 (.D(n589[15]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i15.GSR = "ENABLED";
    FD1P3IX sum__i14 (.D(n96[14]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i14.GSR = "ENABLED";
    FD1P3IX sum__i13 (.D(n589[13]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i13.GSR = "ENABLED";
    FD1P3IX sum__i12 (.D(n589[12]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i12.GSR = "ENABLED";
    FD1P3IX sum__i11 (.D(n589[11]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i11.GSR = "ENABLED";
    FD1P3IX sum__i10 (.D(n589[10]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i10.GSR = "ENABLED";
    FD1P3IX sum__i9 (.D(n589[9]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i9.GSR = "ENABLED";
    FD1P3IX sum__i8 (.D(n589[8]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i8.GSR = "ENABLED";
    FD1P3IX sum__i7 (.D(n589[7]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i7.GSR = "ENABLED";
    FD1P3IX sum__i6 (.D(n589[6]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i6.GSR = "ENABLED";
    FD1P3IX sum__i5 (.D(n589[5]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i5.GSR = "ENABLED";
    FD1P3IX sum__i4 (.D(n589[4]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i4.GSR = "ENABLED";
    FD1P3IX sum__i3 (.D(n589[3]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i3.GSR = "ENABLED";
    FD1P3IX sum__i2 (.D(n589[2]), .SP(fifo_read_clk_enable_30), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i2.GSR = "ENABLED";
    FD1P3IX sum__i1 (.D(n589[1]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i1.GSR = "ENABLED";
    LUT4 i1352_4_lut_rep_18 (.A(window_count[3]), .B(window_count[1]), .C(window_count[0]), 
         .D(window_count[2]), .Z(fifo_read_clk_enable_30)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C+(D))+!B (D)))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(17[11:23])
    defparam i1352_4_lut_rep_18.init = 16'h556a;
    LUT4 i1_2_lut_4_lut_4_lut (.A(window_count[3]), .B(window_count[1]), 
         .C(window_count[0]), .D(window_count[2]), .Z(fifo_read_clk_enable_36)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B (C+(D))+!B ((D)+!C)))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(17[11:23])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h556b;
    FD1S3IX window_count_103_104__i4 (.D(n21[3]), .CK(fifo_read_clk), .CD(window_count_6__N_662), 
            .Q(window_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104__i4.GSR = "ENABLED";
    OFS1P3DX ste_197 (.D(n743), .SP(fifo_read_clk_enable_293), .SCLK(fifo_read_clk), 
            .CD(GND_net), .Q(ste_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(27[3] 42[6])
    defparam ste_197.GSR = "DISABLED";
    CCU2D window_count_103_104_add_4_5 (.A0(window_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2994), .S0(n21[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104_add_4_5.INIT0 = 16'hfaaa;
    defparam window_count_103_104_add_4_5.INIT1 = 16'h0000;
    defparam window_count_103_104_add_4_5.INJECT1_0 = "NO";
    defparam window_count_103_104_add_4_5.INJECT1_1 = "NO";
    OFS1P3DX ste_valid_198 (.D(window_count_6__N_662), .SP(fifo_read_clk_enable_293), 
            .SCLK(fifo_read_clk), .CD(GND_net), .Q(ste_valid_c));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(27[3] 42[6])
    defparam ste_valid_198.GSR = "DISABLED";
    FD1P3IX sum__i0 (.D(n589[0]), .SP(fifo_read_clk_enable_36), .CD(sum_30__N_656), 
            .CK(fifo_read_clk), .Q(sum[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=78, LSE_RLINE=84 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(62[8] 65[10])
    defparam sum__i0.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(window_count[2]), .B(window_count[3]), .C(window_count[1]), 
         .Z(window_count_6__N_662)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(17[11:23])
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut (.A(rst_c), .B(lock), .Z(i_sys_rst)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(19[29:32])
    defparam i1_2_lut.init = 16'hbbbb;
    CCU2D window_count_103_104_add_4_3 (.A0(window_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(window_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2993), .COUT(n2994), .S0(n21[1]), 
          .S1(n21[2]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104_add_4_3.INIT0 = 16'hfaaa;
    defparam window_count_103_104_add_4_3.INIT1 = 16'hfaaa;
    defparam window_count_103_104_add_4_3.INJECT1_0 = "NO";
    defparam window_count_103_104_add_4_3.INJECT1_1 = "NO";
    CCU2D window_count_103_104_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(window_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2993), .S1(n21[0]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104_add_4_1.INIT0 = 16'hF000;
    defparam window_count_103_104_add_4_1.INIT1 = 16'h0555;
    defparam window_count_103_104_add_4_1.INJECT1_0 = "NO";
    defparam window_count_103_104_add_4_1.INJECT1_1 = "NO";
    FD1S3IX window_count_103_104__i1 (.D(n21[0]), .CK(fifo_read_clk), .CD(window_count_6__N_662), 
            .Q(window_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(30[17:31])
    defparam window_count_103_104__i1.GSR = "ENABLED";
    LUT4 i3518_2_lut_4_lut (.A(window_count[1]), .B(window_count[3]), .C(window_count[0]), 
         .D(window_count[2]), .Z(sum_30__N_656)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3518_2_lut_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_adj_26 (.A(rst_c), .B(n443), .C(window_count_6__N_662), 
         .Z(n743)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1_3_lut_adj_26.init = 16'h3232;
    LUT4 i2331_2_lut (.A(sum[0]), .B(square[0]), .Z(n589[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2331_2_lut.init = 16'h6666;
    CCU2D add_191_32 (.A0(sum[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3060), 
          .S0(n589[30]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_32.INIT0 = 16'h5aaa;
    defparam add_191_32.INIT1 = 16'h0000;
    defparam add_191_32.INJECT1_0 = "NO";
    defparam add_191_32.INJECT1_1 = "NO";
    CCU2D add_191_30 (.A0(sum[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3059), 
          .COUT(n3060), .S0(n589[28]), .S1(n589[29]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_30.INIT0 = 16'h5aaa;
    defparam add_191_30.INIT1 = 16'h5aaa;
    defparam add_191_30.INJECT1_0 = "NO";
    defparam add_191_30.INJECT1_1 = "NO";
    CCU2D add_191_28 (.A0(sum[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3058), 
          .COUT(n3059), .S0(n589[26]), .S1(n589[27]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_28.INIT0 = 16'h5aaa;
    defparam add_191_28.INIT1 = 16'h5aaa;
    defparam add_191_28.INJECT1_0 = "NO";
    defparam add_191_28.INJECT1_1 = "NO";
    CCU2D add_191_26 (.A0(sum[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3057), 
          .COUT(n3058), .S0(n589[24]), .S1(n589[25]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_26.INIT0 = 16'h5aaa;
    defparam add_191_26.INIT1 = 16'h5aaa;
    defparam add_191_26.INJECT1_0 = "NO";
    defparam add_191_26.INJECT1_1 = "NO";
    CCU2D add_191_24 (.A0(sum[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3056), 
          .COUT(n3057), .S0(n589[22]), .S1(n589[23]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_24.INIT0 = 16'h5aaa;
    defparam add_191_24.INIT1 = 16'h5aaa;
    defparam add_191_24.INJECT1_0 = "NO";
    defparam add_191_24.INJECT1_1 = "NO";
    CCU2D add_191_22 (.A0(sum[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3055), 
          .COUT(n3056), .S0(n589[20]), .S1(n589[21]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_22.INIT0 = 16'h5aaa;
    defparam add_191_22.INIT1 = 16'h5aaa;
    defparam add_191_22.INJECT1_0 = "NO";
    defparam add_191_22.INJECT1_1 = "NO";
    CCU2D add_191_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3054), 
          .COUT(n3055), .S0(n589[18]), .S1(n589[19]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_20.INIT0 = 16'h5aaa;
    defparam add_191_20.INIT1 = 16'h5aaa;
    defparam add_191_20.INJECT1_0 = "NO";
    defparam add_191_20.INJECT1_1 = "NO";
    CCU2D add_191_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3053), 
          .COUT(n3054), .S0(n589[16]), .S1(n589[17]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_18.INIT0 = 16'h5aaa;
    defparam add_191_18.INIT1 = 16'h5aaa;
    defparam add_191_18.INJECT1_0 = "NO";
    defparam add_191_18.INJECT1_1 = "NO";
    CCU2D add_191_16 (.A0(sum[14]), .B0(square[14]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3052), 
          .COUT(n3053), .S0(n96[14]), .S1(n589[15]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_16.INIT0 = 16'h5666;
    defparam add_191_16.INIT1 = 16'h5aaa;
    defparam add_191_16.INJECT1_0 = "NO";
    defparam add_191_16.INJECT1_1 = "NO";
    CCU2D add_191_14 (.A0(sum[12]), .B0(square[12]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[13]), .B1(square[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3051), .COUT(n3052), .S0(n589[12]), .S1(n589[13]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_14.INIT0 = 16'h5666;
    defparam add_191_14.INIT1 = 16'h5666;
    defparam add_191_14.INJECT1_0 = "NO";
    defparam add_191_14.INJECT1_1 = "NO";
    CCU2D add_191_12 (.A0(sum[10]), .B0(square[10]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[11]), .B1(square[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3050), .COUT(n3051), .S0(n589[10]), .S1(n589[11]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_12.INIT0 = 16'h5666;
    defparam add_191_12.INIT1 = 16'h5666;
    defparam add_191_12.INJECT1_0 = "NO";
    defparam add_191_12.INJECT1_1 = "NO";
    CCU2D add_191_10 (.A0(sum[8]), .B0(square[8]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[9]), .B1(square[9]), .C1(GND_net), .D1(GND_net), .CIN(n3049), 
          .COUT(n3050), .S0(n589[8]), .S1(n589[9]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_10.INIT0 = 16'h5666;
    defparam add_191_10.INIT1 = 16'h5666;
    defparam add_191_10.INJECT1_0 = "NO";
    defparam add_191_10.INJECT1_1 = "NO";
    CCU2D add_191_8 (.A0(sum[6]), .B0(square[6]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[7]), .B1(square[7]), .C1(GND_net), .D1(GND_net), .CIN(n3048), 
          .COUT(n3049), .S0(n589[6]), .S1(n589[7]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_8.INIT0 = 16'h5666;
    defparam add_191_8.INIT1 = 16'h5666;
    defparam add_191_8.INJECT1_0 = "NO";
    defparam add_191_8.INJECT1_1 = "NO";
    CCU2D add_191_6 (.A0(sum[4]), .B0(square[4]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[5]), .B1(square[5]), .C1(GND_net), .D1(GND_net), .CIN(n3047), 
          .COUT(n3048), .S0(n589[4]), .S1(n589[5]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_6.INIT0 = 16'h5666;
    defparam add_191_6.INIT1 = 16'h5666;
    defparam add_191_6.INJECT1_0 = "NO";
    defparam add_191_6.INJECT1_1 = "NO";
    CCU2D add_191_4 (.A0(sum[2]), .B0(square[2]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[3]), .B1(square[3]), .C1(GND_net), .D1(GND_net), .CIN(n3046), 
          .COUT(n3047), .S0(n589[2]), .S1(n589[3]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_4.INIT0 = 16'h5666;
    defparam add_191_4.INIT1 = 16'h5666;
    defparam add_191_4.INJECT1_0 = "NO";
    defparam add_191_4.INJECT1_1 = "NO";
    CCU2D add_191_2 (.A0(sum[0]), .B0(square[0]), .C0(GND_net), .D0(GND_net), 
          .A1(sum[1]), .B1(square[1]), .C1(GND_net), .D1(GND_net), .COUT(n3046), 
          .S1(n589[1]));   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(64[10:20])
    defparam add_191_2.INIT0 = 16'h7000;
    defparam add_191_2.INIT1 = 16'h5666;
    defparam add_191_2.INJECT1_0 = "NO";
    defparam add_191_2.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_32 (.A0(sum[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3044), 
          .S1(n443));
    defparam sub_71_add_2_32.INIT0 = 16'h5555;
    defparam sub_71_add_2_32.INIT1 = 16'h0000;
    defparam sub_71_add_2_32.INJECT1_0 = "NO";
    defparam sub_71_add_2_32.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_30 (.A0(sum[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3043), 
          .COUT(n3044));
    defparam sub_71_add_2_30.INIT0 = 16'h5555;
    defparam sub_71_add_2_30.INIT1 = 16'h5555;
    defparam sub_71_add_2_30.INJECT1_0 = "NO";
    defparam sub_71_add_2_30.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_28 (.A0(sum[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3042), 
          .COUT(n3043));
    defparam sub_71_add_2_28.INIT0 = 16'h5555;
    defparam sub_71_add_2_28.INIT1 = 16'h5555;
    defparam sub_71_add_2_28.INJECT1_0 = "NO";
    defparam sub_71_add_2_28.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_26 (.A0(sum[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3041), 
          .COUT(n3042));
    defparam sub_71_add_2_26.INIT0 = 16'h5555;
    defparam sub_71_add_2_26.INIT1 = 16'h5555;
    defparam sub_71_add_2_26.INJECT1_0 = "NO";
    defparam sub_71_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_24 (.A0(sum[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3040), 
          .COUT(n3041));
    defparam sub_71_add_2_24.INIT0 = 16'h5555;
    defparam sub_71_add_2_24.INIT1 = 16'h5555;
    defparam sub_71_add_2_24.INJECT1_0 = "NO";
    defparam sub_71_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_22 (.A0(sum[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3039), 
          .COUT(n3040));
    defparam sub_71_add_2_22.INIT0 = 16'h5555;
    defparam sub_71_add_2_22.INIT1 = 16'h5555;
    defparam sub_71_add_2_22.INJECT1_0 = "NO";
    defparam sub_71_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_20 (.A0(sum[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3038), 
          .COUT(n3039));
    defparam sub_71_add_2_20.INIT0 = 16'h5555;
    defparam sub_71_add_2_20.INIT1 = 16'h5555;
    defparam sub_71_add_2_20.INJECT1_0 = "NO";
    defparam sub_71_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_18 (.A0(sum[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3037), 
          .COUT(n3038));
    defparam sub_71_add_2_18.INIT0 = 16'h5555;
    defparam sub_71_add_2_18.INIT1 = 16'h5555;
    defparam sub_71_add_2_18.INJECT1_0 = "NO";
    defparam sub_71_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_16 (.A0(sum[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3036), 
          .COUT(n3037));
    defparam sub_71_add_2_16.INIT0 = 16'h5555;
    defparam sub_71_add_2_16.INIT1 = 16'h5555;
    defparam sub_71_add_2_16.INJECT1_0 = "NO";
    defparam sub_71_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_14 (.A0(sum[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3035), 
          .COUT(n3036));
    defparam sub_71_add_2_14.INIT0 = 16'h5555;
    defparam sub_71_add_2_14.INIT1 = 16'h5555;
    defparam sub_71_add_2_14.INJECT1_0 = "NO";
    defparam sub_71_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_12 (.A0(sum[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3034), 
          .COUT(n3035));
    defparam sub_71_add_2_12.INIT0 = 16'h5555;
    defparam sub_71_add_2_12.INIT1 = 16'h5555;
    defparam sub_71_add_2_12.INJECT1_0 = "NO";
    defparam sub_71_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_10 (.A0(sum[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3033), 
          .COUT(n3034));
    defparam sub_71_add_2_10.INIT0 = 16'h5555;
    defparam sub_71_add_2_10.INIT1 = 16'h5555;
    defparam sub_71_add_2_10.INJECT1_0 = "NO";
    defparam sub_71_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_8 (.A0(sum[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3032), 
          .COUT(n3033));
    defparam sub_71_add_2_8.INIT0 = 16'h5555;
    defparam sub_71_add_2_8.INIT1 = 16'h5555;
    defparam sub_71_add_2_8.INJECT1_0 = "NO";
    defparam sub_71_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_6 (.A0(sum[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3031), 
          .COUT(n3032));
    defparam sub_71_add_2_6.INIT0 = 16'h5555;
    defparam sub_71_add_2_6.INIT1 = 16'h5555;
    defparam sub_71_add_2_6.INJECT1_0 = "NO";
    defparam sub_71_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_4 (.A0(sum[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3030), 
          .COUT(n3031));
    defparam sub_71_add_2_4.INIT0 = 16'h5555;
    defparam sub_71_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_71_add_2_4.INJECT1_0 = "NO";
    defparam sub_71_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sum[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3030));
    defparam sub_71_add_2_2.INIT0 = 16'h0000;
    defparam sub_71_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_71_add_2_2.INJECT1_0 = "NO";
    defparam sub_71_add_2_2.INJECT1_1 = "NO";
    squares sq1 (.square({square}), .fifo_read_clk(fifo_read_clk), .VCC_net(VCC_net), 
            .\right_out[14] (\right_out[14] ), .\right_out[13] (\right_out[13] ), 
            .\right_out[12] (\right_out[12] ), .\right_out[11] (\right_out[11] ), 
            .\right_out[10] (\right_out[10] ), .\right_out[9] (\right_out[9] ), 
            .\right_out[8] (\right_out[8] )) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    
endmodule
//
// Verilog Description of module squares
//

module squares (square, fifo_read_clk, VCC_net, \right_out[14] , \right_out[13] , 
            \right_out[12] , \right_out[11] , \right_out[10] , \right_out[9] , 
            \right_out[8] ) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output [14:0]square;
    input fifo_read_clk;
    input VCC_net;
    input \right_out[14] ;
    input \right_out[13] ;
    input \right_out[12] ;
    input \right_out[11] ;
    input \right_out[10] ;
    input \right_out[9] ;
    input \right_out[8] ;
    
    wire fifo_read_clk /* synthesis SET_AS_NETWORK=fifo_read_clk, is_clock=1 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/top.v(49[24:37])
    
    wire qdataout12_ffin, qdataout11_ffin, qdataout10_ffin, qdataout9_ffin, 
        qdataout8_ffin, qdataout7_ffin, qdataout6_ffin, qdataout5_ffin, 
        qdataout4_ffin, qdataout3_ffin, qdataout2_ffin, qdataout1_ffin, 
        qdataout0_ffin, qdataout14_ffin, qdataout13_ffin;
    
    FD1P3AX FF_12 (.D(qdataout12_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(39[13] 40[31])
    defparam FF_12.GSR = "ENABLED";
    FD1P3AX FF_11 (.D(qdataout11_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(43[13] 44[31])
    defparam FF_11.GSR = "ENABLED";
    FD1P3AX FF_10 (.D(qdataout10_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(47[13] 48[31])
    defparam FF_10.GSR = "ENABLED";
    FD1P3AX FF_9 (.D(qdataout9_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(51[13] 52[18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3AX FF_8 (.D(qdataout8_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(55[13] 56[18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3AX FF_7 (.D(qdataout7_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(59[13] 60[18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3AX FF_6 (.D(qdataout6_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(63[13] 64[18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3AX FF_5 (.D(qdataout5_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(67[13] 68[18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3AX FF_4 (.D(qdataout4_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(71[13] 72[18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3AX FF_3 (.D(qdataout3_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(75[13] 76[18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3AX FF_2 (.D(qdataout2_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(79[13] 80[18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3AX FF_1 (.D(qdataout1_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(83[13] 84[18])
    defparam FF_1.GSR = "ENABLED";
    FD1P3AX FF_0 (.D(qdataout0_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(87[13] 88[18])
    defparam FF_0.GSR = "ENABLED";
    FD1P3AX FF_14 (.D(qdataout14_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(31[13] 32[31])
    defparam FF_14.GSR = "ENABLED";
    ROM128X1A mem_0_14 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout14_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_14.initval = 128'b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_13 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout13_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_13.initval = 128'b01111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_12 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout12_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_12.initval = 128'b01111111111111111100000000000000000000111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_11 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout11_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_11.initval = 128'b01111111100000000011111111100000000000111111111111000000000000000111111111111111111000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_10 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout10_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_10.initval = 128'b01111000011110000011110000011111100000111111000000111111100000000111111110000000000111111111111110000000000000000000000000000000;
    ROM128X1A mem_0_9 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout9_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_9.initval = 128'b01100110011001100011001110011100011000111000111000111000011110000111100001111100000111111000000001111111110000000000000000000000;
    ROM128X1A mem_0_8 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout8_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_8.initval = 128'b01010101010101011010101101011010010110100100100110110110011001100110011001100011100111000111100001111000001111111000000000000000;
    ROM128X1A mem_0_7 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_7.initval = 128'b00000000000011110000111000110011001100110110110100101101010101010101010101011010010110110110011001100110001110000111100000000000;
    ROM128X1A mem_0_6 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_6.initval = 128'b00000000111100110011001011010101010101011010011001100111100000000000000011110011001100101101010101010101101001100110011110000000;
    ROM128X1A mem_0_5 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_5.initval = 128'b00000011001101010101011001100000000000110011010101010110011000000000001100110101010101100110000000000011001101010101011001100000;
    ROM128X1A mem_0_4 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_4.initval = 128'b00001101010110000000110101011000000011010101100000001101010110000000110101011000000011010101100000001101010110000000110101011000;
    ROM128X1A mem_0_3 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_3.initval = 128'b00010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100000101000001010000010100;
    ROM128X1A mem_0_2 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_2.initval = 128'b00100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010;
    ROM128X1A mem_0_1 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_1.initval = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM128X1A mem_0_0 (.AD0(\right_out[8] ), .AD1(\right_out[9] ), .AD2(\right_out[10] ), 
            .AD3(\right_out[11] ), .AD4(\right_out[12] ), .AD5(\right_out[13] ), 
            .AD6(\right_out[14] ), .DO0(qdataout0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/ste.v(56[9:94])
    defparam mem_0_0.initval = 128'b01010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101;
    FD1P3AX FF_13 (.D(qdataout13_ffin), .SP(VCC_net), .CK(fifo_read_clk), 
            .Q(square[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=9, LSE_RCOL=94, LSE_LLINE=56, LSE_RLINE=56 */ ;   // d:/uiuc/2017_spring/ece_396/i2s_fifo_zcr_ste_tb/squares.v(35[13] 36[31])
    defparam FF_13.GSR = "ENABLED";
    
endmodule
