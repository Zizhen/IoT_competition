set PROJ_DIR "ENTER simulation DIRECTORY PATH"

#Example:
#set PROJ_DIR D:\RD\Sandeep\RD1005\I2CInterIntegratedCircuitMasterControllerSourceCode\RD1005_i2c_master_controller\rd1005\simulation

cd $PROJ_DIR\xo\vhdl

if {![file exists rtl_vhdl]} {
    vlib rtl_vhdl 
}
endif

design create rtl_vhdl .
design open rtl_vhdl
adel -all

cd $PROJ_DIR\xo\vhdl

acom ../../../source/vhdl/I2C_Arb_Blk.vhd
acom ../../../source/vhdl/I2C_Clk_Blk.vhd
acom ../../../source/vhdl/I2C_Cnt_Blk.vhd
acom ../../../source/vhdl/I2C_INT_Blk.vhd
acom ../../../source/vhdl/I2C_Main_Blk.vhd
acom ../../../source/vhdl/I2C_Mpu_Blk.vhd
acom ../../../source/vhdl/I2C_SS_Blk.vhd
acom ../../../source/vhdl/I2C_Synch_Blk.vhd
acom ../../../source/vhdl/I2C_Top.vhd

acom ../../../testbench/vhdl/ack_gen.vhd
acom ../../../testbench/vhdl/clk_reset.vhd
acom ../../../testbench/vhdl/i2c_slave.vhd
acom ../../../testbench/vhdl/pullup.vhd
acom ../../../testbench/vhdl/top_test_bench.vhd
acom ../../../testbench/vhdl/up_model.vhd

  



asim -O5 -L ovi_machxo -PL pmi_work +access +r top_test_bench

add wave *
add wave top_inst/

run 1ms
