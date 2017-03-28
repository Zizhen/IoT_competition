#define_clock  {i_sck} -name  {i_sck} -freq  {2.5} -clockgroup  {default_clkgroup_0} 
define_clock  {p:i_sck} -name {i_sck} -freq {2.5} -clockgroup {default_clkgroup_0} 

#define_input_delay -disable  {-default} 
#define_output_delay -disable  {-default} 
#define_input_delay -disable  {i_sys_rst} 
#define_input_delay -disable  {i_ws} 
#define_input_delay -disable  {i_sd} 
#define_output_delay -disable  {o_left_data[15:0]} 
#define_output_delay -disable  {o_right_data[15:0]} 
#define_output_delay -disable  {o_left_vld} 
#define_output_delay -disable  {o_right_vld} 
#define_io_standard -disable -default_input -delay_type  {input} 
#define_io_standard -disable -default_output -delay_type  {output} 
#define_io_standard -disable -default_bidir -delay_type  {bidir} 
#define_io_standard -disable  {i_sys_rst} -delay_type  {input} 
#define_io_standard -disable  {i_ws} -delay_type  {input} 
#define_io_standard -disable  {i_sd} -delay_type  {input} 
#define_io_standard -disable  {o_left_data[15:0]} -delay_type  {output} 
#define_io_standard -disable  {o_right_data[15:0]} -delay_type  {output} 
#define_io_standard -disable  {o_left_vld} -delay_type  {output} 
#define_io_standard -disable  {o_right_vld} -delay_type  {output} 
