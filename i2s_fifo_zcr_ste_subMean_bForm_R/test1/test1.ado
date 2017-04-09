setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/SEC29/Desktop/i2s_iot/test1/test1.adf"]} { 
	design create test1 "C:/Users/SEC29/Desktop/i2s_iot"
  set newDesign 1
}
design open "C:/Users/SEC29/Desktop/i2s_iot/test1"
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
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_tx.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/I2S_Controller_tb.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/tasks.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/testcase.v"
vlib "C:/Users/SEC29/Desktop/i2s_iot/test1/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_tx.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/I2S_Controller_tb.v"
vlog -dbg "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/tasks.v"
vlog -dbg "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/testcase.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
