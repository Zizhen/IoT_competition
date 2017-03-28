setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/UIUC/2017_Spring/ECE_396/beamforming/test/test.adf"]} { 
	design create test "D:/UIUC/2017_Spring/ECE_396/beamforming"
  set newDesign 1
}
design open "D:/UIUC/2017_Spring/ECE_396/beamforming/test"
cd "D:/UIUC/2017_Spring/ECE_396/beamforming"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/beam_forming.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/my_tb.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/rising_edge_det.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_submean.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/submean2.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/squares.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/ste.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/zcr.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_right.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/char_cntrl.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_left.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/i2s_rx.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/I2S_Controller.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/clkdiv.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/pll1.v"
addfile "D:/UIUC/2017_Spring/ECE_396/beamforming/top.v"
vlib "D:/UIUC/2017_Spring/ECE_396/beamforming/test/work"
set worklib work
adel -all
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/beam_forming.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/my_tb.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/rising_edge_det.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_submean.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/submean2.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/squares.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/ste.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/zcr.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_right.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/char_cntrl.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/fifo_left.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/clkdiv.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/pll1.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/beamforming/top.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
