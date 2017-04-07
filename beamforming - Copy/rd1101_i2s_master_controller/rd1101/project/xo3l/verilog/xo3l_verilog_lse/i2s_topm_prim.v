// Verilog netlist produced by program LSE :  version Diamond Version 3.4.0.80
// Netlist written on Sat Feb 18 14:09:43 2017
//
// Verilog Description of module i2s_topm
//

module i2s_topm (wb_clk_i, wb_rst_i, wb_sel_i, wb_stb_i, wb_we_i, 
            wb_cyc_i, wb_bte_i, wb_cti_i, wb_adr_i, wb_dat_i, i2s_sd_i, 
            wb_ack_o, wb_dat_o, rx_int_o, i2s_sck_o, i2s_ws_o, tx_int_o, 
            i2s_sd_o) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(115[8:16])
    input wb_clk_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    input wb_rst_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(128[8:16])
    input wb_sel_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(129[8:16])
    input wb_stb_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(130[8:16])
    input wb_we_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(131[8:15])
    input wb_cyc_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(132[8:16])
    input [1:0]wb_bte_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(133[14:22])
    input [2:0]wb_cti_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(134[14:22])
    input [5:0]wb_adr_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    input [15:0]wb_dat_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    input i2s_sd_i;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(137[8:16])
    output wb_ack_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(138[9:17])
    output [15:0]wb_dat_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    output rx_int_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(140[9:17])
    output i2s_sck_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(141[9:18])
    output i2s_ws_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(142[9:17])
    output tx_int_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(143[9:17])
    output i2s_sd_o;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(144[9:17])
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    wire n2733 /* synthesis nomerge= */ ;
    wire [15:0]event_hap;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(135[27:36])
    
    wire wb_rst_i_c, wb_sel_i_c, wb_stb_i_c, wb_we_i_c, wb_cyc_i_c, 
        wb_bte_i_c_1, wb_bte_i_c_0, wb_cti_i_c_2, wb_cti_i_c_1, wb_cti_i_c_0, 
        wb_adr_i_c_5, wb_adr_i_c_4, wb_adr_i_c_3, wb_adr_i_c_2, wb_adr_i_c_1, 
        wb_adr_i_c_0, wb_dat_i_c_15, wb_dat_i_c_14, wb_dat_i_c_13, wb_dat_i_c_12, 
        wb_dat_i_c_11, wb_dat_i_c_10, wb_dat_i_c_9, wb_dat_i_c_8, wb_dat_i_c_7, 
        wb_dat_i_c_6, wb_dat_i_c_5, wb_dat_i_c_4, wb_dat_i_c_3, wb_dat_i_c_2, 
        wb_dat_i_c_1, wb_dat_i_c_0, i2s_sd_i_c, wb_ack_o_c, wb_dat_o_c_15, 
        wb_dat_o_c_14, wb_dat_o_c_13, wb_dat_o_c_12, wb_dat_o_c_11, 
        wb_dat_o_c_10, wb_dat_o_c_9, wb_dat_o_c_8, wb_dat_o_c_7, wb_dat_o_c_6, 
        wb_dat_o_c_5, wb_dat_o_c_4, wb_dat_o_c_3, wb_dat_o_c_2, wb_dat_o_c_1, 
        wb_dat_o_c_0, rx_int_o_c, i2s_sck_o_c, i2s_ws_o_c;
    wire [15:0]data_out;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(146[28:36])
    
    wire config_rd, config_wr;
    wire [15:0]config_bits;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(149[28:39])
    wire [15:0]intstat_events;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(151[28:42])
    
    wire mem_wr_receiver, mem_rd_receiver;
    wire [4:0]sbuf_rd_adr;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(156[28:39])
    wire [4:0]sbuf_wr_adr;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(156[41:52])
    wire [15:0]sbuf_dout;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(157[28:37])
    wire [15:0]sbuf_din;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(157[39:47])
    wire [15:0]n33_adj_71;
    wire [15:0]n2737;
    
    wire VCC_net;
    wire [15:0]evt_internal;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(141[26:38])
    
    wire n5, n2525, n5_adj_45, n488, n2690, n1359, n1741, n2681, 
        n8, n4, n2528;
    
    VHI i8 (.Z(VCC_net));
    LUT4 mux_5_i11_4_lut (.A(n33_adj_71[10]), .B(sbuf_dout[10]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i11_4_lut.init = 16'hcac0;
    LUT4 mux_5_i10_4_lut (.A(n33_adj_71[9]), .B(sbuf_dout[9]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i10_4_lut.init = 16'hcac0;
    LUT4 mux_5_i9_4_lut (.A(n33_adj_71[8]), .B(sbuf_dout[8]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i9_4_lut.init = 16'hcac0;
    LUT4 mux_5_i8_4_lut (.A(n33_adj_71[7]), .B(sbuf_dout[7]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i8_4_lut.init = 16'hcac0;
    LUT4 mux_5_i7_4_lut (.A(n33_adj_71[6]), .B(sbuf_dout[6]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i7_4_lut.init = 16'hcac0;
    LUT4 mux_5_i6_4_lut (.A(n33_adj_71[5]), .B(sbuf_dout[5]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i6_4_lut.init = 16'hcac0;
    LUT4 mux_5_i5_4_lut (.A(n33_adj_71[4]), .B(sbuf_dout[4]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i5_4_lut.init = 16'hcac0;
    LUT4 mux_5_i4_4_lut (.A(n33_adj_71[3]), .B(sbuf_dout[3]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i4_4_lut.init = 16'hcac0;
    LUT4 mux_5_i3_4_lut (.A(n33_adj_71[2]), .B(sbuf_dout[2]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i3_4_lut.init = 16'hcac0;
    LUT4 mux_5_i2_3_lut (.A(n2737[1]), .B(sbuf_dout[1]), .C(wb_adr_i_c_5), 
         .Z(data_out[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i2_3_lut.init = 16'hcaca;
    LUT4 or_4_i2_4_lut (.A(n33_adj_71[1]), .B(evt_internal[1]), .C(config_rd), 
         .D(n2525), .Z(n2737[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[59:87])
    defparam or_4_i2_4_lut.init = 16'heca0;
    gen_event_reg RECEIVER_ISTAT (.\evt_internal[1] (evt_internal[1]), .\intstat_events[1] (intstat_events[1]), 
            .wb_dat_i_c_1(wb_dat_i_c_1), .n2528(n2528), .\evt_internal[0] (evt_internal[0]), 
            .wb_clk_i_c(wb_clk_i_c), .n887(n33_adj_71[1]), .n885(n33_adj_71[3]), 
            .n884(n33_adj_71[4]), .\intstat_events[0] (intstat_events[0]), 
            .wb_dat_i_c_0(wb_dat_i_c_0), .rx_int_o_c(rx_int_o_c), .VCC_net(VCC_net), 
            .GND_net(event_hap[15])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(257[6] 268[6])
    LUT4 mux_5_i1_3_lut (.A(n2737[0]), .B(sbuf_dout[0]), .C(wb_adr_i_c_5), 
         .Z(data_out[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i1_3_lut.init = 16'hcaca;
    OB wb_ack_o_pad (.I(wb_ack_o_c), .O(wb_ack_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(138[9:17])
    LUT4 i987_1_lut (.A(wb_rst_i_c), .Z(n1359)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(128[8:16])
    defparam i987_1_lut.init = 16'h5555;
    LUT4 mux_5_i16_4_lut (.A(n33_adj_71[15]), .B(sbuf_dout[15]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i16_4_lut.init = 16'hcac0;
    LUT4 mux_5_i15_4_lut (.A(n33_adj_71[14]), .B(sbuf_dout[14]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i15_4_lut.init = 16'hcac0;
    LUT4 mux_5_i14_4_lut (.A(n33_adj_71[13]), .B(sbuf_dout[13]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i14_4_lut.init = 16'hcac0;
    LUT4 mux_5_i13_4_lut (.A(n33_adj_71[12]), .B(sbuf_dout[12]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i13_4_lut.init = 16'hcac0;
    LUT4 mux_5_i12_4_lut (.A(n33_adj_71[11]), .B(sbuf_dout[11]), .C(wb_adr_i_c_5), 
         .D(config_rd), .Z(data_out[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[23:97])
    defparam mux_5_i12_4_lut.init = 16'hcac0;
    LUT4 m1_lut (.Z(n2733)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    rx_i2s_wbd RECEIVER_WB (.wb_clk_i_c(wb_clk_i_c), .data_out({data_out}), 
            .sbuf_dout({sbuf_dout}), .wb_adr_i_c_5(wb_adr_i_c_5), .wb_dat_o_c_14(wb_dat_o_c_14), 
            .wb_dat_o_c_13(wb_dat_o_c_13), .wb_dat_o_c_12(wb_dat_o_c_12), 
            .wb_dat_o_c_11(wb_dat_o_c_11), .wb_dat_o_c_10(wb_dat_o_c_10), 
            .wb_dat_o_c_9(wb_dat_o_c_9), .wb_dat_o_c_8(wb_dat_o_c_8), .wb_dat_o_c_7(wb_dat_o_c_7), 
            .wb_dat_o_c_6(wb_dat_o_c_6), .wb_dat_o_c_5(wb_dat_o_c_5), .wb_dat_o_c_4(wb_dat_o_c_4), 
            .wb_ack_o_c(wb_ack_o_c), .wb_adr_i_c_0(wb_adr_i_c_0), .wb_dat_o_c_3(wb_dat_o_c_3), 
            .sbuf_rd_adr({sbuf_rd_adr}), .wb_adr_i_c_1(wb_adr_i_c_1), .wb_dat_o_c_2(wb_dat_o_c_2), 
            .wb_we_i_c(wb_we_i_c), .wb_bte_i_c_0(wb_bte_i_c_0), .wb_cti_i_c_2(wb_cti_i_c_2), 
            .wb_cti_i_c_0(wb_cti_i_c_0), .wb_dat_o_c_1(wb_dat_o_c_1), .wb_dat_o_c_0(wb_dat_o_c_0), 
            .wb_adr_i_c_3(wb_adr_i_c_3), .wb_dat_o_c_15(wb_dat_o_c_15), 
            .wb_adr_i_c_2(wb_adr_i_c_2), .wb_adr_i_c_4(wb_adr_i_c_4), .n2528(n2528), 
            .GND_net(event_hap[15]), .config_wr(config_wr), .wb_cti_i_c_1(wb_cti_i_c_1), 
            .wb_bte_i_c_1(wb_bte_i_c_1), .mem_rd_receiver(mem_rd_receiver), 
            .n2525(n2525), .config_rd(config_rd), .wb_stb_i_c(wb_stb_i_c), 
            .wb_sel_i_c(wb_sel_i_c), .wb_cyc_i_c(wb_cyc_i_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(180[8] 200[9])
    VLO i1 (.Z(event_hap[15]));
    LUT4 or_4_i1_4_lut (.A(n33_adj_71[0]), .B(evt_internal[0]), .C(config_rd), 
         .D(n2525), .Z(n2737[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(169[59:87])
    defparam or_4_i1_4_lut.init = 16'heca0;
    OB wb_dat_o_pad_15 (.I(wb_dat_o_c_15), .O(wb_dat_o[15]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_14 (.I(wb_dat_o_c_14), .O(wb_dat_o[14]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_13 (.I(wb_dat_o_c_13), .O(wb_dat_o[13]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_12 (.I(wb_dat_o_c_12), .O(wb_dat_o[12]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_11 (.I(wb_dat_o_c_11), .O(wb_dat_o[11]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_10 (.I(wb_dat_o_c_10), .O(wb_dat_o[10]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_9 (.I(wb_dat_o_c_9), .O(wb_dat_o[9]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_8 (.I(wb_dat_o_c_8), .O(wb_dat_o[8]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_7 (.I(wb_dat_o_c_7), .O(wb_dat_o[7]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_6 (.I(wb_dat_o_c_6), .O(wb_dat_o[6]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_5 (.I(wb_dat_o_c_5), .O(wb_dat_o[5]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_4 (.I(wb_dat_o_c_4), .O(wb_dat_o[4]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_3 (.I(wb_dat_o_c_3), .O(wb_dat_o[3]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_2 (.I(wb_dat_o_c_2), .O(wb_dat_o[2]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_1 (.I(wb_dat_o_c_1), .O(wb_dat_o[1]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB wb_dat_o_pad_0 (.I(wb_dat_o_c_0), .O(wb_dat_o[0]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(139[28:36])
    OB rx_int_o_pad (.I(rx_int_o_c), .O(rx_int_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(140[9:17])
    OB i2s_sck_o_pad (.I(i2s_sck_o_c), .O(i2s_sck_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(141[9:18])
    OB i2s_ws_o_pad (.I(i2s_ws_o_c), .O(i2s_ws_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(142[9:17])
    OBZ tx_int_o_pad (.I(event_hap[15]), .T(VCC_net), .O(tx_int_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(143[9:17])
    OBZ i2s_sd_o_pad (.I(event_hap[15]), .T(VCC_net), .O(i2s_sd_o));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(144[9:17])
    GSR GSR_INST (.GSR(n1359));
    IB wb_clk_i_pad (.I(wb_clk_i), .O(wb_clk_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    IB wb_rst_i_pad (.I(wb_rst_i), .O(wb_rst_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(128[8:16])
    IB wb_sel_i_pad (.I(wb_sel_i), .O(wb_sel_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(129[8:16])
    IB wb_stb_i_pad (.I(wb_stb_i), .O(wb_stb_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(130[8:16])
    IB wb_we_i_pad (.I(wb_we_i), .O(wb_we_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(131[8:15])
    IB wb_cyc_i_pad (.I(wb_cyc_i), .O(wb_cyc_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(132[8:16])
    IB wb_bte_i_pad_1 (.I(wb_bte_i[1]), .O(wb_bte_i_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(133[14:22])
    IB wb_bte_i_pad_0 (.I(wb_bte_i[0]), .O(wb_bte_i_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(133[14:22])
    IB wb_cti_i_pad_2 (.I(wb_cti_i[2]), .O(wb_cti_i_c_2));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(134[14:22])
    IB wb_cti_i_pad_1 (.I(wb_cti_i[1]), .O(wb_cti_i_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(134[14:22])
    IB wb_cti_i_pad_0 (.I(wb_cti_i[0]), .O(wb_cti_i_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(134[14:22])
    IB wb_adr_i_pad_5 (.I(wb_adr_i[5]), .O(wb_adr_i_c_5));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_adr_i_pad_4 (.I(wb_adr_i[4]), .O(wb_adr_i_c_4));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_adr_i_pad_3 (.I(wb_adr_i[3]), .O(wb_adr_i_c_3));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_adr_i_pad_2 (.I(wb_adr_i[2]), .O(wb_adr_i_c_2));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_adr_i_pad_1 (.I(wb_adr_i[1]), .O(wb_adr_i_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_adr_i_pad_0 (.I(wb_adr_i[0]), .O(wb_adr_i_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(135[27:35])
    IB wb_dat_i_pad_15 (.I(wb_dat_i[15]), .O(wb_dat_i_c_15));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_14 (.I(wb_dat_i[14]), .O(wb_dat_i_c_14));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_13 (.I(wb_dat_i[13]), .O(wb_dat_i_c_13));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_12 (.I(wb_dat_i[12]), .O(wb_dat_i_c_12));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_11 (.I(wb_dat_i[11]), .O(wb_dat_i_c_11));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_10 (.I(wb_dat_i[10]), .O(wb_dat_i_c_10));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_9 (.I(wb_dat_i[9]), .O(wb_dat_i_c_9));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_8 (.I(wb_dat_i[8]), .O(wb_dat_i_c_8));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_7 (.I(wb_dat_i[7]), .O(wb_dat_i_c_7));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_6 (.I(wb_dat_i[6]), .O(wb_dat_i_c_6));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_5 (.I(wb_dat_i[5]), .O(wb_dat_i_c_5));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_4 (.I(wb_dat_i[4]), .O(wb_dat_i_c_4));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_3 (.I(wb_dat_i[3]), .O(wb_dat_i_c_3));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_2 (.I(wb_dat_i[2]), .O(wb_dat_i_c_2));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_1 (.I(wb_dat_i[1]), .O(wb_dat_i_c_1));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB wb_dat_i_pad_0 (.I(wb_dat_i[0]), .O(wb_dat_i_c_0));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(136[27:35])
    IB i2s_sd_i_pad (.I(i2s_sd_i), .O(i2s_sd_i_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(137[8:16])
    \i2s_codec(IS_RECEIVER=1)  RECEIVER_DEC (.sbuf_din({sbuf_din}), .i2s_sd_i_c(i2s_sd_i_c), 
            .wb_clk_i_c(wb_clk_i_c), .n488(n488), .n4(n4), .n2733(n2733), 
            .i2s_sck_o_c(i2s_sck_o_c), .\intstat_events[0] (intstat_events[0]), 
            .\config_bits[0] (config_bits[0]), .i2s_ws_o_c(i2s_ws_o_c), 
            .sbuf_wr_adr({sbuf_wr_adr}), .\intstat_events[1] (intstat_events[1]), 
            .n5(n5_adj_45), .n5_adj_2(n5), .n8(n8), .\config_bits[9] (config_bits[9]), 
            .n1741(n1741), .GND_net(event_hap[15]), .\config_bits[13] (config_bits[13]), 
            .\config_bits[14] (config_bits[14]), .\config_bits[15] (config_bits[15]), 
            .mem_wr_receiver(mem_wr_receiver), .\config_bits[2] (config_bits[2]), 
            .\config_bits[12] (config_bits[12]), .\config_bits[11] (config_bits[11]), 
            .\config_bits[6] (config_bits[6]), .\config_bits[5] (config_bits[5]), 
            .n2690(n2690), .\config_bits[7] (config_bits[7]), .n2681(n2681), 
            .\config_bits[8] (config_bits[8])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(334[6] 350[6])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    dpram RECEIVER_MEM (.wb_clk_i_c(wb_clk_i_c), .mem_wr_receiver(mem_wr_receiver), 
          .mem_rd_receiver(mem_rd_receiver), .GND_net(event_hap[15]), .VCC_net(VCC_net), 
          .sbuf_wr_adr({sbuf_wr_adr}), .sbuf_rd_adr({sbuf_rd_adr}), .sbuf_din({sbuf_din}), 
          .sbuf_dout({sbuf_dout})) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(297[7] 306[8])
    gen_control_reg CONF (.n33({n33_adj_71}), .wb_clk_i_c(wb_clk_i_c), .config_wr(config_wr), 
            .wb_dat_i_c_0(wb_dat_i_c_0), .GND_net(event_hap[15]), .\config_bits[0] (config_bits[0]), 
            .\config_bits[6] (config_bits[6]), .\config_bits[9] (config_bits[9]), 
            .n1741(n1741), .\config_bits[5] (config_bits[5]), .\config_bits[7] (config_bits[7]), 
            .\config_bits[8] (config_bits[8]), .wb_dat_i_c_15(wb_dat_i_c_15), 
            .wb_dat_i_c_14(wb_dat_i_c_14), .wb_dat_i_c_13(wb_dat_i_c_13), 
            .wb_dat_i_c_12(wb_dat_i_c_12), .wb_dat_i_c_11(wb_dat_i_c_11), 
            .wb_dat_i_c_10(wb_dat_i_c_10), .wb_dat_i_c_9(wb_dat_i_c_9), 
            .wb_dat_i_c_8(wb_dat_i_c_8), .wb_dat_i_c_7(wb_dat_i_c_7), .wb_dat_i_c_6(wb_dat_i_c_6), 
            .wb_dat_i_c_5(wb_dat_i_c_5), .wb_dat_i_c_4(wb_dat_i_c_4), .wb_dat_i_c_3(wb_dat_i_c_3), 
            .wb_dat_i_c_2(wb_dat_i_c_2), .wb_dat_i_c_1(wb_dat_i_c_1), .\config_bits[2] (config_bits[2]), 
            .\config_bits[11] (config_bits[11]), .\config_bits[12] (config_bits[12]), 
            .\config_bits[13] (config_bits[13]), .\config_bits[14] (config_bits[14]), 
            .\config_bits[15] (config_bits[15]), .n488(n488), .n2681(n2681), 
            .n5(n5_adj_45), .n2690(n2690), .n5_adj_1(n5), .n8(n8), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(232[4] 241[5])
    
endmodule
//
// Verilog Description of module gen_event_reg
//

module gen_event_reg (\evt_internal[1] , \intstat_events[1] , wb_dat_i_c_1, 
            n2528, \evt_internal[0] , wb_clk_i_c, n887, n885, n884, 
            \intstat_events[0] , wb_dat_i_c_0, rx_int_o_c, VCC_net, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output \evt_internal[1] ;
    input \intstat_events[1] ;
    input wb_dat_i_c_1;
    input n2528;
    output \evt_internal[0] ;
    input wb_clk_i_c;
    input n887;
    input n885;
    input n884;
    input \intstat_events[0] ;
    input wb_dat_i_c_0;
    output rx_int_o_c;
    input VCC_net;
    input GND_net;
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    
    wire n1183, n1187, n2, n57;
    
    LUT4 i1470_4_lut (.A(\evt_internal[1] ), .B(\intstat_events[1] ), .C(wb_dat_i_c_1), 
         .D(n2528), .Z(n1183)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(168[19] 180[13])
    defparam i1470_4_lut.init = 16'hceee;
    FD1S3AX evt0_26 (.D(n1187), .CK(wb_clk_i_c), .Q(\evt_internal[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=257, LSE_RLINE=268 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(168[19] 180[13])
    defparam evt0_26.GSR = "ENABLED";
    FD1S3AX evt1_27 (.D(n1183), .CK(wb_clk_i_c), .Q(\evt_internal[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=257, LSE_RLINE=268 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(168[19] 180[13])
    defparam evt1_27.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(\evt_internal[0] ), .B(n887), .C(n2), .D(n885), 
         .Z(n57)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(156[14:67])
    defparam i9_4_lut.init = 16'hc8c0;
    LUT4 and_5_i2_2_lut (.A(\evt_internal[1] ), .B(n884), .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(156[15:40])
    defparam and_5_i2_2_lut.init = 16'h8888;
    LUT4 i1467_4_lut (.A(\evt_internal[0] ), .B(\intstat_events[0] ), .C(wb_dat_i_c_0), 
         .D(n2528), .Z(n1187)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(168[19] 180[13])
    defparam i1467_4_lut.init = 16'hceee;
    OFS1P3DX evt_irq_25 (.D(n57), .SP(VCC_net), .SCLK(wb_clk_i_c), .CD(GND_net), 
            .Q(rx_int_o_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=257, LSE_RLINE=268 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v(155[7] 160[13])
    defparam evt_irq_25.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module rx_i2s_wbd
//

module rx_i2s_wbd (wb_clk_i_c, data_out, sbuf_dout, wb_adr_i_c_5, wb_dat_o_c_14, 
            wb_dat_o_c_13, wb_dat_o_c_12, wb_dat_o_c_11, wb_dat_o_c_10, 
            wb_dat_o_c_9, wb_dat_o_c_8, wb_dat_o_c_7, wb_dat_o_c_6, 
            wb_dat_o_c_5, wb_dat_o_c_4, wb_ack_o_c, wb_adr_i_c_0, wb_dat_o_c_3, 
            sbuf_rd_adr, wb_adr_i_c_1, wb_dat_o_c_2, wb_we_i_c, wb_bte_i_c_0, 
            wb_cti_i_c_2, wb_cti_i_c_0, wb_dat_o_c_1, wb_dat_o_c_0, 
            wb_adr_i_c_3, wb_dat_o_c_15, wb_adr_i_c_2, wb_adr_i_c_4, 
            n2528, GND_net, config_wr, wb_cti_i_c_1, wb_bte_i_c_1, 
            mem_rd_receiver, n2525, config_rd, wb_stb_i_c, wb_sel_i_c, 
            wb_cyc_i_c) /* synthesis syn_module_defined=1 */ ;
    input wb_clk_i_c;
    input [15:0]data_out;
    input [15:0]sbuf_dout;
    input wb_adr_i_c_5;
    output wb_dat_o_c_14;
    output wb_dat_o_c_13;
    output wb_dat_o_c_12;
    output wb_dat_o_c_11;
    output wb_dat_o_c_10;
    output wb_dat_o_c_9;
    output wb_dat_o_c_8;
    output wb_dat_o_c_7;
    output wb_dat_o_c_6;
    output wb_dat_o_c_5;
    output wb_dat_o_c_4;
    output wb_ack_o_c;
    input wb_adr_i_c_0;
    output wb_dat_o_c_3;
    output [4:0]sbuf_rd_adr;
    input wb_adr_i_c_1;
    output wb_dat_o_c_2;
    input wb_we_i_c;
    input wb_bte_i_c_0;
    input wb_cti_i_c_2;
    input wb_cti_i_c_0;
    output wb_dat_o_c_1;
    output wb_dat_o_c_0;
    input wb_adr_i_c_3;
    output wb_dat_o_c_15;
    input wb_adr_i_c_2;
    input wb_adr_i_c_4;
    output n2528;
    input GND_net;
    output config_wr;
    input wb_cti_i_c_1;
    input wb_bte_i_c_1;
    output mem_rd_receiver;
    output n2525;
    output config_rd;
    input wb_stb_i_c;
    input wb_sel_i_c;
    input wb_cyc_i_c;
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    wire [15:0]rdout;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(163[28:33])
    wire [7:0]acnt;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(161[13:17])
    
    wire n2687, n2519, n613, n283, n2685;
    wire [7:0]n113;
    
    wire n277, n10, n2679, n278, n2699, n279, n2705, n1864, 
        n2684, n280, n2678, n281, n690, n282, iwr, n2551, n1856, 
        n2315, n2303, n6, n2511, n10_adj_44, n2295, n2294, n20, 
        n2293, n2292, n2545;
    
    FD1S3AX rdout_i0 (.D(data_out[0]), .CK(wb_clk_i_c), .Q(rdout[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i0.GSR = "DISABLED";
    LUT4 mux_40_i15_3_lut (.A(rdout[14]), .B(sbuf_dout[14]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i15_3_lut.init = 16'hcaca;
    LUT4 mux_40_i14_3_lut (.A(rdout[13]), .B(sbuf_dout[13]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i14_3_lut.init = 16'hcaca;
    LUT4 mux_40_i13_3_lut (.A(rdout[12]), .B(sbuf_dout[12]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i13_3_lut.init = 16'hcaca;
    LUT4 mux_40_i12_3_lut (.A(rdout[11]), .B(sbuf_dout[11]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i12_3_lut.init = 16'hcaca;
    LUT4 mux_40_i11_3_lut (.A(rdout[10]), .B(sbuf_dout[10]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i11_3_lut.init = 16'hcaca;
    LUT4 mux_40_i10_3_lut (.A(rdout[9]), .B(sbuf_dout[9]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i10_3_lut.init = 16'hcaca;
    LUT4 mux_40_i9_3_lut (.A(rdout[8]), .B(sbuf_dout[8]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i9_3_lut.init = 16'hcaca;
    LUT4 mux_40_i8_3_lut (.A(rdout[7]), .B(sbuf_dout[7]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i8_3_lut.init = 16'hcaca;
    LUT4 mux_40_i7_3_lut (.A(rdout[6]), .B(sbuf_dout[6]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i7_3_lut.init = 16'hcaca;
    LUT4 mux_40_i6_3_lut (.A(rdout[5]), .B(sbuf_dout[5]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i6_3_lut.init = 16'hcaca;
    FD1P3AX acnt__i7 (.D(n2519), .SP(n2687), .CK(wb_clk_i_c), .Q(acnt[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i7.GSR = "ENABLED";
    FD1P3IX acnt__i6 (.D(n283), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i6.GSR = "ENABLED";
    LUT4 mux_40_i5_3_lut (.A(rdout[4]), .B(sbuf_dout[4]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i5_3_lut.init = 16'hcaca;
    LUT4 mux_69_i1_3_lut_4_lut (.A(wb_ack_o_c), .B(n2685), .C(wb_adr_i_c_0), 
         .D(n113[0]), .Z(n277)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C))) */ ;
    defparam mux_69_i1_3_lut_4_lut.init = 16'hef01;
    LUT4 mux_40_i4_3_lut (.A(rdout[3]), .B(sbuf_dout[3]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i4_3_lut.init = 16'hcaca;
    LUT4 mux_48_i1_3_lut_4_lut (.A(wb_ack_o_c), .B(n2687), .C(acnt[0]), 
         .D(wb_adr_i_c_0), .Z(sbuf_rd_adr[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(226[18:51])
    defparam mux_48_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_48_i2_3_lut_4_lut (.A(wb_ack_o_c), .B(n2687), .C(acnt[1]), 
         .D(wb_adr_i_c_1), .Z(sbuf_rd_adr[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(226[18:51])
    defparam mux_48_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i3_3_lut (.A(rdout[2]), .B(sbuf_dout[2]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i3_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(wb_we_i_c), .B(wb_bte_i_c_0), .C(wb_cti_i_c_2), 
         .D(wb_cti_i_c_0), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(176[20:25])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 mux_40_i2_3_lut (.A(rdout[1]), .B(sbuf_dout[1]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i2_3_lut.init = 16'hcaca;
    LUT4 mux_40_i1_3_lut (.A(rdout[0]), .B(sbuf_dout[0]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i1_3_lut.init = 16'hcaca;
    LUT4 mux_48_i4_3_lut_4_lut (.A(wb_ack_o_c), .B(n2687), .C(acnt[3]), 
         .D(wb_adr_i_c_3), .Z(sbuf_rd_adr[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(226[18:51])
    defparam mux_48_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_40_i16_3_lut (.A(rdout[15]), .B(sbuf_dout[15]), .C(wb_adr_i_c_5), 
         .Z(wb_dat_o_c_15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(220[19:69])
    defparam mux_40_i16_3_lut.init = 16'hcaca;
    LUT4 mux_48_i3_3_lut_4_lut (.A(wb_ack_o_c), .B(n2687), .C(acnt[2]), 
         .D(wb_adr_i_c_2), .Z(sbuf_rd_adr[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(226[18:51])
    defparam mux_48_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_48_i5_3_lut_4_lut (.A(wb_ack_o_c), .B(n2687), .C(acnt[4]), 
         .D(wb_adr_i_c_4), .Z(sbuf_rd_adr[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(226[18:51])
    defparam mux_48_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_69_i2_4_lut (.A(n113[1]), .B(wb_adr_i_c_1), .C(n2679), .D(wb_adr_i_c_0), 
         .Z(n278)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i2_4_lut.init = 16'ha3ac;
    LUT4 mux_69_i3_4_lut (.A(n113[2]), .B(wb_adr_i_c_2), .C(n2679), .D(n2699), 
         .Z(n279)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i3_4_lut.init = 16'ha3ac;
    FD1S3IX iack_83 (.D(n1864), .CK(wb_clk_i_c), .CD(n2705), .Q(wb_ack_o_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(171[16] 191[10])
    defparam iack_83.GSR = "ENABLED";
    LUT4 mux_69_i4_4_lut (.A(n113[3]), .B(wb_adr_i_c_3), .C(n2679), .D(n2684), 
         .Z(n280)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i4_4_lut.init = 16'ha3ac;
    LUT4 mux_69_i5_4_lut (.A(n113[4]), .B(wb_adr_i_c_4), .C(n2679), .D(n2678), 
         .Z(n281)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i5_4_lut.init = 16'ha3ac;
    LUT4 mux_69_i6_4_lut (.A(n113[5]), .B(wb_adr_i_c_5), .C(n2679), .D(n690), 
         .Z(n282)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i6_4_lut.init = 16'ha3ac;
    LUT4 i1488_2_lut (.A(iwr), .B(n2551), .Z(n1856)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1488_2_lut.init = 16'h8888;
    LUT4 i275_4_lut (.A(n2687), .B(n2685), .C(n2315), .D(wb_ack_o_c), 
         .Z(n613)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam i275_4_lut.init = 16'ha088;
    LUT4 i3_4_lut (.A(n2303), .B(acnt[5]), .C(acnt[6]), .D(acnt[7]), 
         .Z(n2315)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_20 (.A(acnt[2]), .B(acnt[4]), .C(acnt[3]), .D(n6), 
         .Z(n2303)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_20.init = 16'h8000;
    LUT4 i1_2_lut (.A(acnt[0]), .B(acnt[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(wb_adr_i_c_0), .B(n2511), .C(iwr), .Z(n2528)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(254[19:46])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i4_4_lut_adj_21 (.A(wb_adr_i_c_3), .B(wb_adr_i_c_4), .C(wb_adr_i_c_0), 
         .D(wb_adr_i_c_1), .Z(n10_adj_44)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_21.init = 16'h8000;
    LUT4 mux_69_i7_4_lut (.A(n113[6]), .B(wb_adr_i_c_5), .C(n2679), .D(n690), 
         .Z(n283)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(242[22] 248[16])
    defparam mux_69_i7_4_lut.init = 16'haca0;
    FD1S3AX rdout_i15 (.D(data_out[15]), .CK(wb_clk_i_c), .Q(rdout[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i15.GSR = "DISABLED";
    FD1S3AX rdout_i14 (.D(data_out[14]), .CK(wb_clk_i_c), .Q(rdout[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i14.GSR = "DISABLED";
    FD1S3AX rdout_i13 (.D(data_out[13]), .CK(wb_clk_i_c), .Q(rdout[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i13.GSR = "DISABLED";
    FD1S3AX rdout_i12 (.D(data_out[12]), .CK(wb_clk_i_c), .Q(rdout[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i12.GSR = "DISABLED";
    FD1S3AX rdout_i11 (.D(data_out[11]), .CK(wb_clk_i_c), .Q(rdout[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i11.GSR = "DISABLED";
    FD1S3AX rdout_i10 (.D(data_out[10]), .CK(wb_clk_i_c), .Q(rdout[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i10.GSR = "DISABLED";
    FD1S3AX rdout_i9 (.D(data_out[9]), .CK(wb_clk_i_c), .Q(rdout[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i9.GSR = "DISABLED";
    FD1S3AX rdout_i8 (.D(data_out[8]), .CK(wb_clk_i_c), .Q(rdout[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i8.GSR = "DISABLED";
    FD1S3AX rdout_i7 (.D(data_out[7]), .CK(wb_clk_i_c), .Q(rdout[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i7.GSR = "DISABLED";
    FD1S3AX rdout_i6 (.D(data_out[6]), .CK(wb_clk_i_c), .Q(rdout[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i6.GSR = "DISABLED";
    FD1S3AX rdout_i5 (.D(data_out[5]), .CK(wb_clk_i_c), .Q(rdout[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i5.GSR = "DISABLED";
    FD1S3AX rdout_i4 (.D(data_out[4]), .CK(wb_clk_i_c), .Q(rdout[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i4.GSR = "DISABLED";
    FD1S3AX rdout_i3 (.D(data_out[3]), .CK(wb_clk_i_c), .Q(rdout[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i3.GSR = "DISABLED";
    FD1S3AX rdout_i2 (.D(data_out[2]), .CK(wb_clk_i_c), .Q(rdout[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i2.GSR = "DISABLED";
    FD1S3AX rdout_i1 (.D(data_out[1]), .CK(wb_clk_i_c), .Q(rdout[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(222[7] 223[28])
    defparam rdout_i1.GSR = "DISABLED";
    CCU2D add_59_9 (.A0(acnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2295), 
          .S0(n113[7]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(244[27:35])
    defparam add_59_9.INIT0 = 16'h5aaa;
    defparam add_59_9.INIT1 = 16'h0000;
    defparam add_59_9.INJECT1_0 = "NO";
    defparam add_59_9.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_22 (.A(wb_adr_i_c_5), .B(wb_adr_i_c_2), .C(wb_adr_i_c_3), 
         .D(wb_adr_i_c_1), .Z(n2511)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(254[19:46])
    defparam i3_4_lut_adj_22.init = 16'hfffe;
    LUT4 i338_2_lut_3_lut_4_lut (.A(wb_adr_i_c_2), .B(n2699), .C(wb_adr_i_c_4), 
         .D(wb_adr_i_c_3), .Z(n690)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i338_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(wb_adr_i_c_0), .B(n2511), .C(iwr), 
         .Z(config_wr)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(254[19:46])
    defparam i1_2_lut_3_lut_adj_23.init = 16'h1010;
    LUT4 i5_3_lut_rep_38 (.A(wb_adr_i_c_5), .B(n10_adj_44), .C(wb_adr_i_c_2), 
         .Z(n2685)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut_rep_38.init = 16'h8080;
    LUT4 i1484_2_lut_rep_32_4_lut (.A(wb_adr_i_c_5), .B(n10_adj_44), .C(wb_adr_i_c_2), 
         .D(wb_ack_o_c), .Z(n2679)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i1484_2_lut_rep_32_4_lut.init = 16'hff80;
    CCU2D add_59_7 (.A0(acnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(acnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2294), 
          .COUT(n2295), .S0(n113[5]), .S1(n113[6]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(244[27:35])
    defparam add_59_7.INIT0 = 16'h5aaa;
    defparam add_59_7.INIT1 = 16'h5aaa;
    defparam add_59_7.INJECT1_0 = "NO";
    defparam add_59_7.INJECT1_1 = "NO";
    FD1P3IX acnt__i0 (.D(n277), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i0.GSR = "ENABLED";
    FD1P3IX acnt__i1 (.D(n278), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i1.GSR = "ENABLED";
    FD1P3IX acnt__i2 (.D(n279), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i2.GSR = "ENABLED";
    FD1P3IX acnt__i3 (.D(n280), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i3.GSR = "ENABLED";
    FD1P3IX acnt__i4 (.D(n281), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i4.GSR = "ENABLED";
    FD1P3IX acnt__i5 (.D(n282), .SP(n2687), .CD(n613), .CK(wb_clk_i_c), 
            .Q(acnt[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=8, LSE_RCOL=9, LSE_LLINE=180, LSE_RLINE=200 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(234[16] 250[10])
    defparam acnt__i5.GSR = "ENABLED";
    FD1S3IX iwr_84 (.D(n20), .CK(wb_clk_i_c), .CD(n1856), .Q(iwr));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(197[16] 216[10])
    defparam iwr_84.GSR = "ENABLED";
    CCU2D add_59_5 (.A0(acnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(acnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2293), 
          .COUT(n2294), .S0(n113[3]), .S1(n113[4]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(244[27:35])
    defparam add_59_5.INIT0 = 16'h5aaa;
    defparam add_59_5.INIT1 = 16'h5aaa;
    defparam add_59_5.INJECT1_0 = "NO";
    defparam add_59_5.INJECT1_1 = "NO";
    CCU2D add_59_3 (.A0(acnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(acnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2292), 
          .COUT(n2293), .S0(n113[1]), .S1(n113[2]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(244[27:35])
    defparam add_59_3.INIT0 = 16'h5aaa;
    defparam add_59_3.INIT1 = 16'h5aaa;
    defparam add_59_3.INJECT1_0 = "NO";
    defparam add_59_3.INJECT1_1 = "NO";
    CCU2D add_59_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(acnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2292), 
          .S1(n113[0]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(244[27:35])
    defparam add_59_1.INIT0 = 16'hF000;
    defparam add_59_1.INIT1 = 16'h5555;
    defparam add_59_1.INJECT1_0 = "NO";
    defparam add_59_1.INJECT1_1 = "NO";
    LUT4 i2215_3_lut_rep_40 (.A(wb_cti_i_c_1), .B(n10), .C(wb_bte_i_c_1), 
         .Z(n2687)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2215_3_lut_rep_40.init = 16'h0202;
    LUT4 i82_2_lut_3_lut (.A(n2705), .B(wb_we_i_c), .C(wb_adr_i_c_5), 
         .Z(mem_rd_receiver)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(219[14:91])
    defparam i82_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2705), .B(wb_we_i_c), .C(n2511), .D(wb_adr_i_c_0), 
         .Z(n2525)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(219[14:91])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(n2705), .B(wb_we_i_c), .C(n2511), 
         .D(wb_adr_i_c_0), .Z(config_rd)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(219[14:91])
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h0001;
    LUT4 i2255_2_lut (.A(wb_ack_o_c), .B(n2551), .Z(n1864)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2255_2_lut.init = 16'h7777;
    LUT4 i2179_4_lut (.A(wb_cti_i_c_0), .B(wb_cti_i_c_1), .C(wb_bte_i_c_1), 
         .D(n2545), .Z(n2551)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2179_4_lut.init = 16'hfffb;
    LUT4 i2173_2_lut (.A(wb_bte_i_c_0), .B(wb_cti_i_c_2), .Z(n2545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2173_2_lut.init = 16'heeee;
    LUT4 i317_2_lut_rep_52 (.A(wb_adr_i_c_1), .B(wb_adr_i_c_0), .Z(n2699)) /* synthesis lut_function=(A (B)) */ ;
    defparam i317_2_lut_rep_52.init = 16'h8888;
    LUT4 i324_2_lut_rep_37_3_lut (.A(wb_adr_i_c_1), .B(wb_adr_i_c_0), .C(wb_adr_i_c_2), 
         .Z(n2684)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i324_2_lut_rep_37_3_lut.init = 16'h8080;
    LUT4 i331_2_lut_rep_31_3_lut_4_lut (.A(wb_adr_i_c_1), .B(wb_adr_i_c_0), 
         .C(wb_adr_i_c_3), .D(wb_adr_i_c_2), .Z(n2678)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i331_2_lut_rep_31_3_lut_4_lut.init = 16'h8000;
    LUT4 i2229_3_lut_rep_58 (.A(wb_stb_i_c), .B(wb_sel_i_c), .C(wb_cyc_i_c), 
         .Z(n2705)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(172[14:46])
    defparam i2229_3_lut_rep_58.init = 16'h7f7f;
    LUT4 i20_2_lut_4_lut (.A(wb_stb_i_c), .B(wb_sel_i_c), .C(wb_cyc_i_c), 
         .D(wb_we_i_c), .Z(n20)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v(172[14:46])
    defparam i20_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(wb_ack_o_c), .B(n2685), .C(n613), .D(n113[7]), 
         .Z(n2519)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0e00;
    
endmodule
//
// Verilog Description of module \i2s_codec(IS_RECEIVER=1) 
//

module \i2s_codec(IS_RECEIVER=1)  (sbuf_din, i2s_sd_i_c, wb_clk_i_c, n488, 
            n4, n2733, i2s_sck_o_c, \intstat_events[0] , \config_bits[0] , 
            i2s_ws_o_c, sbuf_wr_adr, \intstat_events[1] , n5, n5_adj_2, 
            n8, \config_bits[9] , n1741, GND_net, \config_bits[13] , 
            \config_bits[14] , \config_bits[15] , mem_wr_receiver, \config_bits[2] , 
            \config_bits[12] , \config_bits[11] , \config_bits[6] , \config_bits[5] , 
            n2690, \config_bits[7] , n2681, \config_bits[8] ) /* synthesis syn_module_defined=1 */ ;
    output [15:0]sbuf_din;
    input i2s_sd_i_c;
    input wb_clk_i_c;
    output n488;
    input n4;
    input n2733;
    output i2s_sck_o_c;
    output \intstat_events[0] ;
    input \config_bits[0] ;
    output i2s_ws_o_c;
    output [4:0]sbuf_wr_adr;
    output \intstat_events[1] ;
    input n5;
    input n5_adj_2;
    input n8;
    input \config_bits[9] ;
    input n1741;
    input GND_net;
    input \config_bits[13] ;
    input \config_bits[14] ;
    input \config_bits[15] ;
    output mem_wr_receiver;
    input \config_bits[2] ;
    input \config_bits[12] ;
    input \config_bits[11] ;
    input \config_bits[6] ;
    input \config_bits[5] ;
    output n2690;
    input \config_bits[7] ;
    output n2681;
    input \config_bits[8] ;
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    wire n2733 /* synthesis nomerge= */ ;
    
    wire n490, n1062, n3, n4_c, n8_c, n2560, n10;
    wire [4:0]ws_cnt;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(172[11:17])
    
    wire n1096, n2523, n592, n2698, n3_adj_3, neg_edge, n12, n895;
    wire [5:0]bits_to_trx;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(166[20:31])
    
    wire ws_pos_edge, n907, n937, new_word;
    wire [0:0]n411;
    
    wire n575, n2535, n10_adj_5, n2673, n1047, n3_adj_6, n2718, 
        n891;
    wire [4:0]n63;
    
    wire n2524, n1094, n2521, n905, n2717, n2700, n1048, n3_adj_7;
    wire [5:0]bit_cnt;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(166[11:18])
    
    wire n2694, n3_adj_8, n600, n2, i2s_clk_en, n2536, n596, n3_adj_9, 
        n1046, n3_adj_10, n3_adj_11, n1049, n3_adj_12, n3_adj_13, 
        n3_adj_14, n1039, n3_adj_15;
    wire [4:0]sd_ctrl;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(165[12:19])
    
    wire n167, n2707, n2317, n2686, ws_neg_edge, n489, n934, n1040, 
        n3_adj_17, n491, n8_adj_18, n10_adj_19, n2577, n165, n1041, 
        n3_adj_20, n2708, n3_adj_22, n1371, n1054, n3_adj_23, n2672;
    wire [4:0]clk_cnt;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(163[12:19])
    wire [4:0]n26;
    
    wire n1778, n4_adj_24, n2703, n2701, n2567, n1858, n8_adj_25, 
        n2_adj_26, n2706, n2_adj_27, n2_adj_28, n2_adj_29, n3_adj_30, 
        n2296;
    wire [5:0]n318;
    
    wire n2297, n2693, n2689, n2675, n3_adj_31, n3_adj_32, n3_adj_33, 
        n3_adj_34, n3_adj_35, n2692, n2680, n2674, n1060, n2298, 
        n2515, n352, n4_adj_36, n2704, n984, n2682, n2677, n988, 
        n4_adj_37, n1061, n5_adj_38, n1057, n1038, n1059, n2676, 
        n1860;
    wire [4:0]n576;
    
    wire n4_adj_39, n2683, n2695, n6, n1055, n6_adj_40, n4_adj_41, 
        n8_adj_42, n6_adj_43;
    
    LUT4 select_58_Select_8_i3_4_lut (.A(sbuf_din[8]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1062), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_8_i3_4_lut.init = 16'hc088;
    PFUMX LessThan_5_i10 (.BLUT(n4_c), .ALUT(n8_c), .C0(n2560), .Z(n10)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;
    FD1P3AX ws_cnt__i4 (.D(n2523), .SP(n1096), .CK(wb_clk_i_c), .Q(ws_cnt[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_cnt__i4.GSR = "DISABLED";
    FD1P3IX data_in__i0 (.D(n3_adj_3), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i0.GSR = "DISABLED";
    LUT4 i526_2_lut (.A(neg_edge), .B(n12), .Z(n895)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(191[25] 195[19])
    defparam i526_2_lut.init = 16'h6666;
    FD1S3IX neg_edge_220 (.D(n895), .CK(wb_clk_i_c), .CD(n2698), .Q(neg_edge));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(181[7] 197[16])
    defparam neg_edge_220.GSR = "DISABLED";
    FD1P3IX bits_to_trx__i0 (.D(n4), .SP(n488), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bits_to_trx[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bits_to_trx__i0.GSR = "DISABLED";
    FD1P3IX ws_pos_edge_224 (.D(n2733), .SP(n907), .CD(n937), .CK(wb_clk_i_c), 
            .Q(ws_pos_edge));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_pos_edge_224.GSR = "DISABLED";
    FD1S3IX toggle_221 (.D(neg_edge), .CK(wb_clk_i_c), .CD(n2698), .Q(i2s_sck_o_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(181[7] 197[16])
    defparam toggle_221.GSR = "DISABLED";
    FD1S3IX new_word_231 (.D(n411[0]), .CK(wb_clk_i_c), .CD(n2698), .Q(new_word));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam new_word_231.GSR = "DISABLED";
    FD1P3IX evt_lsbf_233 (.D(n2535), .SP(n575), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(\intstat_events[0] ));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam evt_lsbf_233.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_26_3_lut (.A(\config_bits[0] ), .B(n10_adj_5), .Z(n2673)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_26_3_lut.init = 16'h8888;
    LUT4 select_58_Select_7_i3_4_lut (.A(sbuf_din[7]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1047), .Z(n3_adj_6)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_7_i3_4_lut.init = 16'hc088;
    FD1P3IX ws_cnt__i3 (.D(n2718), .SP(n1096), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(ws_cnt[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_cnt__i3.GSR = "DISABLED";
    LUT4 i522_2_lut_3_lut (.A(i2s_ws_o_c), .B(n10_adj_5), .Z(n891)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(212[28] 220[22])
    defparam i522_2_lut_3_lut.init = 16'h9999;
    FD1P3IX ws_cnt__i2 (.D(n63[2]), .SP(n1096), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(ws_cnt[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_cnt__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(\config_bits[0] ), .B(n10_adj_5), .C(ws_cnt[0]), 
         .Z(n2524)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0808;
    FD1P3IX bits_to_trx__i4 (.D(n2521), .SP(n1094), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bits_to_trx[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bits_to_trx__i4.GSR = "DISABLED";
    FD1P3IX ws_cnt__i1 (.D(n63[1]), .SP(n1096), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(ws_cnt[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_cnt__i1.GSR = "DISABLED";
    LUT4 i1430_3_lut_4_lut (.A(ws_cnt[1]), .B(n10_adj_5), .C(ws_cnt[0]), 
         .Z(n63[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(212[28] 220[22])
    defparam i1430_3_lut_4_lut.init = 16'h4848;
    LUT4 i536_2_lut_3_lut (.A(i2s_ws_o_c), .B(n10_adj_5), .Z(n905)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(212[28] 220[22])
    defparam i536_2_lut_3_lut.init = 16'h2222;
    LUT4 n1_bdd_2_lut_2277 (.A(n2717), .B(n10_adj_5), .Z(n2718)) /* synthesis lut_function=(A (B)) */ ;
    defparam n1_bdd_2_lut_2277.init = 16'h8888;
    FD1P3IX i2s_ws_222 (.D(n891), .SP(n2700), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(i2s_ws_o_c));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam i2s_ws_222.GSR = "DISABLED";
    LUT4 select_58_Select_6_i3_4_lut (.A(sbuf_din[6]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1048), .Z(n3_adj_7)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_6_i3_4_lut.init = 16'hc088;
    FD1P3IX bit_cnt__i5 (.D(n3_adj_8), .SP(n2694), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i5.GSR = "DISABLED";
    LUT4 ws_cnt_2__bdd_4_lut (.A(ws_cnt[2]), .B(ws_cnt[1]), .C(ws_cnt[0]), 
         .D(ws_cnt[3]), .Z(n2717)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam ws_cnt_2__bdd_4_lut.init = 16'h7f80;
    FD1P3IX adr_cnt__i1 (.D(n2), .SP(n600), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_wr_adr[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam adr_cnt__i1.GSR = "DISABLED";
    FD1S3IX i2s_clk_en_218 (.D(n12), .CK(wb_clk_i_c), .CD(n2698), .Q(i2s_clk_en));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(181[7] 197[16])
    defparam i2s_clk_en_218.GSR = "DISABLED";
    FD1P3IX evt_hsbf_234 (.D(n2536), .SP(n575), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(\intstat_events[1] ));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam evt_hsbf_234.GSR = "DISABLED";
    FD1P3IX bit_cnt__i4 (.D(n3_adj_9), .SP(n596), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i4.GSR = "DISABLED";
    LUT4 select_58_Select_5_i3_4_lut (.A(sbuf_din[5]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1046), .Z(n3_adj_10)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_5_i3_4_lut.init = 16'hc088;
    FD1P3IX bit_cnt__i3 (.D(n3_adj_11), .SP(n596), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i3.GSR = "DISABLED";
    LUT4 select_58_Select_4_i3_4_lut (.A(sbuf_din[4]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1049), .Z(n3_adj_12)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_4_i3_4_lut.init = 16'hc088;
    FD1P3IX bit_cnt__i2 (.D(n3_adj_13), .SP(n596), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i2.GSR = "DISABLED";
    FD1P3IX bit_cnt__i1 (.D(n3_adj_14), .SP(n596), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i1.GSR = "DISABLED";
    FD1P3IX bits_to_trx__i3 (.D(n5), .SP(n1094), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bits_to_trx[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bits_to_trx__i3.GSR = "DISABLED";
    LUT4 select_58_Select_3_i3_4_lut (.A(sbuf_din[3]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1039), .Z(n3_adj_15)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_3_i3_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_then_4_lut (.A(sd_ctrl[2]), .B(n167), .C(i2s_clk_en), 
         .D(n490), .Z(n2707)) /* synthesis lut_function=(A+(B (D)+!B !(C+!(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i2_4_lut_then_4_lut.init = 16'hefaa;
    FD1S3AX sd_ctrl_FSM_i4 (.D(n2698), .CK(wb_clk_i_c), .Q(n488));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam sd_ctrl_FSM_i4.GSR = "DISABLED";
    LUT4 select_163_Select_0_i9_4_lut (.A(n2317), .B(new_word), .C(n490), 
         .D(n2694), .Z(n411[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_163_Select_0_i9_4_lut.init = 16'ha0ec;
    LUT4 i1_4_lut (.A(ws_cnt[4]), .B(n2673), .C(ws_cnt[3]), .D(n2686), 
         .Z(n2523)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h4888;
    LUT4 i2_3_lut (.A(ws_neg_edge), .B(new_word), .C(ws_pos_edge), .Z(n2317)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(281[19] 283[22])
    defparam i2_3_lut.init = 16'hfefe;
    FD1S3IX sd_ctrl_FSM_i3 (.D(n934), .CK(wb_clk_i_c), .CD(n2698), .Q(n489));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam sd_ctrl_FSM_i3.GSR = "DISABLED";
    FD1P3IX bits_to_trx__i2 (.D(n5_adj_2), .SP(n1094), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bits_to_trx[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bits_to_trx__i2.GSR = "DISABLED";
    LUT4 select_58_Select_2_i3_4_lut (.A(sbuf_din[2]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1040), .Z(n3_adj_17)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_2_i3_4_lut.init = 16'hc088;
    FD1S3IX sd_ctrl_FSM_i0 (.D(n491), .CK(wb_clk_i_c), .CD(n2698), .Q(sd_ctrl[2]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam sd_ctrl_FSM_i0.GSR = "DISABLED";
    PFUMX LessThan_78_i12 (.BLUT(n8_adj_18), .ALUT(n10_adj_19), .C0(n2577), 
          .Z(n165)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;
    LUT4 select_58_Select_1_i3_4_lut (.A(sbuf_din[1]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1041), .Z(n3_adj_20)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_1_i3_4_lut.init = 16'hc088;
    FD1P3IX bits_to_trx__i1 (.D(n8), .SP(n1094), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bits_to_trx[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bits_to_trx__i1.GSR = "DISABLED";
    FD1S3IX sd_ctrl_FSM_i2 (.D(n2708), .CK(wb_clk_i_c), .CD(n2698), .Q(n490));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam sd_ctrl_FSM_i2.GSR = "DISABLED";
    FD1P3IX bit_cnt__i0 (.D(n3_adj_22), .SP(n596), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam bit_cnt__i0.GSR = "DISABLED";
    LUT4 i2251_2_lut (.A(n12), .B(\config_bits[0] ), .Z(n1371)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(187[22] 197[16])
    defparam i2251_2_lut.init = 16'hbbbb;
    FD1P3AX ws_cnt__i0 (.D(n2524), .SP(n1096), .CK(wb_clk_i_c), .Q(ws_cnt[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_cnt__i0.GSR = "DISABLED";
    LUT4 select_58_Select_12_i3_4_lut (.A(sbuf_din[12]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1054), .Z(n3_adj_23)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_12_i3_4_lut.init = 16'hc088;
    FD1S3IX sd_ctrl_FSM_i1 (.D(n2672), .CK(wb_clk_i_c), .CD(n2698), .Q(n491));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam sd_ctrl_FSM_i1.GSR = "DISABLED";
    LUT4 i1900_2_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .Z(n26[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1900_2_lut.init = 16'h6666;
    LUT4 i2212_2_lut (.A(n489), .B(n488), .Z(n575)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2212_2_lut.init = 16'h1111;
    LUT4 i1898_1_lut (.A(clk_cnt[0]), .Z(n26[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1898_1_lut.init = 16'h5555;
    LUT4 i2249_2_lut (.A(n489), .B(\config_bits[0] ), .Z(n1778)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2249_2_lut.init = 16'h7777;
    LUT4 LessThan_23_i4_4_lut (.A(bits_to_trx[0]), .B(bits_to_trx[1]), .C(ws_cnt[1]), 
         .D(ws_cnt[0]), .Z(n4_adj_24)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam LessThan_23_i4_4_lut.init = 16'h0c8e;
    LUT4 i2237_4_lut (.A(n2703), .B(n2701), .C(ws_cnt[2]), .D(bits_to_trx[2]), 
         .Z(n2567)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam i2237_4_lut.init = 16'heffe;
    LUT4 i3_4_lut (.A(sbuf_wr_adr[0]), .B(sbuf_wr_adr[2]), .C(sbuf_wr_adr[3]), 
         .D(sbuf_wr_adr[1]), .Z(n1858)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_2 (.A(n488), .B(\config_bits[9] ), .C(n1741), .D(n8_adj_25), 
         .Z(n2521)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i1_4_lut_adj_2.init = 16'h0802;
    FD1P3IX adr_cnt__i5 (.D(n2_adj_26), .SP(n600), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_wr_adr[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam adr_cnt__i5.GSR = "DISABLED";
    LUT4 i2_4_lut_else_4_lut (.A(sd_ctrl[2]), .B(i2s_clk_en), .C(n489), 
         .D(n490), .Z(n2706)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i2_4_lut_else_4_lut.init = 16'hffea;
    FD1P3IX adr_cnt__i4 (.D(n2_adj_27), .SP(n600), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_wr_adr[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam adr_cnt__i4.GSR = "DISABLED";
    FD1P3IX adr_cnt__i3 (.D(n2_adj_28), .SP(n600), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_wr_adr[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam adr_cnt__i3.GSR = "DISABLED";
    FD1P3IX adr_cnt__i2 (.D(n2_adj_29), .SP(n600), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_wr_adr[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam adr_cnt__i2.GSR = "DISABLED";
    FD1P3IX data_in__i15 (.D(n3_adj_30), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i15.GSR = "DISABLED";
    CCU2D add_133_3 (.A0(bit_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2296), .COUT(n2297), .S0(n318[1]), .S1(n318[2]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[22] 296[25])
    defparam add_133_3.INIT0 = 16'h5aaa;
    defparam add_133_3.INIT1 = 16'h5aaa;
    defparam add_133_3.INJECT1_0 = "NO";
    defparam add_133_3.INJECT1_1 = "NO";
    CCU2D add_133_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n167), .B1(n2693), .C1(bit_cnt[0]), .D1(GND_net), .COUT(n2296), 
          .S1(n318[0]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[22] 296[25])
    defparam add_133_1.INIT0 = 16'hF000;
    defparam add_133_1.INIT1 = 16'h7878;
    defparam add_133_1.INJECT1_0 = "NO";
    defparam add_133_1.INJECT1_1 = "NO";
    LUT4 LessThan_5_i7_2_lut_rep_28_3_lut_4_lut (.A(\config_bits[13] ), .B(n2689), 
         .C(clk_cnt[3]), .D(\config_bits[14] ), .Z(n2675)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam LessThan_5_i7_2_lut_rep_28_3_lut_4_lut.init = 16'h8778;
    FD1P3IX data_in__i14 (.D(n3_adj_31), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i14.GSR = "DISABLED";
    FD1P3IX data_in__i13 (.D(n3_adj_32), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i13.GSR = "DISABLED";
    FD1P3IX data_in__i12 (.D(n3_adj_23), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i12.GSR = "DISABLED";
    FD1P3IX data_in__i11 (.D(n3_adj_33), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i11.GSR = "DISABLED";
    FD1P3IX data_in__i10 (.D(n3_adj_34), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i10.GSR = "DISABLED";
    FD1P3IX data_in__i9 (.D(n3_adj_35), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i9.GSR = "DISABLED";
    FD1P3IX data_in__i8 (.D(n3), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i8.GSR = "DISABLED";
    FD1P3IX data_in__i7 (.D(n3_adj_6), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i7.GSR = "DISABLED";
    FD1P3IX data_in__i6 (.D(n3_adj_7), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i6.GSR = "DISABLED";
    FD1P3IX data_in__i5 (.D(n3_adj_10), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i5.GSR = "DISABLED";
    FD1P3IX data_in__i4 (.D(n3_adj_12), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i4.GSR = "DISABLED";
    FD1P3IX data_in__i3 (.D(n3_adj_15), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i3.GSR = "DISABLED";
    FD1P3IX data_in__i2 (.D(n3_adj_17), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i2.GSR = "DISABLED";
    FD1P3IX data_in__i1 (.D(n3_adj_20), .SP(n592), .CD(n2698), .CK(wb_clk_i_c), 
            .Q(sbuf_din[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam data_in__i1.GSR = "DISABLED";
    LUT4 select_56_Select_3_i2_3_lut_4_lut (.A(sbuf_wr_adr[2]), .B(n2692), 
         .C(n491), .D(sbuf_wr_adr[3]), .Z(n2_adj_27)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam select_56_Select_3_i2_3_lut_4_lut.init = 16'h7080;
    FD1P3IX ws_neg_edge_225 (.D(n2733), .SP(n905), .CD(n937), .CK(wb_clk_i_c), 
            .Q(ws_neg_edge));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(202[7] 225[16])
    defparam ws_neg_edge_225.GSR = "DISABLED";
    LUT4 LessThan_5_i9_2_lut_rep_27_3_lut_4_lut (.A(\config_bits[14] ), .B(n2680), 
         .C(clk_cnt[4]), .D(\config_bits[15] ), .Z(n2674)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam LessThan_5_i9_2_lut_rep_27_3_lut_4_lut.init = 16'h8778;
    LUT4 i2224_3_lut_4_lut (.A(\config_bits[14] ), .B(n2680), .C(\config_bits[15] ), 
         .D(n10), .Z(n12)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;
    defparam i2224_3_lut_4_lut.init = 16'h007f;
    LUT4 select_57_Select_5_i3_2_lut (.A(n318[5]), .B(n490), .Z(n3_adj_8)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_5_i3_2_lut.init = 16'h8888;
    LUT4 select_56_Select_0_i2_2_lut (.A(sbuf_wr_adr[0]), .B(n491), .Z(n2)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_56_Select_0_i2_2_lut.init = 16'h4444;
    FD1S3IX clk_cnt_243__i1 (.D(n26[1]), .CK(wb_clk_i_c), .CD(n1371), 
            .Q(clk_cnt[1]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(189[33:46])
    defparam clk_cnt_243__i1.GSR = "DISABLED";
    FD1S3IX clk_cnt_243__i2 (.D(n26[2]), .CK(wb_clk_i_c), .CD(n1371), 
            .Q(clk_cnt[2]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(189[33:46])
    defparam clk_cnt_243__i2.GSR = "DISABLED";
    FD1S3IX clk_cnt_243__i3 (.D(n26[3]), .CK(wb_clk_i_c), .CD(n1371), 
            .Q(clk_cnt[3]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(189[33:46])
    defparam clk_cnt_243__i3.GSR = "DISABLED";
    FD1S3IX clk_cnt_243__i4 (.D(n26[4]), .CK(wb_clk_i_c), .CD(n1371), 
            .Q(clk_cnt[4]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(189[33:46])
    defparam clk_cnt_243__i4.GSR = "DISABLED";
    LUT4 select_57_Select_4_i3_2_lut (.A(n318[4]), .B(n490), .Z(n3_adj_9)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_4_i3_2_lut.init = 16'h8888;
    LUT4 select_57_Select_3_i3_2_lut (.A(n318[3]), .B(n490), .Z(n3_adj_11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_3_i3_2_lut.init = 16'h8888;
    LUT4 select_58_Select_11_i3_4_lut (.A(sbuf_din[11]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1060), .Z(n3_adj_33)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_11_i3_4_lut.init = 16'hc088;
    LUT4 select_57_Select_2_i3_2_lut (.A(n318[2]), .B(n490), .Z(n3_adj_13)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_2_i3_2_lut.init = 16'h8888;
    CCU2D add_133_5 (.A0(bit_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bit_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2297), .COUT(n2298), .S0(n318[3]), .S1(n318[4]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[22] 296[25])
    defparam add_133_5.INIT0 = 16'h5aaa;
    defparam add_133_5.INIT1 = 16'h5aaa;
    defparam add_133_5.INJECT1_0 = "NO";
    defparam add_133_5.INJECT1_1 = "NO";
    LUT4 select_57_Select_1_i3_2_lut (.A(n318[1]), .B(n490), .Z(n3_adj_14)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_1_i3_2_lut.init = 16'h8888;
    FD1S3IX clk_cnt_243__i0 (.D(n26[0]), .CK(wb_clk_i_c), .CD(n1371), 
            .Q(clk_cnt[0]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(189[33:46])
    defparam clk_cnt_243__i0.GSR = "DISABLED";
    FD1P3AX imem_rdwr_226 (.D(n2515), .SP(n1778), .CK(wb_clk_i_c), .Q(mem_wr_receiver));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam imem_rdwr_226.GSR = "DISABLED";
    LUT4 i565_4_lut (.A(n489), .B(n488), .C(n352), .D(n4_adj_36), .Z(n934)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i565_4_lut.init = 16'hce0a;
    CCU2D add_133_7 (.A0(bit_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2298), 
          .S0(n318[5]));   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[22] 296[25])
    defparam add_133_7.INIT0 = 16'h5aaa;
    defparam add_133_7.INIT1 = 16'h0000;
    defparam add_133_7.INJECT1_0 = "NO";
    defparam add_133_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_3 (.A(\config_bits[0] ), .B(ws_neg_edge), .C(ws_pos_edge), 
         .D(\config_bits[2] ), .Z(n4_adj_36)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i1_4_lut_adj_3.init = 16'ha088;
    LUT4 i134_2_lut (.A(i2s_clk_en), .B(neg_edge), .Z(n352)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(300[29:71])
    defparam i134_2_lut.init = 16'h2222;
    LUT4 i1921_3_lut_4_lut (.A(clk_cnt[2]), .B(n2704), .C(clk_cnt[3]), 
         .D(clk_cnt[4]), .Z(n26[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1921_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n984), .B(n2682), .C(n2677), .D(n988), 
         .Z(n1041)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h8000;
    LUT4 LessThan_78_i4_4_lut (.A(bits_to_trx[0]), .B(bits_to_trx[1]), .C(bit_cnt[1]), 
         .D(bit_cnt[0]), .Z(n4_adj_37)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i4_4_lut.init = 16'h0c8e;
    LUT4 i1429_3_lut_4_lut_4_lut (.A(ws_cnt[1]), .B(ws_cnt[0]), .C(n10_adj_5), 
         .D(ws_cnt[2]), .Z(n63[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1429_3_lut_4_lut_4_lut.init = 16'h7080;
    LUT4 select_58_Select_10_i3_4_lut (.A(sbuf_din[10]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1061), .Z(n3_adj_34)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_10_i3_4_lut.init = 16'hc088;
    LUT4 LessThan_78_i5_2_lut (.A(bit_cnt[2]), .B(bits_to_trx[2]), .Z(n5_adj_38)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i5_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(n984), .B(n2682), .C(n988), .D(n2677), 
         .Z(n1057)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_5.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(n984), .B(n2682), .C(n2677), .D(n988), 
         .Z(n1046)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0800;
    LUT4 i81_2_lut (.A(n165), .B(new_word), .Z(n167)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:77])
    defparam i81_2_lut.init = 16'h2222;
    LUT4 select_58_Select_0_i3_4_lut (.A(sbuf_din[0]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1038), .Z(n3_adj_3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_0_i3_4_lut.init = 16'hc088;
    PFUMX i2270 (.BLUT(n2706), .ALUT(n2707), .C0(neg_edge), .Z(n2708));
    LUT4 i432_2_lut_rep_42 (.A(\config_bits[12] ), .B(\config_bits[11] ), 
         .Z(n2689)) /* synthesis lut_function=(A (B)) */ ;
    defparam i432_2_lut_rep_42.init = 16'h8888;
    LUT4 select_57_Select_0_i3_2_lut (.A(n318[0]), .B(n490), .Z(n3_adj_22)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_57_Select_0_i3_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(n984), .B(n2682), .C(n2677), .D(n988), 
         .Z(n1059)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_8 (.A(n984), .B(n2682), .C(n2677), .D(n988), 
         .Z(n1040)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_8.init = 16'h1000;
    LUT4 i446_2_lut_rep_29_3_lut_4_lut (.A(\config_bits[12] ), .B(\config_bits[11] ), 
         .C(\config_bits[14] ), .D(\config_bits[13] ), .Z(n2676)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i446_2_lut_rep_29_3_lut_4_lut.init = 16'h8000;
    LUT4 i1492_2_lut_3_lut_4_lut (.A(n984), .B(n2682), .C(n988), .D(n2677), 
         .Z(n1860)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1492_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_9 (.A(n984), .B(n2682), .C(n2677), .D(n988), 
         .Z(n1061)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_9.init = 16'h0010;
    LUT4 i439_2_lut_rep_33_3_lut (.A(\config_bits[12] ), .B(\config_bits[11] ), 
         .C(\config_bits[13] ), .Z(n2680)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i439_2_lut_rep_33_3_lut.init = 16'h8080;
    LUT4 i2266_4_lut (.A(n2674), .B(n2675), .C(clk_cnt[2]), .D(n576[2]), 
         .Z(n2560)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(188[20:46])
    defparam i2266_4_lut.init = 16'heffe;
    LUT4 select_58_Select_13_i3_4_lut (.A(sbuf_din[13]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1057), .Z(n3_adj_32)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_13_i3_4_lut.init = 16'hc088;
    LUT4 i437_2_lut_3_lut (.A(\config_bits[12] ), .B(\config_bits[11] ), 
         .C(\config_bits[13] ), .Z(n576[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i437_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1048)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h0100;
    LUT4 i1857_2_lut_rep_43 (.A(\config_bits[6] ), .B(\config_bits[5] ), 
         .Z(n2690)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1857_2_lut_rep_43.init = 16'heeee;
    LUT4 i1865_2_lut_rep_34_3_lut (.A(\config_bits[6] ), .B(\config_bits[5] ), 
         .C(\config_bits[7] ), .Z(n2681)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1865_2_lut_rep_34_3_lut.init = 16'hfefe;
    LUT4 i1873_2_lut_3_lut_4_lut (.A(\config_bits[6] ), .B(\config_bits[5] ), 
         .C(\config_bits[8] ), .D(\config_bits[7] ), .Z(n8_adj_25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1873_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2235_2_lut_3_lut (.A(i2s_ws_o_c), .B(n10_adj_5), .Z(n907)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(212[28] 220[22])
    defparam i2235_2_lut_3_lut.init = 16'h1111;
    LUT4 i2_3_lut_rep_35_4_lut (.A(bits_to_trx[0]), .B(bit_cnt[0]), .C(bits_to_trx[1]), 
         .D(bit_cnt[1]), .Z(n2682)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_rep_35_4_lut.init = 16'hb44b;
    LUT4 i471_3_lut_4_lut (.A(bits_to_trx[0]), .B(bit_cnt[0]), .C(bit_cnt[1]), 
         .D(bits_to_trx[1]), .Z(n4_adj_39)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam i471_3_lut_4_lut.init = 16'hbf0b;
    LUT4 i396_2_lut_rep_45 (.A(sbuf_wr_adr[1]), .B(sbuf_wr_adr[0]), .Z(n2692)) /* synthesis lut_function=(A (B)) */ ;
    defparam i396_2_lut_rep_45.init = 16'h8888;
    LUT4 i403_2_lut_rep_36_3_lut (.A(sbuf_wr_adr[1]), .B(sbuf_wr_adr[0]), 
         .C(sbuf_wr_adr[2]), .Z(n2683)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i403_2_lut_rep_36_3_lut.init = 16'h8080;
    LUT4 select_56_Select_2_i2_3_lut_4_lut (.A(sbuf_wr_adr[1]), .B(sbuf_wr_adr[0]), 
         .C(n491), .D(sbuf_wr_adr[2]), .Z(n2_adj_28)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam select_56_Select_2_i2_3_lut_4_lut.init = 16'h7080;
    LUT4 i78_2_lut_rep_46 (.A(i2s_clk_en), .B(neg_edge), .Z(n2693)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[26:68])
    defparam i78_2_lut_rep_46.init = 16'h8888;
    LUT4 i2232_3_lut_4_lut (.A(i2s_clk_en), .B(neg_edge), .C(n2694), .D(n490), 
         .Z(n592)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[26:68])
    defparam i2232_3_lut_4_lut.init = 16'h80f0;
    LUT4 i2_3_lut_rep_25_4_lut (.A(i2s_clk_en), .B(neg_edge), .C(n167), 
         .D(n490), .Z(n2672)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(287[26:68])
    defparam i2_3_lut_rep_25_4_lut.init = 16'h0800;
    LUT4 LessThan_5_i4_4_lut_4_lut (.A(\config_bits[12] ), .B(\config_bits[11] ), 
         .C(clk_cnt[0]), .D(clk_cnt[1]), .Z(n4_c)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (D)+!B (C+(D))))) */ ;
    defparam LessThan_5_i4_4_lut_4_lut.init = 16'h0267;
    LUT4 i2246_2_lut_rep_47 (.A(n488), .B(n491), .Z(n2694)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2246_2_lut_rep_47.init = 16'h1111;
    LUT4 i2240_2_lut_3_lut (.A(n488), .B(n491), .C(\config_bits[0] ), 
         .Z(n596)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i2240_2_lut_3_lut.init = 16'h1f1f;
    LUT4 LessThan_78_i9_2_lut_rep_48 (.A(bit_cnt[4]), .B(bits_to_trx[4]), 
         .Z(n2695)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i9_2_lut_rep_48.init = 16'h6666;
    LUT4 LessThan_78_i8_3_lut_3_lut (.A(bit_cnt[4]), .B(bits_to_trx[4]), 
         .C(n6), .Z(n8_adj_18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 select_56_Select_4_i2_4_lut (.A(sbuf_wr_adr[4]), .B(n491), .C(sbuf_wr_adr[3]), 
         .D(n2683), .Z(n2_adj_26)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_56_Select_4_i2_4_lut.init = 16'h4888;
    LUT4 LessThan_78_i10_3_lut_3_lut (.A(bit_cnt[5]), .B(n4_adj_37), .Z(n10_adj_19)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i10_3_lut_3_lut.init = 16'h4444;
    LUT4 LessThan_78_i6_3_lut_3_lut (.A(bit_cnt[3]), .B(bits_to_trx[3]), 
         .C(bits_to_trx[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam LessThan_78_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i530_1_lut_rep_51 (.A(\config_bits[0] ), .Z(n2698)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i530_1_lut_rep_51.init = 16'h5555;
    LUT4 i1_2_lut_4_lut (.A(n490), .B(n167), .C(n2693), .D(\config_bits[0] ), 
         .Z(n2515)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(235[7] 359[13])
    defparam i1_2_lut_4_lut.init = 16'h2000;
    LUT4 i254_2_lut_2_lut (.A(\config_bits[0] ), .B(n488), .Z(n1094)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i254_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_3_lut (.A(\config_bits[0] ), .B(n491), .C(n489), .Z(n600)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut (.A(bits_to_trx[0]), .B(bit_cnt[0]), .Z(n984)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 select_56_Select_1_i2_3_lut (.A(sbuf_wr_adr[1]), .B(n491), .C(sbuf_wr_adr[0]), 
         .Z(n2_adj_29)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_56_Select_1_i2_3_lut.init = 16'h4848;
    LUT4 i23_2_lut_rep_53 (.A(i2s_clk_en), .B(i2s_sck_o_c), .Z(n2700)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(209[20:60])
    defparam i23_2_lut_rep_53.init = 16'h8888;
    LUT4 select_58_Select_15_i3_4_lut (.A(sbuf_din[15]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1055), .Z(n3_adj_30)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_15_i3_4_lut.init = 16'hc088;
    LUT4 i2219_2_lut_3_lut (.A(i2s_clk_en), .B(i2s_sck_o_c), .C(\config_bits[0] ), 
         .Z(n937)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(209[20:60])
    defparam i2219_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i248_2_lut_3_lut (.A(i2s_clk_en), .B(i2s_sck_o_c), .C(\config_bits[0] ), 
         .Z(n1096)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(209[20:60])
    defparam i248_2_lut_3_lut.init = 16'h8f8f;
    LUT4 LessThan_23_i7_2_lut_rep_54 (.A(ws_cnt[3]), .B(bits_to_trx[3]), 
         .Z(n2701)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam LessThan_23_i7_2_lut_rep_54.init = 16'h6666;
    LUT4 LessThan_23_i6_3_lut_3_lut (.A(ws_cnt[3]), .B(bits_to_trx[3]), 
         .C(bits_to_trx[2]), .Z(n6_adj_40)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam LessThan_23_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2267_4_lut_4_lut (.A(bit_cnt[5]), .B(n5_adj_38), .C(n4_adj_41), 
         .D(n2695), .Z(n2577)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(288[32:55])
    defparam i2267_4_lut_4_lut.init = 16'haaab;
    LUT4 i367_2_lut_rep_39_3_lut (.A(ws_cnt[1]), .B(ws_cnt[0]), .C(ws_cnt[2]), 
         .Z(n2686)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i367_2_lut_rep_39_3_lut.init = 16'h8080;
    LUT4 i2257_3_lut_4_lut (.A(n489), .B(n491), .C(n1858), .D(sbuf_wr_adr[4]), 
         .Z(n2536)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i2257_3_lut_4_lut.init = 16'h4000;
    LUT4 i2260_3_lut_4_lut (.A(n489), .B(n491), .C(n1858), .D(sbuf_wr_adr[4]), 
         .Z(n2535)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam i2260_3_lut_4_lut.init = 16'h0040;
    LUT4 LessThan_23_i9_2_lut_rep_56 (.A(ws_cnt[4]), .B(bits_to_trx[4]), 
         .Z(n2703)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam LessThan_23_i9_2_lut_rep_56.init = 16'h6666;
    LUT4 i2_3_lut_rep_30 (.A(n4_adj_39), .B(bit_cnt[2]), .C(bits_to_trx[2]), 
         .Z(n2677)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_rep_30.init = 16'h9696;
    LUT4 LessThan_23_i8_3_lut_3_lut (.A(ws_cnt[4]), .B(bits_to_trx[4]), 
         .C(n6_adj_40), .Z(n8_adj_42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(210[23:43])
    defparam LessThan_23_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1903_2_lut_rep_57 (.A(clk_cnt[1]), .B(clk_cnt[0]), .Z(n2704)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1903_2_lut_rep_57.init = 16'h8888;
    LUT4 i1907_2_lut_3_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .C(clk_cnt[2]), 
         .Z(n26[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1907_2_lut_3_lut.init = 16'h7878;
    LUT4 i1914_2_lut_3_lut_4_lut (.A(clk_cnt[1]), .B(clk_cnt[0]), .C(clk_cnt[3]), 
         .D(clk_cnt[2]), .Z(n26[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1914_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1060)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_11.init = 16'h0020;
    LUT4 i2_4_lut (.A(bits_to_trx[2]), .B(n4_adj_41), .C(bit_cnt[2]), 
         .D(n4_adj_39), .Z(n988)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h63c6;
    LUT4 i1_2_lut_adj_12 (.A(bit_cnt[3]), .B(bits_to_trx[3]), .Z(n4_adj_41)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_12.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n984), .B(n2682), .C(n988), .D(n2677), 
         .Z(n1055)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1039)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1047)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_16 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1062)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_16.init = 16'h0040;
    LUT4 LessThan_5_i8_3_lut_3_lut_4_lut (.A(\config_bits[15] ), .B(n2676), 
         .C(n6_adj_43), .D(clk_cnt[4]), .Z(n8_c)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam LessThan_5_i8_3_lut_3_lut_4_lut.init = 16'h60f6;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1038)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(n984), .B(n2682), .C(n988), .D(n2677), 
         .Z(n1054)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(n984), .B(n2682), .C(n2677), 
         .D(n988), .Z(n1049)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(293[31:61])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h0400;
    LUT4 select_58_Select_14_i3_4_lut (.A(i2s_sd_i_c), .B(n490), .C(sbuf_din[14]), 
         .D(n1860), .Z(n3_adj_31)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_14_i3_4_lut.init = 16'hc088;
    LUT4 select_58_Select_9_i3_4_lut (.A(sbuf_din[9]), .B(n490), .C(i2s_sd_i_c), 
         .D(n1059), .Z(n3_adj_35)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v(248[13] 358[20])
    defparam select_58_Select_9_i3_4_lut.init = 16'hc088;
    LUT4 LessThan_5_i6_3_lut_3_lut_4_lut (.A(\config_bits[14] ), .B(n2680), 
         .C(n576[2]), .D(clk_cnt[3]), .Z(n6_adj_43)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam LessThan_5_i6_3_lut_3_lut_4_lut.init = 16'h60f6;
    PFUMX LessThan_23_i10 (.BLUT(n4_adj_24), .ALUT(n8_adj_42), .C0(n2567), 
          .Z(n10_adj_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=6, LSE_RCOL=6, LSE_LLINE=334, LSE_RLINE=350 */ ;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module dpram
//

module dpram (wb_clk_i_c, mem_wr_receiver, mem_rd_receiver, GND_net, 
            VCC_net, sbuf_wr_adr, sbuf_rd_adr, sbuf_din, sbuf_dout) /* synthesis syn_module_defined=1 */ ;
    input wb_clk_i_c;
    input mem_wr_receiver;
    input mem_rd_receiver;
    input GND_net;
    input VCC_net;
    input [4:0]sbuf_wr_adr;
    input [4:0]sbuf_rd_adr;
    input [15:0]sbuf_din;
    output [15:0]sbuf_dout;
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    
    PDPW8KC memory0 (.DI0(sbuf_din[0]), .DI1(sbuf_din[1]), .DI2(sbuf_din[2]), 
            .DI3(sbuf_din[3]), .DI4(sbuf_din[4]), .DI5(sbuf_din[5]), .DI6(sbuf_din[6]), 
            .DI7(sbuf_din[7]), .DI8(sbuf_din[8]), .DI9(sbuf_din[9]), .DI10(sbuf_din[10]), 
            .DI11(sbuf_din[11]), .DI12(sbuf_din[12]), .DI13(sbuf_din[13]), 
            .DI14(sbuf_din[14]), .DI15(sbuf_din[15]), .DI16(GND_net), 
            .DI17(GND_net), .ADW0(sbuf_wr_adr[0]), .ADW1(sbuf_wr_adr[1]), 
            .ADW2(sbuf_wr_adr[2]), .ADW3(sbuf_wr_adr[3]), .ADW4(sbuf_wr_adr[4]), 
            .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), 
            .BE0(VCC_net), .BE1(VCC_net), .CEW(mem_wr_receiver), .CLKW(wb_clk_i_c), 
            .CSW0(GND_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(sbuf_rd_adr[0]), 
            .ADR5(sbuf_rd_adr[1]), .ADR6(sbuf_rd_adr[2]), .ADR7(sbuf_rd_adr[3]), 
            .ADR8(sbuf_rd_adr[4]), .ADR9(GND_net), .ADR10(GND_net), .ADR11(GND_net), 
            .ADR12(GND_net), .CER(mem_rd_receiver), .OCER(VCC_net), .CLKR(wb_clk_i_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(sbuf_dout[9]), .DO1(sbuf_dout[10]), .DO2(sbuf_dout[11]), 
            .DO3(sbuf_dout[12]), .DO4(sbuf_dout[13]), .DO5(sbuf_dout[14]), 
            .DO6(sbuf_dout[15]), .DO9(sbuf_dout[0]), .DO10(sbuf_dout[1]), 
            .DO11(sbuf_dout[2]), .DO12(sbuf_dout[3]), .DO13(sbuf_dout[4]), 
            .DO14(sbuf_dout[5]), .DO15(sbuf_dout[6]), .DO16(sbuf_dout[7]), 
            .DO17(sbuf_dout[8]));
    defparam memory0.DATA_WIDTH_W = 18;
    defparam memory0.DATA_WIDTH_R = 18;
    defparam memory0.REGMODE = "NOREG";
    defparam memory0.CSDECODE_W = "0b000";
    defparam memory0.CSDECODE_R = "0b000";
    defparam memory0.GSR = "DISABLED";
    defparam memory0.RESETMODE = "SYNC";
    defparam memory0.ASYNC_RESET_RELEASE = "SYNC";
    defparam memory0.INIT_DATA = "STATIC";
    defparam memory0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam memory0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module gen_control_reg
//

module gen_control_reg (n33, wb_clk_i_c, config_wr, wb_dat_i_c_0, GND_net, 
            \config_bits[0] , \config_bits[6] , \config_bits[9] , n1741, 
            \config_bits[5] , \config_bits[7] , \config_bits[8] , wb_dat_i_c_15, 
            wb_dat_i_c_14, wb_dat_i_c_13, wb_dat_i_c_12, wb_dat_i_c_11, 
            wb_dat_i_c_10, wb_dat_i_c_9, wb_dat_i_c_8, wb_dat_i_c_7, 
            wb_dat_i_c_6, wb_dat_i_c_5, wb_dat_i_c_4, wb_dat_i_c_3, 
            wb_dat_i_c_2, wb_dat_i_c_1, \config_bits[2] , \config_bits[11] , 
            \config_bits[12] , \config_bits[13] , \config_bits[14] , \config_bits[15] , 
            n488, n2681, n5, n2690, n5_adj_1, n8, n4) /* synthesis syn_module_defined=1 */ ;
    output [15:0]n33;
    input wb_clk_i_c;
    input config_wr;
    input wb_dat_i_c_0;
    input GND_net;
    output \config_bits[0] ;
    output \config_bits[6] ;
    output \config_bits[9] ;
    output n1741;
    output \config_bits[5] ;
    output \config_bits[7] ;
    output \config_bits[8] ;
    input wb_dat_i_c_15;
    input wb_dat_i_c_14;
    input wb_dat_i_c_13;
    input wb_dat_i_c_12;
    input wb_dat_i_c_11;
    input wb_dat_i_c_10;
    input wb_dat_i_c_9;
    input wb_dat_i_c_8;
    input wb_dat_i_c_7;
    input wb_dat_i_c_6;
    input wb_dat_i_c_5;
    input wb_dat_i_c_4;
    input wb_dat_i_c_3;
    input wb_dat_i_c_2;
    input wb_dat_i_c_1;
    output \config_bits[2] ;
    output \config_bits[11] ;
    output \config_bits[12] ;
    output \config_bits[13] ;
    output \config_bits[14] ;
    output \config_bits[15] ;
    input n488;
    input n2681;
    output n5;
    input n2690;
    output n5_adj_1;
    output n8;
    output n4;
    
    wire wb_clk_i_c /* synthesis SET_AS_NETWORK=wb_clk_i_c */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(127[8:16])
    wire [15:0]config_bits;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(149[28:39])
    
    wire n8_c, n2688;
    
    IFS1P3DX ctrl_internal_rep_1__i0 (.D(wb_dat_i_c_0), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[0])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i0.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i0 (.D(wb_dat_i_c_0), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i0.GSR = "ENABLED";
    LUT4 i1372_4_lut (.A(\config_bits[6] ), .B(config_bits[10]), .C(\config_bits[9] ), 
         .D(n8_c), .Z(n1741)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v(149[28:39])
    defparam i1372_4_lut.init = 16'hcfcb;
    LUT4 i3_3_lut (.A(\config_bits[5] ), .B(\config_bits[7] ), .C(\config_bits[8] ), 
         .Z(n8_c)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam i3_3_lut.init = 16'hfefe;
    IFS1P3DX ctrl_internal_rep_1__i15 (.D(wb_dat_i_c_15), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[15])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i15.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i14 (.D(wb_dat_i_c_14), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[14])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i14.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i13 (.D(wb_dat_i_c_13), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[13])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i13.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i12 (.D(wb_dat_i_c_12), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[12])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i12.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i11 (.D(wb_dat_i_c_11), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[11])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i11.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i10 (.D(wb_dat_i_c_10), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i10.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i9 (.D(wb_dat_i_c_9), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[9])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i9.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i8 (.D(wb_dat_i_c_8), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[8])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i8.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i7 (.D(wb_dat_i_c_7), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[7])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i7.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i6 (.D(wb_dat_i_c_6), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[6])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i6.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i5 (.D(wb_dat_i_c_5), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[5])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i5.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i4 (.D(wb_dat_i_c_4), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[4])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i4.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i3 (.D(wb_dat_i_c_3), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[3])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i3.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i2 (.D(wb_dat_i_c_2), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[2])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i2.GSR = "ENABLED";
    IFS1P3DX ctrl_internal_rep_1__i1 (.D(wb_dat_i_c_1), .SP(config_wr), 
            .SCLK(wb_clk_i_c), .CD(GND_net), .Q(n33[1])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_rep_1__i1.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i2 (.D(wb_dat_i_c_2), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[2] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i2.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i5 (.D(wb_dat_i_c_5), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[5] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i5.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i6 (.D(wb_dat_i_c_6), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[6] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i6.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i7 (.D(wb_dat_i_c_7), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i7.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i8 (.D(wb_dat_i_c_8), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[8] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i8.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i9 (.D(wb_dat_i_c_9), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[9] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i9.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i10 (.D(wb_dat_i_c_10), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(config_bits[10])) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i10.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i11 (.D(wb_dat_i_c_11), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[11] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i11.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i12 (.D(wb_dat_i_c_12), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[12] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i12.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i13 (.D(wb_dat_i_c_13), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[13] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i13.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i14 (.D(wb_dat_i_c_14), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[14] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i14.GSR = "ENABLED";
    FD1P3AX ctrl_internal_i0_i15 (.D(wb_dat_i_c_15), .SP(config_wr), .CK(wb_clk_i_c), 
            .Q(\config_bits[15] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=4, LSE_RCOL=5, LSE_LLINE=232, LSE_RLINE=241 */ ;   // c:/users/sec29/desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v(141[22] 145[16])
    defparam ctrl_internal_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n488), .B(\config_bits[8] ), .C(n1741), .D(n2681), 
         .Z(n5)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'ha8a2;
    LUT4 i1_4_lut_adj_1 (.A(n488), .B(\config_bits[7] ), .C(n1741), .D(n2690), 
         .Z(n5_adj_1)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'ha8a2;
    LUT4 i2262_4_lut (.A(n488), .B(\config_bits[5] ), .C(n2688), .D(\config_bits[6] ), 
         .Z(n8)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))) */ ;
    defparam i2262_4_lut.init = 16'h8a2a;
    LUT4 i1_2_lut_rep_41 (.A(\config_bits[9] ), .B(config_bits[10]), .Z(n2688)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_41.init = 16'h2222;
    LUT4 i2264_3_lut_4_lut (.A(\config_bits[9] ), .B(config_bits[10]), .C(\config_bits[5] ), 
         .D(n488), .Z(n4)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i2264_3_lut_4_lut.init = 16'hdf00;
    
endmodule
