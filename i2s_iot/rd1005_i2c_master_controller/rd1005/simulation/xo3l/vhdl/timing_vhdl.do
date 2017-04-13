set PROJ_DIR "ENTER simulation DIRECTORY PATH"

#Example:
#set PROJ_DIR D:\RD\Sandeep\RD1005\I2CInterIntegratedCircuitMasterControllerSourceCode\RD1005_i2c_master_controller\rd1005\simulation

cd $PROJ_DIR\xo3l\vhdl

if {![file exists timing_vhdl]} {
    vlib timing_vhdl 
}
endif

design create timing_vhdl .
design open timing_vhdl
adel -all

cd $PROJ_DIR\xo3l\vhdl

acom ../../../project/xo3l/vhdl/xo3l_vhdl/xo3l_vhdl_xo3l_vhdl_vho.vho


acom ../../../testbench/vhdl/ack_gen.vhd
acom ../../../testbench/vhdl/clk_reset.vhd
acom ../../../testbench/vhdl/i2c_slave.vhd
acom ../../../testbench/vhdl/pullup.vhd
acom ../../../testbench/vhdl/top_test_bench.vhd
acom ../../../testbench/vhdl/up_model.vhd


vsim +access +r top_test_bench -noglitch -L ovi_machxo3l -PL pmi_work +no_tchk_msg -sdfmax /top_test_bench/i2cblock = "../../../project/xo3l/vhdl/xo3l_vhdl/xo3l_vhdl_xo3l_vhdl_vho.sdf"

add wave *

run 1ms

