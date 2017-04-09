setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog/i2s_test/i2s_test.adf"]} { 
	design create i2s_test "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog"
  set newDesign 1
}
design open "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog/i2s_test"
cd "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/dpram_rtl.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/tx_i2s_wbd.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/testbench/verilog/tb_i2s.v"
vlib "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog/i2s_test/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/dpram_rtl.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/tx_i2s_wbd.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/testbench/verilog/tb_i2s.v"
module tb_i2s
vsim  +access +r tb_i2s   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
