
//--------------------------------------------------------------------------------------------------
// Description : This module acts as an i2s slave receiver. It takes in serial data(which is 
//               in 2's complement form) along with channel indicator and serial clock, converts it 
//               to parallel data and send it out to the processor/host interface
// -------------------------------------------------------------------------------------------------


module i2s_rx # (
                  parameter DATA_WIDTH=16
                )
    (//System ports
     i_sys_rst,
     //I2S Inputs from transmitter
     i_sck,
     i_ws,
     i_sd,
     //Parallel data to host/processor
     o_left_data,
     o_right_data,
     o_left_vld,
     o_right_vld
     );

    //parameter DATA_WIDTH = 16;//Can be set to any value

    //Ports
    input i_sys_rst;//System reset, asynchronous active high
    input i_sck;//I2S serial clock input
    input i_ws;//I2S write select, high indicates right channel and low indicates left
    input i_sd;//I2S serial data
    output [DATA_WIDTH - 1 : 0] o_left_data;//Output left channel data to Host/Processor
    output [DATA_WIDTH - 1 : 0] o_right_data;//Output right channel data to Host/Processor
    output                   o_left_vld;
    output                   o_right_vld;
    

    //Register and wire declarations
    reg                         ws_i;
    reg                         ws_reg_i;
    reg                         left_vld_i;
    reg                         right_vld_i;
    reg [DATA_WIDTH - 1 : 0]    left_data_reg_i;
    reg [DATA_WIDTH - 1 : 0]    right_data_reg_i;
    reg                         left_vld_reg_i;
    reg                         right_vld_reg_i;

    wire                        ws_pulse_i;
    wire                        left_vld;
    wire                        right_vld;

    reg                         d1_right_vld;
    reg                         d2_right_vld;
    reg                         d1_left_vld;
    reg                         d2_left_vld;
    reg [DATA_WIDTH - 1 : 0]    left_data_ones_compl_i;
    reg [DATA_WIDTH - 1 : 0]    right_data_ones_compl_i;
    reg [DATA_WIDTH - 1 : 0]    left_data_twos_compl_i;
    reg [DATA_WIDTH - 1 : 0]    right_data_twos_compl_i;
    reg                         sd_i;

    
    //Registering various signals
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            begin
                ws_i <= 1'b0;
                ws_reg_i <= 1'b0;
                sd_i <= 1'b0;
            end
        else
            begin
                ws_i <= i_ws;
                ws_reg_i <= ws_i;
                sd_i <= i_sd;
            end
    
    //Pulse issued whenever write select changes   
    assign ws_pulse_i = ws_i ^ ws_reg_i;

    //Shift register for serial to parallel conversion
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst) begin
            left_data_reg_i <=  DATA_WIDTH[1'b0];
            right_data_reg_i <=  DATA_WIDTH[1'b0]; end
        else
            if(~ws_reg_i)
                left_data_reg_i <= {left_data_reg_i[DATA_WIDTH - 2:0] , sd_i};
            else
                right_data_reg_i <= {right_data_reg_i[DATA_WIDTH - 2:0] , sd_i};
    
    
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst) begin
            left_vld_i <= 1'b0;
            right_vld_i <= 1'b0; end
        else
            if(ws_reg_i && ws_pulse_i) begin
                right_vld_i <= 1'b1;
                left_vld_i <= 1'b0; end
            else
                if(~ws_reg_i && ws_pulse_i) begin
                    right_vld_i <= 1'b0;
                    left_vld_i <= 1'b1; end
                else begin
                    left_vld_i <= left_vld_i;
                    right_vld_i <= right_vld_i; end
    

    //Registering various signals
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            begin
                left_vld_reg_i <= 1'b0;
                right_vld_reg_i <= 1'b0;
            end
        else
            begin
                left_vld_reg_i <= left_vld_i;
                right_vld_reg_i <= right_vld_i;
            end


    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            left_data_ones_compl_i <= DATA_WIDTH[1'b0];
        else
            left_data_ones_compl_i <= (~left_data_reg_i);

    
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            left_data_twos_compl_i <= DATA_WIDTH[1'b0];
        else
            left_data_twos_compl_i <= left_data_ones_compl_i + 1;


    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            right_data_ones_compl_i <= DATA_WIDTH[1'b0];
        else
            right_data_ones_compl_i <= (~right_data_reg_i);

    
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst)
            right_data_twos_compl_i <= DATA_WIDTH[1'b0];
        else
            right_data_twos_compl_i <= right_data_ones_compl_i + 1;


    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst) begin
            d1_left_vld <= 1'b0;
            d2_left_vld <= 1'b0;  end
        else begin
            d1_left_vld <= left_vld;
            d2_left_vld <= d1_left_vld;  end

    
    always @ (negedge i_sck or posedge i_sys_rst)
        if(i_sys_rst) begin
            d1_right_vld <= 1'b0;
            d2_right_vld <= 1'b0;  end
        else begin
            d1_right_vld <= right_vld;
            d2_right_vld <= d1_right_vld;  end

    
                
    assign o_left_data = left_data_twos_compl_i;
    assign o_right_data = right_data_twos_compl_i;
                        
    assign o_left_vld = d2_left_vld;
    assign o_right_vld = d2_right_vld;
    
    assign left_vld = left_vld_i && (~left_vld_reg_i);
    assign right_vld = right_vld_i && (~right_vld_reg_i);
    
endmodule
