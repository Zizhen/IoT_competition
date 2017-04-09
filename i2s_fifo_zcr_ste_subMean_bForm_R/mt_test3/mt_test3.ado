setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/UIUC/2017_Spring/ECE_396/IoT_competition/mt_test3/mt_test3.adf"]} { 
	design create mt_test3 "D:/UIUC/2017_Spring/ECE_396/IoT_competition"
  set newDesign 1
}
design open "D:/UIUC/2017_Spring/ECE_396/IoT_competition/mt_test3"
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
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/i2s_rx.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/pll1.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/I2S_Controller.v"
addfile "D:/UIUC/2017_Spring/ECE_396/IoT_competition/my_tb.v"
vlib "D:/UIUC/2017_Spring/ECE_396/IoT_competition/mt_test3/work"
set worklib work
adel -all
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/pll1.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "D:/UIUC/2017_Spring/ECE_396/IoT_competition/my_tb.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
