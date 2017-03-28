setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/UIUC/2017_Spring/ECE_396/IoT_competition/test/test.adf"]} { 
	design create test "D:/UIUC/2017_Spring/ECE_396/IoT_competition"
  set newDesign 1
}
design open "D:/UIUC/2017_Spring/ECE_396/IoT_competition/test"
cd "D:/UIUC/2017_Spring/ECE_396/IoT_competition"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/beam_forming.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/rising_edge_det.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_submean.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/submean2.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/squares.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/ste.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/zcr.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_right.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/char_cntrl.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_left.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/i2s_rx.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/I2S_Controller.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/clkdiv.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/pll1.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/top.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/my_tb.v"
vlib "D:/UIUC/2017_Spring/ECE_396/IoT_competition/test/work"
set worklib work
adel -all
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/beam_forming.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/rising_edge_det.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_submean.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/submean2.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/squares.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/ste.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/zcr.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_right.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/char_cntrl.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/fifo_left.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/clkdiv.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/pll1.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/top.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/my_tb.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
