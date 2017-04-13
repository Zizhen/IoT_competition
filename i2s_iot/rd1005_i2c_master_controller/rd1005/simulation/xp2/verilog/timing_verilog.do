set PROJ_DIR "ENTER simulation DIRECTORY PATH"

#Example:
#set PROJ_DIR D:\RD\Sandeep\RD1005\I2CInterIntegratedCircuitMasterControllerSourceCode\RD1005_i2c_master_controller\rd1005\simulation

cd $PROJ_DIR\xp2\verilog

if {![file exists timing_verilog]} {
    vlib timing_verilog 
}
endif

design create timing_verilog .
design open timing_verilog
adel -all

cd $PROJ_DIR\xp2\verilog

vlog ../../../project/xp2/verilog/xp2_verilog/xp2_verilog_xp2_verilog_vo.vo

vlog ../../../testbench/verilog/top_test_bench.v
acom ../../../testbench/verilog/ack_gen.vhd
acom ../../../testbench/verilog/clk_reset.vhd
acom ../../../testbench/verilog/i2c_slave.vhd
acom ../../../testbench/verilog/pullup.vhd
acom ../../../testbench/verilog/up_model.vhd

vsim -L ovi_xp2 -PL pmi_work +access +r top_test_bench -noglitch +no_tchk_msg -sdfmax /top_test_bench/U_I2C_Top = "../../../project/xp2/verilog/xp2_verilog/xp2_verilog_xp2_verilog_vo.sdf"



add wave *

run 1ms

