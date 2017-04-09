
//--------------------------------------------------------------------------------------------------
// Description : This has all the testcases
// -------------------------------------------------------------------------------------------------


`include "tasks.v"



task testcase;

    begin

    if(I2S_Tx_Rx)
    begin
    //**************************************************************************************************
    // Test cases for I2S Tx 
    //**************************************************************************************************

    $display("~~~~~~~~~~ I2S Controller Transmitter Operations Started !!! ~~~~~~~~~~");
            
    send_data_cntrl();

    #1000;
               
    verify_data();
	end
    else // !`ifdef I2S_Tx_Rx
    begin
    //**************************************************************************************************
    // Test cases for I2S Rx 
    //**************************************************************************************************    
     
    $display("~~~~~~~~~~ I2S Controller Receiver Operations Started !!! ~~~~~~~~~~");

    initalize_memory_arrays();

    #1100;    

    verify_rx_left_data();

    #1100;    

    verify_rx_right_data();

    #100;

    verify_rx_data();
    
            
//    `endif // !`ifdef I2S_Tx_Rx
    end    
    end
        
endtask // testcase




