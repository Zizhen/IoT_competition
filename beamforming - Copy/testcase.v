
//--------------------------------------------------------------------------------------------------
// Description : This has all the testcases
// -------------------------------------------------------------------------------------------------


`include "tasks.v"



task testcase;

    begin

   
   //**************************************************************************************************
    // Test cases for I2S Rx 
    //**************************************************************************************************    
     
    $display("~~~~~~~~~~ I2S Controller Receiver Operations Started !!! ~~~~~~~~~~");

    initalize_memory_arrays();

    #1100;    

//    verify_rx_left_data();

    #1100;    

//    verify_rx_right_data();

    #100;

 //   verify_rx_data();
    
            
//    `endif // !`ifdef I2S_Tx_Rx
    end    
    end
        
endtask // testcase




