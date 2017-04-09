
//--------------------------------------------------------------------------------------------------
// Description : This module acts as an i2s master transmitter. It takes in parallel data(of both 
//               left and right channels, which is generic) along with data valids and sends it out 
//               through i2s bus
// -------------------------------------------------------------------------------------------------


`timescale 1ns / 1ps

module i2s_tx #(
                parameter DATA_WIDTH=16
                )
    (
     // System input ports
     i_sys_clk,
     i_sys_rst,

     //Data and control signals from host
     i_left_data,
     i_right_data,
     i_left_vld,
     i_right_vld,     

     //I2S Output data ports
     o_sck,
     o_ws,
     o_sd
     );

    //parameter DATA_WIDTH = 16;//can be set to 16 or 32

    //Ports
    input                      i_sys_clk;//System clock
    input                      i_sys_rst;//System reset, asynchronous active high

    input [DATA_WIDTH - 1 : 0] i_left_data;//Input data bus - carries data to be sent via i2s bus - Left Channel Data
    input [DATA_WIDTH - 1 : 0] i_right_data;//Input data bus - carries data to be sent via i2s bus
    input                      i_left_vld;//A high indicates existence of left channel data on the input bus 
    input                      i_right_vld;//A high indicates existence of right channel data on the input bus
    
    output                     o_sck;//Serial clock line
    output                     o_ws;//Write Select,a high indicates right channel and low indicates left channel
    output                     o_sd;//Serial data

    //Register and wire declarations
    reg [DATA_WIDTH - 1 : 0]   left_data_i;
    reg [DATA_WIDTH - 1 : 0]   right_data_i;
    reg [DATA_WIDTH - 1 : 0]   data_reg_i;
    reg [DATA_WIDTH - 1 : 0]   wr_count_i;
    reg                        ws_i;
    reg                        sd_i;
    reg                        left_vld_i;
    wire                       left_vld_pulse_i;
    wire                       right_vld_pulse_i;
    wire                       i2s_clk_i;
    
    reg                        clock_i;
    reg [DATA_WIDTH -1 :0]     left_data_ones_compl_i;
    reg [DATA_WIDTH -1 :0]     right_data_ones_compl_i;
    reg                        left_vld_reg_i;
    reg                        right_vld_reg_i;


    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            left_vld_reg_i <= 1'b0;
        else
            left_vld_reg_i <= i_left_vld;

    
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            right_vld_reg_i <= 1'b0;
        else
            right_vld_reg_i <= i_right_vld;

    

    // 1's Complement
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            left_data_ones_compl_i <= DATA_WIDTH[1'b0];
        else
            left_data_ones_compl_i <= ~(i_left_data);

    
    // 1's Complement
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            right_data_ones_compl_i <= DATA_WIDTH[1'b0];
        else
            right_data_ones_compl_i <= ~(i_right_data);
        

    
    //Register the incoming parallel data of the left channel after 
    //conversion to 2's complement form
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            left_data_i <= DATA_WIDTH[1'b0];
        else
            if(left_vld_reg_i)
                left_data_i <= left_data_ones_compl_i + 1;
    
    
    //Register the incoming parallel data of the right channel after 
    //conversion to 2's complement form
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            right_data_i <= DATA_WIDTH[1'b0];
        else
            if(right_vld_reg_i)
                right_data_i <= right_data_ones_compl_i + 1;

    
    //Regiter the data valid signal
    always @ (posedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            left_vld_i <= 1'b0;           
            else if(i_left_vld)
                left_vld_i <= 1'b1;

        
    //Data mux and shift register for left and right channels
    //left valid data synchronization with o_WS
    always @ (negedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            data_reg_i <= DATA_WIDTH[1'b0];
        else
            
            begin
                if(wr_count_i == DATA_WIDTH - 1 && !ws_i)begin // left channel end
                    data_reg_i <= right_data_i;
                end else if(wr_count_i == DATA_WIDTH - 1 && ws_i)begin // right channel end
                    data_reg_i <= left_data_i;
                end else begin
                    data_reg_i <= {data_reg_i[DATA_WIDTH - 2:0], data_reg_i[DATA_WIDTH-1]};
                end
            end

    always @ (negedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            ws_i <= 1'b0;
        else
            begin
                if(wr_count_i == DATA_WIDTH - 1)
                    ws_i <= ~ws_i;
            end
            
    
    //Parallel to serial conversion of incoming data
    always @ (negedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            sd_i <= 1'b0;
        else
            sd_i <= data_reg_i[DATA_WIDTH -1];

    //Serial data bits transmitted out
    //assign o_sd = data_reg_i[DATA_WIDTH -1];

    assign o_sd = sd_i;
    
                 
    //Count the number of bits to be transmitted
    //It has to be same as the data width
    always @ (negedge i_sys_clk or posedge i_sys_rst)
        if(i_sys_rst)
            wr_count_i <= DATA_WIDTH[1'b0];
        else
            if(wr_count_i == DATA_WIDTH - 1) begin
                wr_count_i <= DATA_WIDTH[1'b0];
            end 
                else
                    wr_count_i <= wr_count_i + 1;
               
       

    assign o_ws = ws_i;
    //Output clock is same as the input clock
    assign o_sck = i_sys_clk;

endmodule // i2s_tx
