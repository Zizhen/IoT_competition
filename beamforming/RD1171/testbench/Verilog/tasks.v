
//--------------------------------------------------------------------------------------------------
// Description : This has tasks necessary for sending and receiving data
// -------------------------------------------------------------------------------------------------


    reg [15 : 0] input_data_array;
    reg [15:0] left_data_array;
    reg [15:0] right_data_array;
    reg [3:0] counter_i;
    reg [15:0] left_twos_compl_data;
    reg [15:0] right_twos_compl_data;

    reg [15:0] rx_left_twos_compl_data;
    reg [15:0] rx_right_twos_compl_data;

    reg [3:0] wr_count_i;
    reg ws_i;

    reg [15:0] input_left_data_array;
    reg [15:0] input_right_data_array;

    reg ws_reg_i;
    reg sd_right_rx_i;
    reg sd_left_rx_i;




    task initalize_memory_arrays;
        begin
            assign input_left_data_array = {16'b0000_0000_0000_0000};
            assign input_right_data_array = {16'b0000_0000_0000_0001};            
            $display ("NOTE : Input Memory array has been initialized");
        end
    endtask // initalize_memory_arrays


    //**********************************************************************************************
    // Task to Send data and control signals - I2S Tx
    //**********************************************************************************************
    task send_data_cntrl;
        begin
            right_vld_tx_tb <= 1'b0;
            left_vld_tx_tb <= 1'b0;
            #400;
            left_data_tx_tb <= 16'hABCD;
            $display ("NOTE : Input Left data");
            #2;
            left_vld_tx_tb = 1'b1;
            $display ("NOTE : Left Valid has been asserted");
            #20;
            left_vld_tx_tb = 1'b0;
                        
            right_data_tx_tb <= 16'h5678;
            $display ("NOTE : Input Right data");
            #2;
            right_vld_tx_tb = 1'b1;
            $display ("NOTE : Right Valid has been asserted");
            #20;
            right_vld_tx_tb = 1'b0;
  
        end
    endtask // send_data_cntrl


    //**********************************************************************************************
    // Storing Left and Right Data - I2S Tx
    //**********************************************************************************************
    always @(negedge sck_tx_tb or posedge sys_rst_tb)
        begin
            if (sys_rst_tb) begin
                left_data_array <= 16'd0;
                right_data_array <= 16'd0; end
            else begin
                if (!ws_tx_tb) begin
                    for (i=0; i<=15; i=i+1)
                        begin
                            #1
                                @(posedge sck_tx_tb)
                                    left_data_array[15 -i] <= sd_tx_tb;
                        end
                end
                else begin
                    for (j=0; j<= 15; j= j+1)
                        begin
                            #1
                                @(posedge sck_tx_tb);
                                right_data_array[15 -j] = sd_tx_tb;
                        end
                end // else: !if(!ws_tb)
            end // else: !if(sys_rst_tb)
        end // always @ (posedge sck_tb or posedge sys_rst_tb)

    
    //**********************************************************************************************
    // Task to Verify the data - I2S Tx
    //**********************************************************************************************                        
    task verify_data;
        begin
            #10;
            left_twos_compl_data <= (~left_data_array) + 1;
            #10;
            right_twos_compl_data <= (~right_data_array) + 1;
            #10;
            if ((left_data_tx_tb == left_twos_compl_data) && (right_data_tx_tb == right_twos_compl_data))
                $display("SBT_PASS");
            else
                $display("SBT_FAIL");
        end
    endtask // verify_data


    //**********************************************************************************************
    // Generation of ws - I2S Rx
    //**********************************************************************************************
    //Count the number of bits to be transmitted
    //It has to be same as the data width
    always @ (negedge sys_clk_tb or posedge sys_rst_tb)
        if(sys_rst_tb)
            wr_count_i <= DATA_WIDTH[1'b0];
        else
            if(wr_count_i == DATA_WIDTH - 1) begin
                wr_count_i <= DATA_WIDTH[1'b0];
            end 
                else
                    wr_count_i <= wr_count_i + 1;


    always @ (negedge sys_clk_tb or posedge sys_rst_tb)
        if(sys_rst_tb)
            ws_i <= 1'b0;
        else
            begin
                if(wr_count_i == DATA_WIDTH - 1)
                    ws_i <= ~ws_i;
            end

    assign ws_rx_tb = ws_i;
    
    
    //**********************************************************************************************
    // Sending Serial data - I2S Rx
    //**********************************************************************************************
    
    always @(negedge sys_clk_tb or posedge sys_rst_tb)
        begin
            if (sys_rst_tb)
                ws_reg_i <= 1'b0;
            else
                ws_reg_i <= ws_rx_tb;
        end


    always @(negedge sys_clk_tb or posedge sys_rst_tb)
        begin
            if (sys_rst_tb) begin
                sd_right_rx_i <= 1'b0; end
            else if (!ws_rx_tb && wr_count_i == DATA_WIDTH - 1) 
                 begin
                     for (l=0; l<=15; l=l+1)
                        begin
                            #1
                                @(negedge sys_clk_tb);
                                    sd_right_rx_i <= input_right_data_array[15 -l];
                        end
                end
        end


    always @(negedge sys_clk_tb or posedge sys_rst_tb)
        begin
            if (sys_rst_tb) begin
                sd_left_rx_i <= 1'b0; end
            else if (ws_rx_tb && wr_count_i == DATA_WIDTH - 1) 
                 begin
                     for (m=0; m<=15; m=m+1)
                        begin
                            #1
                                @(negedge sys_clk_tb);
                                    sd_left_rx_i <= input_left_data_array[15 -m];
                        end
                end
        end

    
    assign sd_rx_tb = ws_reg_i ? (sd_right_rx_i) : sd_left_rx_i;
        

    //**********************************************************************************************
    // Task to Verify the data - I2S Rx For Left data
    //**********************************************************************************************                        
    task verify_rx_left_data;
        begin
            #10;
            rx_left_twos_compl_data <= (~left_data_rx_tb) + 1;
            #10;
            if (input_left_data_array != rx_left_twos_compl_data) 
                err_count_i <= err_count_i + 1;
            else
                err_count_i <= err_count_i;
        end
    endtask // verify_data


    //**********************************************************************************************
    // Task to Verify the data - I2S Rx For Right data
    //**********************************************************************************************                        
    task verify_rx_right_data;
        begin
            #10;
            rx_right_twos_compl_data <= (~right_data_rx_tb) + 1;
            #10;
            if (input_right_data_array != rx_right_twos_compl_data) 
                err_count_i <= err_count_i + 1;
            else
                err_count_i <= err_count_i;
        end
    endtask // verify_data



    //**********************************************************************************************
    // Task to Verify the data - Checks for Error Count
    //**********************************************************************************************
    task verify_rx_data;
        begin
            #10;
            if (err_count_i == 0)
                $display("SBT_PASS");
            else
                $display("SBT_FAIL");
        end
    endtask // verify_rx_data

    
    