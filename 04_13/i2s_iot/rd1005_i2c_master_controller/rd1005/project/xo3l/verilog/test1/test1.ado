setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/project/xo3l/verilog/test1/test1.adf"]} { 
	design create test1 "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/project/xo3l/verilog"
  set newDesign 1
}
design open "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/project/xo3l/verilog/test1"
cd "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/project/xo3l/verilog"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_ss_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_int_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_arb_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_cnt_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_clk_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_synch_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_main_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_mpu_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/verilog/i2c_top.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/i2c_slave.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/ack_gen.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench_4k.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/clk_reset.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/pullup.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/up_model.vhd"
vlib "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/project/xo3l/verilog/test1/work"
set worklib work
adel -all
vlog -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench.v"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_ss_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_int_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_arb_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_cnt_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_clk_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_synch_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_main_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/vhdl/i2c_mpu_blk.vhd"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/source/verilog/i2c_top.v"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/i2c_slave.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/ack_gen.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench_4k.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/clk_reset.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/top_test_bench.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/pullup.vhd"
vcom -dbg "C:/Users/SEC29/Desktop/i2s_iot/rd1005_i2c_master_controller/rd1005/testbench/verilog/up_model.vhd"
module top_test_bench
vsim  +access +r top_test_bench   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
