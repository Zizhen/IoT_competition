setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/SEC29/Desktop/i2s_iot/my_test2/my_test2.adf"]} { 
	design create my_test2 "C:/Users/SEC29/Desktop/i2s_iot"
  set newDesign 1
}
design open "C:/Users/SEC29/Desktop/i2s_iot/my_test2"
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
addfile "C:/Users/SEC29/Desktop/i2s_iot/pll1.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
addfile "C:/Users/SEC29/Desktop/i2s_iot/my_tb.v"
vlib "C:/Users/SEC29/Desktop/i2s_iot/my_test2/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/pll1.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v"
vlog -dbg -work work "C:/Users/SEC29/Desktop/i2s_iot/my_tb.v"
module I2S_Controller_tb
vsim  +access +r I2S_Controller_tb   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
