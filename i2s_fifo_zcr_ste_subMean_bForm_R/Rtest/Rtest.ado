setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/Rtest/Rtest.adf"]} { 
	design create Rtest "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R"
  set newDesign 1
}
design open "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/Rtest"
cd "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/mult16_array.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness_signals.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/my_tb.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/beam_forming.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/rising_edge_det.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_submean.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/submean2.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/squares.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/ste.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/zcr.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_right.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/char_cntrl.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_left.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/i2s_rx.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/I2S_Controller.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/clkdiv.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/pll1.v"
addfile "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/top.v"
vlib "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/Rtest/work"
set worklib work
adel -all
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/mult16_array.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness_signals.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/my_tb.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/beam_forming.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/rising_edge_det.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_submean.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/submean2.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/squares.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/ste.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/zcr.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_right.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/char_cntrl.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_left.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/clkdiv.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/pll1.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/top.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
