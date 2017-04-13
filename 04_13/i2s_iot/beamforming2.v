module beamforming2
( compute_clk,
  clk,
  left_data_in,
  right_data_in,
  trigger,
  reset,
  led_pattern,
  beam_forming_valid

);

parameter DATA_WIDTH= 16;
parameter window_size = 30;
parameter idle=3'd0;
parameter fill=3'd1;
parameter compute_diff=3'd2;
parameter compute_add=3'd3;
parameter done_state=3'd4;


input compute_clk;
input clk;
input [DATA_WIDTH-1 : 0] left_data_in;
input [DATA_WIDTH-1 : 0] right_data_in;
input reset;
input trigger;
output reg [7:0] led_pattern;
output reg beam_forming_valid;

reg [3:0] state,next_state;
reg [5:0] index;

reg [15:0] right_data_storage [0:89];
reg [15:0] left_data_storage  [0:89];
reg [30:0]  difference[0:29];
reg [31:0]  sum,sum_temp;
reg [7:0] phase_diff_LUT[0:59];


initial begin
	phase_diff_LUT[0] = 8'h01;
	phase_diff_LUT[1] = 8'h01;
	phase_diff_LUT[2] = 8'h01;
	phase_diff_LUT[3] = 8'h01;
	phase_diff_LUT[4] = 8'h02;
	phase_diff_LUT[5] = 8'h02;
	phase_diff_LUT[6] = 8'h02;
	phase_diff_LUT[7] = 8'h02;
	phase_diff_LUT[8] = 8'h02;
	phase_diff_LUT[9] = 8'h02;
	phase_diff_LUT[10] = 8'h02;
	phase_diff_LUT[11] = 8'h04;
	phase_diff_LUT[12] = 8'h04;
	phase_diff_LUT[13] = 8'h04;
	phase_diff_LUT[14] = 8'h04;
	phase_diff_LUT[15] = 8'h04;
	phase_diff_LUT[16] = 8'h04;
	phase_diff_LUT[17] = 8'h04;
	phase_diff_LUT[18] = 8'h04;
	phase_diff_LUT[19] = 8'h04;
	phase_diff_LUT[20] = 8'h04;
	phase_diff_LUT[21] = 8'h08;
	phase_diff_LUT[22] = 8'h08;
	phase_diff_LUT[23] = 8'h08;
	phase_diff_LUT[24] = 8'h08;
	phase_diff_LUT[25] = 8'h08;
	phase_diff_LUT[26] = 8'h08;
	phase_diff_LUT[27] = 8'h08;
	phase_diff_LUT[28] = 8'h08;
	phase_diff_LUT[29] = 8'h08;
	phase_diff_LUT[30] = 8'h08;
	phase_diff_LUT[31] = 8'h10;
	phase_diff_LUT[32] = 8'h10;
	phase_diff_LUT[33] = 8'h10;
	phase_diff_LUT[34] = 8'h10;
	phase_diff_LUT[35] = 8'h10;
	phase_diff_LUT[36] = 8'h10;
	phase_diff_LUT[37] = 8'h10;
	phase_diff_LUT[38] = 8'h10;
	phase_diff_LUT[39] = 8'h10;
	phase_diff_LUT[40] = 8'h10;
	phase_diff_LUT[41] = 8'h20;
	phase_diff_LUT[42] = 8'h20;
	phase_diff_LUT[43] = 8'h20;
	phase_diff_LUT[44] = 8'h20;
	phase_diff_LUT[45] = 8'h20;
	phase_diff_LUT[46] = 8'h20;
	phase_diff_LUT[47] = 8'h20;
	phase_diff_LUT[48] = 8'h20;
	phase_diff_LUT[49] = 8'h20;
	phase_diff_LUT[50] = 8'h20;
	phase_diff_LUT[51] = 8'h40;
	phase_diff_LUT[52] = 8'h40;
	phase_diff_LUT[53] = 8'h40;
	phase_diff_LUT[54] = 8'h40;
	phase_diff_LUT[55] = 8'h40;
	phase_diff_LUT[56] = 8'h40;
	phase_diff_LUT[57] = 8'h40;
	phase_diff_LUT[58] = 8'h80;
	phase_diff_LUT[59] = 8'h80;
	phase_diff_LUT[60] = 8'h80;
end

always @ (*)
	led_pattern=phase_diff_LUT[index];

integer inner_loop,inner_loop2,outer_loop;
integer i,j;

always @ (*) begin
	next_state=idle;
	case(state)
		idle:next_state=fill;
	    fill: begin
			if(trigger)
				next_state=compute_diff;
			else
				next_state=fill;
	    end
		compute_diff:begin
			
				next_state=compute_add;
			end
		compute_add:begin
			if(beam_forming_valid)
				next_state=done_state;
			else 
				next_state=compute_diff;
				end
		done_state:
			next_state=done_state;
	endcase
end

always @ (posedge clk)
  begin 
    if (reset == 1'b1) begin
      state <=    idle;
    end else begin
      state <=   next_state;
    end
  end
  
  
always @(posedge clk or posedge reset) begin
	if (reset) begin
		//beam_forming_valid=0;
	end
	else begin
		case (state)
			idle: begin
		    for (i=0;i<=90;i=i+1)
			begin
			left_data_storage[i]<=0;
			right_data_storage[i]<=0;
			end
		end
	 fill:begin
		left_data_storage[0]<=left_data_in;
		right_data_storage[0]<=right_data_in;
		for (i=1;i<90;i=i+1)begin
			left_data_storage[i]<=left_data_storage[i-1];
		end
		for (i=1;i<90;i=i+1)begin
			right_data_storage[i]<=right_data_storage[i-1];
		end
	end
  endcase
  end
end

always @ (posedge clk or posedge reset) begin
	if(reset) begin
		beam_forming_valid=0;
		index=0;
		inner_loop=0;
		outer_loop=0;
		for (i=1;i<30;i=i+1)begin
			difference[i]<=0;
		end
		sum=32'hffffffff;
		sum_temp=0;
		
	end
	else begin
		case(state)
			compute_diff:begin
				for(inner_loop=0;inner_loop<30;inner_loop=inner_loop+1)begin
					difference[inner_loop]=left_data_storage[30+inner_loop+outer_loop]-right_data_storage[inner_loop+outer_loop];
				end
				outer_loop=outer_loop+1;
				sum_temp=0;
			end
		  compute_add:begin
				for(inner_loop2=0;inner_loop2<30;inner_loop2=inner_loop2+1)begin
					sum_temp=difference[inner_loop2]+sum_temp;
				end
				if(sum_temp<sum)
					begin
					sum=sum_temp;
					index=outer_loop;
				end
				if(outer_loop>59)
					beam_forming_valid=1;
			end
		endcase
	end
end 

endmodule
