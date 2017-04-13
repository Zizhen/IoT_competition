lappend auto_path "C:/lscc/diamond/3.9_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {test_04_09}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/SEC29/Desktop/i2s_iot}
set ::bali::simulation::Para(FILELIST) {"C:/Users/SEC29/Desktop/i2s_iot/rising_edge_det.v" "C:/Users/SEC29/Desktop/i2s_iot/fifo_submean.v" "C:/Users/SEC29/Desktop/i2s_iot/submean2.v" "C:/Users/SEC29/Desktop/i2s_iot/squares.v" "C:/Users/SEC29/Desktop/i2s_iot/ste.v" "C:/Users/SEC29/Desktop/i2s_iot/zcr.v" "C:/Users/SEC29/Desktop/i2s_iot/fifo_right.v" "C:/Users/SEC29/Desktop/i2s_iot/fifo_left.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/i2s_rx.v" "C:/Users/SEC29/Desktop/i2s_iot/RD1171/source/Verilog/I2S_Controller.v" "C:/Users/SEC29/Desktop/i2s_iot/pll2.v" "C:/Users/SEC29/Desktop/i2s_iot/clkdiv.v" "C:/Users/SEC29/Desktop/i2s_iot/pll1.v" "C:/Users/SEC29/Desktop/i2s_iot/top.v" "C:/Users/SEC29/Desktop/i2s_iot/my_tb.v" "C:/Users/SEC29/Desktop/i2s_iot/char_cntrl.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
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
