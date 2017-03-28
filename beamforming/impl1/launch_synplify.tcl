#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file D:/UIUC/2017_Spring/ECE_396/beamforming/impl1/launch_synplify.tcl
#-- Written on Tue Mar 28 17:31:23 2017

project -close
set filename "D:/UIUC/2017_Spring/ECE_396/beamforming/impl1/impl1_syn.prj"
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
	set_option -frequency auto
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
set_option -include_path "D:/UIUC/2017_Spring/ECE_396/beamforming"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/I2S_Controller.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/i2s_rx.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/pll1.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/top.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_left.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_right.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/zcr.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/squares.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/ste.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/submean2.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_submean.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/rising_edge_det.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/clkdiv.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/char_cntrl.v"
add_file -verilog "D:/UIUC/2017_Spring/ECE_396/beamforming/beam_forming.v"
#-- top module name
set_option -top_module {top}
project -result_file {D:/UIUC/2017_Spring/ECE_396/beamforming/impl1/impl1.edi}
project -save "$filename"
