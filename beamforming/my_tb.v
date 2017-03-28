`timescale 1ns/1ps
//timescale time_unit/time_precision

//`define I2S_Tx_Rx

module I2S_Controller_tb;

    
    //--------------------------------------------------------------------------------------------------
    // Parameter declarations
    //--------------------------------------------------------------------------------------------------
    // parameter I2S_Tx_Rx = 0;
    parameter DATA_WIDTH=16;
    
    // parameter SYS_CLK_PERIOD = 20;
    
    
    //--------------------------------------------------------------------------------------------------
    // DUT instance
    //--------------------------------------------------------------------------------------------------

 
    top DUT(
                          .rst(rst),
                          .i_sd2(i_sd),
                          .o_sck(o_sck),
                          .o_ws2(o_ws),
						  .horizontal_out(horizontal_out),
                          .o_left_data2(o_left_data2),
                          .o_right_data2(o_right_data2),
                          .o_left_vld2(o_left_vld2),
                          .o_right_vld2(o_right_vld2),
			 			  .led_pattern(led_pattern),
						  .beam_forming_valid(beam_forming_valid)
                       );
	
					   
	GSR GSR_INST ( .GSR(1)); 
    PUR PUR_INST ( .PUR(1)); 

    reg                      rst;//reset
    wire                     o_sck;//Serial clock line
    wire                     o_ws;//Write Select,a high indicates right channel and low indicates left channel    
    reg                      i_sd;//I2S serial data
    
    wire [DATA_WIDTH - 1 : 0] horizontal_out;//Output left channel data to Host/Processor
    wire [DATA_WIDTH - 1 : 0] o_left_data2;//Output left channel data to Host/Processor
    wire [DATA_WIDTH - 1 : 0] o_right_data2;//Output right channel data to Host/Processor
    wire                      o_left_vld2;
    wire                      o_right_vld2;
    
	reg [15:0]  input_left_mem [0:15];
	reg [15:0]  input_right_mem [0:15];
	
	wire [7:0]			led_pattern;
	wire				beam_forming_valid;
	
	
   assign i_sys_rst = DUT.i_sys_rst;
   // defparam I2S_Controller_inst.I2S_Tx_Rx = I2S_Tx_Rx;
    defparam DUT.DATA_WIDTH = DATA_WIDTH; 
	
	//serial data generation
	reg [15:0] input_left_data_array= {16'b1000_0000_0000_0001};
    reg [15:0] input_right_data_array;// = {16'b0011_0011_0011_0011};
    reg [6:0]  count;
	wire [DATA_WIDTH - 1 : 0] left_final,right_final;
//	reg  sd_right_rx_i;
    reg  sd_right_rx_i,sd_left_rx_i,ws_reg_i,i_sd_temp;
    integer count_left,count_right;	

initial   
	begin
	$readmemh("right.list",input_right_mem);
	$readmemh("left.list",input_left_mem);
	end



initial
begin
 rst=1;
 #50 rst=0;
 count_left=0;
 count_right=0;
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
	

always @(negedge o_sck or posedge i_sys_rst )
	begin
	if(i_sys_rst)
		count=0;
	else
		begin
		if(count<15)
			count=count+1;
		else 
			count=0;
		end
	end

//always @(posedge o_sck or posedge i_sys_rst)
//        begin
//            if (i_sys_rst)
//                ws_reg_i <= 1'b0;
//            else
//                ws_reg_i <= o_ws;
//        end
//

    always @(negedge o_sck or posedge i_sys_rst)
        begin
            if (i_sys_rst) begin
                sd_right_rx_i <= 1'b0; end
            else if (o_ws && count <= DATA_WIDTH - 1) 
                 begin
                       sd_right_rx_i <= input_right_data_array[15 - count];
                       
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
                    sd_left_rx_i <= input_left_data_array[15 -count];
                  end
				  
			// else
			//	sd_left_rx_i <= 0;
        end

    always @ (*)
		i_sd_temp <= o_ws ? sd_right_rx_i : sd_left_rx_i;

        
	always @ (negedge o_sck)
		i_sd <= i_sd_temp;


assign left_final=~(o_left_data2-1);
assign right_final=~(o_right_data2-1);
 
endmodule
