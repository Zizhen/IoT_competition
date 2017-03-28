set PROJ_DIR "ENTER simulation DIRECTORY PATH HERE"

# Example:
# set PROJ_DIR "D:\rd1101_i2s_master_controller\rd1101\simulation"

cd $PROJ_DIR/xo3l/verilog

if {![file exists rtl_verilog]} {
    vlib rtl_verilog 
}
endif

design create rtl_verilog .
design open rtl_verilog
adel -all

cd $PROJ_DIR/xo3l/verilog

vlog -dbg  ../../../source/verilog/dpram_rtl.v
vlog -dbg  ../../../source/verilog/gen_control_reg.v
vlog -dbg  ../../../source/verilog/gen_event_reg.v
vlog -dbg  ../../../source/verilog/i2s_codec.v
vlog -dbg  ../../../source/verilog/i2s_topm.v
vlog -dbg  ../../../source/verilog/rx_i2s_wbd.v
vlog -dbg  ../../../source/verilog/tx_i2s_wbd.v

vlog -dbg  ../../../testbench/verilog/tb_i2s.v


vsim +access +r  -L ovi_machxo3l -PL pmi_work +access +r tb_i2s
add wave *
run -all