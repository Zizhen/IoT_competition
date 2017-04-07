lappend auto_path "C:/lscc/diamond/3.4/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {test1}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/SEC29/Desktop/i2s_iot}
set ::bali::simulation::Para(FILELIST) {"C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_tx.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/I2S_Controller_tb.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/tasks.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/testbench/Verilog/testcase.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "" "" "" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "none" "none" "none" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo3l}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {I2S_Controller_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
