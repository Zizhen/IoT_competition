lappend auto_path "C:/lscc/diamond/3.4/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {i2s_test}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/project/xo3l/verilog}
set ::bali::simulation::Para(FILELIST) {"C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_codec.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/dpram_rtl.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_event_reg.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/gen_control_reg.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/tx_i2s_wbd.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/rx_i2s_wbd.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/source/verilog/i2s_topm.v" "C:/Users/SEC29/Desktop/i2s_iot/rd1101_i2s_master_controller/rd1101/testbench/verilog/tb_i2s.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo3l}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {tb_i2s}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
