# =============================================================================
#                           COPYRIGHT NOTICE
# Copyright 2012 (c) Lattice Semiconductor Corporation
# ALL RIGHTS RESERVED
# This confidential and proprietary software may be used only as authorised by
# a licensing agreement from Lattice Semiconductor Corporation.
# The entire notice above must be reproduced on all authorized copies and
# copies may only be made to the extent permitted by a licensing agreement from
# Lattice Semiconductor Corporation.
#
# Lattice Semiconductor Corporation        TEL : 1-800-Lattice (USA and Canada)
# 5555 NE Moore Court                            503-268-8001 (other locations)
# Hillsboro, OR 97124                     web  : http:www.latticesemi.com/
# U.S.A                                   email: techsupport@latticesemi.com
# =============================================================================
#                         FILE DETAILS
# Projec2t         : RD1171 Simulation Script (Aldec)
# File             : RD1171.do 
# Title            :
# Dependencies     : 
# Description      :
# =============================================================================
#                        REVISION HISTORY
# Version          : 1
# Author(s)        : Apps
# Mod. Date        : September, 2012
# Changes Made     :
#
# =============================================================================

# To successfully run this script, make the following change:
# 1. Update the "path"  "<User Directory Path>\RD1171\Project" with your directory path.

set path C:\Users\sgomkale\Desktop\completed RDs\RD1171\project
cd $path

design create aldec_sim $path
design open aldec_sim

adel -all
cd $path

alog -O2 -sve  -work aldec_sim /../../source/Verilog/I2S_Controller.v \
/../../source/Verilog/i2s_rx.v \
/../../source/Verilog/i2s_tx.v \
/../../testbench/Verilog/I2S_Controller_tb.v

asim -O5 -L ovi_ice -L ice +access +r I2S_Controller_tb

add wave /I2S_Controller_tb/*

run 10ms