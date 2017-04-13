set PROJ_DIR "ENTER simulation DIRECTORY PATH"

#Example:
#set PROJ_DIR D:\RD\Sandeep\RD1005\I2CInterIntegratedCircuitMasterControllerSourceCode\RD1005_i2c_master_controller\rd1005\simulation

cd $PROJ_DIR\lptm\verilog

if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $PROJ_DIR\lptm\verilog					   

vlog ../../../source/verilog/i2c_top.v
acom ../../../source/vhdl/I2C_Arb_Blk.vhd
acom ../../../source/vhdl/I2C_Clk_Blk.vhd
acom ../../../source/vhdl/I2C_Cnt_Blk.vhd
acom ../../../source/vhdl/I2C_INT_Blk.vhd
acom ../../../source/vhdl/I2C_Main_Blk.vhd
acom ../../../source/vhdl/I2C_Mpu_Blk.vhd
acom ../../../source/vhdl/I2C_SS_Blk.vhd
acom ../../../source/vhdl/I2C_Synch_Blk.vhd


vlog ../../../testbench/verilog/top_test_bench.v
acom ../../../testbench/verilog/ack_gen.vhd
acom ../../../testbench/verilog/clk_reset.vhd
acom ../../../testbench/verilog/i2c_slave.vhd
acom ../../../testbench/verilog/pullup.vhd
acom ../../../testbench/verilog/up_model.vhd


asim -O5 -L ovi_lptm -PL pmi_work +access +r top_test_bench

add wave *
add wave top_inst/

run 1ms
