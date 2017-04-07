
//--------------------------------------------------------------------------------------------------
// Description : This module acts as an i2s receiver and also as a host processor
// -------------------------------------------------------------------------------------------------


`timescale 1ns/1ps

`define I2S_Tx_Rx

module I2S_Controller_tb;

    
    //--------------------------------------------------------------------------------------------------
    // Parameter declarations
    //--------------------------------------------------------------------------------------------------
    parameter I2S_Tx_Rx = 0;
    parameter DATA_WIDTH=16;
    
    parameter SYS_CLK_PERIOD = 20;
    parameter RST_PERIOD  = 90;


    //--------------------------------------------------------------------------------------------------
    // wire and register declarations
    //--------------------------------------------------------------------------------------------------
    reg sys_clk_tb;
    reg sys_rst_tb;
    reg left_vld_tx_tb;
    reg right_vld_tx_tb;
    reg [DATA_WIDTH -1:0] left_data_tx_tb;
    reg [DATA_WIDTH -1:0] right_data_tx_tb;
    wire        sck_tx_tb;
    wire        ws_tx_tb;
    wire        sd_tx_tb;
    integer     i;
    integer     j;
    integer     k;
    integer     l;
    integer     m;
    
    integer     err_count_i;

    
    wire         ws_rx_tb;
    wire         sd_rx_tb;
    wire [DATA_WIDTH -1:0]  left_data_rx_tb;
    wire [DATA_WIDTH -1:0]  right_data_rx_tb;
    wire                    left_vld_rx_tb;
    wire                    right_vld_rx_tb;
        

    reg [3:0] data_read_i [DATA_WIDTH -1:0];
    

    `include "testcase.v"
    
    
    //--------------------------------------------------------------------------------------------------
    // System Clock generation 
    //--------------------------------------------------------------------------------------------------
    
    //initial begin
     //   sys_clk_tb     <= 1'b0;
     //   fork 
  	 //   forever #(SYS_CLK_PERIOD/2) sys_clk_tb <= ~ sys_clk_tb;
     //   join
    //end

    //--------------------------------------------------------------------------------------------------
    // System reset generation
    //--------------------------------------------------------------------------------------------------
  
    initial begin
        sys_rst_tb = 1'b1;
        #RST_PERIOD;
        sys_rst_tb = 1'b0;
    end


    //--------------------------------------------------------------------------------------------------
    // testace execution
    //--------------------------------------------------------------------------------------------------
    
    initial begin
        @(negedge sys_rst_tb);
        testcase;
    end
    
    //--------------------------------------------------------------------------------------------------
    // Initialization
    //--------------------------------------------------------------------------------------------------    
    initial begin
        right_vld_tx_tb = 1'b0;
        left_vld_tx_tb = 1'b0;
        left_data_tx_tb <= 16'b0;
        right_data_tx_tb <= 16'b0;
        err_count_i <= 0;
    end
    
    //--------------------------------------------------------------------------------------------------
    // DUT instance
    //--------------------------------------------------------------------------------------------------


    I2S_Controller I2S_Controller_inst (
                                        .i_sys_clk(sys_clk_tb),
                                        .i_sys_rst(sys_rst_tb),
                                        .i_left_data(left_data_tx_tb),
                                        .i_right_data(right_data_tx_tb),
                                        .i_left_vld(left_vld_tx_tb),
                                        .i_right_vld(right_vld_tx_tb),
                                        .i_ws(ws_rx_tb),
                                        .i_sd(sd_rx_tb),
                                        .o_sck(sck_tx_tb),
                                        .o_ws(ws_tx_tb),
                                        .o_sd(sd_tx_tb),
                                        .o_left_data(left_data_rx_tb),
                                        .o_right_data(right_data_rx_tb),
                                        .o_left_vld(left_vld_rx_tb),
                                        .o_right_vld(right_vld_rx_tb)
                                        );


    defparam I2S_Controller_inst.I2S_Tx_Rx = I2S_Tx_Rx;
    defparam I2S_Controller_inst.DATA_WIDTH = DATA_WIDTH;

  
    endmodule
