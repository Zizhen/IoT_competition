set PROJ_DIR "ENTER simulation DIRECTORY PATH HERE"

# Example: 
# set PROJ_DIR "D:\rd1101_i2s_master_controller\rd1101\simulation"

cd $PROJ_DIR/xo3l/vhdl

if {![file exists rtl_vhdl]} {
    vlib rtl_vhdl 
}
endif

design create rtl_vhdl .
design open rtl_vhdl
adel -all

cd $PROJ_DIR/xo3l/vhdl

acom ../../../source/vhdl/dpram_rtl.vhd
acom ../../../source/vhdl/gen_control_reg.vhd
acom ../../../source/vhdl/gen_event_reg.vhd
acom ../../../source/vhdl/i2s_codec.vhd
acom ../../../source/vhdl/i2s_topm.vhd
acom ../../../source/vhdl/rx_i2s_wbd.vhd
acom ../../../source/vhdl/tx_i2s_wbd.vhd

acom ../../../testbench/vhdl/tb_i2s.vhd

vsim +access +r tb_i2s behav -L machxo3l -PL pmi_work
add wave *
run 500 us

