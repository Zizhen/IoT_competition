`timescale 1ns/1ps

//`define I2S_Tx_Rx

module I2S_Controller_tb;

    
    //-------------s-------------------------------------------------------------------------------------
    // Parameter declarations
    //--------------------------------------------------------------------------------------------------
   // parameter I2S_Tx_Rx = 0;
    parameter DATA_WIDTH=32;
    
   // parameter SYS_CLK_PERIOD = 20;
    
    
    //--------------------------------------------------------------------------------------------------
    // DUT instance
    //--------------------------------------------------------------------------------------------------

 
    top DUT(
                          .rst_n(rst_n),
                          .i_sd(i_sd),
                          .o_sck(o_sck),
                          .o_ws(o_ws),
						  .i_sd2(i_sd2),
                          .o_sck2(o_sck2),
                          .o_ws2(o_ws2),
						  .horizontal_out(horizontal_out)
                         // .o_left_data(o_left_data),
                         // .o_right_data(o_right_data),
                         // .o_left_vld(o_left_vld),
                         // .o_right_vld(o_right_vld)
                       );
					   
	
					   
	GSR GSR_INST ( .GSR(1)); 
    PUR PUR_INST ( .PUR(1)); 

    reg                      rst_n;//reset
    wire                     o_sck;//Serial clock line
    wire                     o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    reg                      i_sd;//I2S serial data
	
    wire                     o_sck2;//Serial clock line
    wire                     o_ws2;//Write Select,a high indicates right channel and low indicates left channel    
    reg                      i_sd2;//I2S serial data
	
	
    
    wire [DATA_WIDTH - 1 : 0] horizontal_out;//Output left channel data to Host/Processor
  
    
	reg [31:0]  input_left_mem [0:20];
	reg [31:0]  input_right_mem [0:20];
	
	reg [31:0]  input_left_mem2 [0:20];
	reg [31:0]  input_right_mem2 [0:20];
	
	
	
   assign i_sys_rst = DUT.i_sys_rst;
   // defparam I2S_Controller_inst.I2S_Tx_Rx = I2S_Tx_Rx;
    defparam DUT.DATA_WIDTH = DATA_WIDTH; 
	
	//serial data generation
	reg [31:0] input_left_data_array;//= {32'b1000_0000_0000_0001_0000_0000_0000_0000};
    reg [31:0] input_right_data_array;// = {16'b0011_0011_0011_0011};
	reg [31:0] input_left_data_array2;//= {32'b1000_0000_0000_0001_0000_0000_0000_0000};
    reg [31:0] input_right_data_array2;// = {16'b0011_0011_0011_0011};
    reg [6:0]  count;
	reg [6:0]  count2;
	wire [DATA_WIDTH - 1 : 0] left_final,right_final;
	wire [DATA_WIDTH - 1 : 0] left_final2,right_final2;
//	reg  sd_right_rx_i;
    reg  sd_right_rx_i,sd_left_rx_i,ws_reg_i,i_sd_temp;
	reg  sd_right_rx_i2,sd_left_rx_i2,ws_reg_i2,i_sd_temp2;
    integer count_left,count_right;
	integer count_left2,count_right2;	
    
initial   
	begin
	$readmemh("right.list",input_right_mem);
	$readmemh("left.list",input_left_mem);
	end
initial   
	begin
	$readmemh("right.list",input_right_mem2);
	$readmemh("left.list",input_left_mem2);
	end



initial
begin
 rst_n=0;
 #50 rst_n=1;
 count_left=0;
 count_right=0;
end

initial
begin
 count_left2=0;
 count_right2=0;
end
 
always @ (o_ws)
	begin
	if(o_ws)
		begin
		if(count_right<20)
			begin
			count_right<=count_right+1;
			input_right_data_array<=input_right_mem[count_right];
			end
		else
			begin
			count_right=0;
			input_right_data_array<=input_right_mem[count_right];
	        end	
		end
	else
    begin
		if(count_left<20)
			begin
			count_left<=count_left+1;
			input_left_data_array<=input_left_mem[count_left];
			end
		else
			begin
			count_left=0;
			input_left_data_array<=input_left_mem[count_left];
	        end	
		end

	end	
	
always @ (o_ws2)
	begin
	if(o_ws2)
		begin
		if(count_right2<20)
			begin
			count_right2<=count_right2+1;
			input_right_data_array2<=input_right_mem2[count_right2];
			end
		else
			begin
			count_right2=0;
			input_right_data_array2<=input_right_mem2[count_right2];
	        end	
		end
	else
    begin
		if(count_left2<20)
			begin
			count_left2<=count_left2+1;
			input_left_data_array2<=input_left_mem2[count_left2];
			end
		else
			begin
			count_left2=0;
			input_left_data_array2<=input_left_mem2[count_left2];
	        end	
		end

	end	
	







always @(negedge o_sck or posedge i_sys_rst )
	begin
	if(i_sys_rst)
		count=0;
	else
		begin
		if(count<31)
			count=count+1;
		else 
			count=0;
		end
	end

always @(negedge o_sck2 or posedge i_sys_rst )
	begin
	if(i_sys_rst)
		count2=0;
	else
		begin
		if(count2<31)
			count2=count2+1;
		else 
			count2=0;
		end
	end



    always @(negedge o_sck or posedge i_sys_rst)
        begin
            if (i_sys_rst) begin
                sd_right_rx_i <= 1'b0; end
            else if (o_ws && count <= DATA_WIDTH - 1) 
                 begin
                       sd_right_rx_i <= input_right_data_array[31 - count];
                       
                end
				//else
				//	sd_right_rx_i <=0;
        end

 always @(negedge o_sck2 or posedge i_sys_rst)
        begin
            if (i_sys_rst) begin
                sd_right_rx_i2 <= 1'b0; end
            else if (o_ws2 && count2 <= DATA_WIDTH - 1) 
                 begin
                       sd_right_rx_i2 <= input_right_data_array2[31 - count];
                       
                end
				//else
				//	sd_right_rx_i <=0;
        end


     always @(negedge o_sck or posedge i_sys_rst)
        begin
            if (i_sys_rst) begin
                sd_left_rx_i <= 1'b0; end
            else if (!o_ws && count <= DATA_WIDTH - 1) 
                 begin
                    sd_left_rx_i <= input_left_data_array[31 -count];
                  end
				  
		   // else
			//	sd_left_rx_i <= 0;
        end

  always @(negedge o_sck2 or posedge i_sys_rst)
        begin
            if (i_sys_rst) begin
                sd_left_rx_i2 <= 1'b0; end
            else if (!o_ws2 && count2 <= DATA_WIDTH - 1) 
                 begin
                    sd_left_rx_i2 <= input_left_data_array2[31 -count];
                  end
				  
		   // else
			//	sd_left_rx_i <= 0;
        end

    always @ (*)
		i_sd_temp <= o_ws ? sd_right_rx_i : sd_left_rx_i;
	always @ (*)
		i_sd_temp2 <= o_ws2 ? sd_right_rx_i2 : sd_left_rx_i2;

        
	always @ (negedge o_sck)
		i_sd <= i_sd_temp;
		
	always @ (negedge o_sck2)
		i_sd2 <= i_sd_temp2;


//assign left_final=~(o_left_data-1);
//assign right_final=~(o_right_data-1);
 
endmodule
