#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/Users/SEC29/Desktop/i2s_iot/impl1/launch_synplify.tcl
#-- Written on Wed Apr 12 11:24:04 2017

project -close
set filename "C:/Users/SEC29/Desktop/i2s_iot/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO3L
set_option -part LCMXO3L_6900C
set_option -package BG256C
set_option -speed_grade -5

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 1
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	set_option -frequency 1
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
}
#-- add_file options
set_option -include_path "C:/Users/SEC29/Desktop/i2s_iot"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/pll1.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/top.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/fifo_left.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/fifo_right.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/zcr.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/squares.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/ste.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/submean2.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/fifo_submean.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/rising_edge_det.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/clkdiv.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/char_cntrl.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/pll2.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/clasification.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/i2c_top.v"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_arb_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_clk_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_cnt_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_int_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_main_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_mpu_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_ss_blk.vhd"
add_file -vhdl -lib "work" "C:/Users/SEC29/Desktop/i2s_iot/i2c_sync_blk.vhd"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/beamforming.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/fifo_horizontal.v"
add_file -verilog "C:/Users/SEC29/Desktop/i2s_iot/beamforming2.v"
#-- top module name
set_option -top_module {top}
project -result_file {C:/Users/SEC29/Desktop/i2s_iot/impl1/impl1.edi}
project -save "$filename"
