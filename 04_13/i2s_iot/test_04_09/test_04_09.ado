setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/SEC29/Desktop/i2s_iot/test_04_09/test_04_09.adf"]} { 
	design create test_04_09 "C:/Users/SEC29/Desktop/i2s_iot"
  set newDesign 1
}
design open "C:/Users/SEC29/Desktop/i2s_iot/test_04_09"
cd "C:/Users/SEC29/Desktop/i2s_iot"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_ss_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_int_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_arb_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_cnt_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_clk_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_sync_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_main_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_mpu_blk.vhd"
addfile "C:/Users/SEC29/Desktop/i2s_iot/i2c_top.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/beamforming2.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/clasification.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/rising_edge_det.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/fifo_submean.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/submean2.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/squares.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/ste.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/zcr.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/fifo_left.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/fifo_right.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/fifo_horizontal.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/pll2.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/clkdiv.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/pll1.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/top.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/my_tb.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/char_cntrl.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/beamforming.v"
vlib "C:/Users/SEC29/Desktop/i2s_iot/test_04_09/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_ss_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_int_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_arb_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_cnt_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_clk_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_sync_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_main_blk.vhd"
vcom -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_mpu_blk.vhd"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/i2c_top.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/beamforming2.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/clasification.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/rising_edge_det.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/fifo_submean.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/submean2.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/squares.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/ste.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/zcr.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/fifo_left.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/fifo_right.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/fifo_horizontal.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/pll2.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/clkdiv.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/pll1.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/top.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/my_tb.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/char_cntrl.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/beamforming.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
