setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/test/test.adf"]} { 
	design create test "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy"
  set newDesign 1
}
design open "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/test"
cd "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/beam_forming.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/my_tb.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/rising_edge_det.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_submean.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/submean2.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/squares.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/ste.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/zcr.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_right.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/char_cntrl.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_left.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/RD1171/source/Verilog/i2s_rx.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/RD1171/source/Verilog/I2S_Controller.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/clkdiv.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/pll1.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/top.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/mult16_array.v"
vlib "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/test/work"
set worklib work
adel -all
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/beam_forming.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/my_tb.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/rising_edge_det.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_submean.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/submean2.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/squares.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/ste.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/zcr.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_right.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/char_cntrl.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/fifo_left.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/clkdiv.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/pll1.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/top.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming - Copy/mult16_array.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
