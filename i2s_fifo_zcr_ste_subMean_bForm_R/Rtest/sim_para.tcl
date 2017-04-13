lappend auto_path "C:/lscc/diamond/3.8_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {Rtest}
set ::bali::simulation::Para(PROJECTPATH) {D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R}
set ::bali::simulation::Para(FILELIST) {"D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/mult16_array.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness_signals.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/roughness.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/my_tb.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/beam_forming.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/rising_edge_det.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_submean.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/submean2.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/squares.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/ste.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/zcr.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_right.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/char_cntrl.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/fifo_left.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/i2s_rx.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/RD1171/source/Verilog/I2S_Controller.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/clkdiv.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/pll1.v" "D:/UIUC/2017_Spring/ECE_396/i2s_fifo_zcr_ste_subMean_bForm_R/top.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
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
