
#Begin clock constraint
define_clock -name {pll1|CLKOS_inferred_clock} {n:pll1|CLKOS_inferred_clock} -period 5.665 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.832 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {pll2|CLKOS_inferred_clock} {n:pll2|CLKOS_inferred_clock} -period 3.728 -clockgroup Autoconstr_clkgroup_2 -rise 0.000 -fall 1.864 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {I2S_Controller_1|o_ws_derived_clock} {n:I2S_Controller_1|o_ws_derived_clock} -period 5.665 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.832 -route 0.000 
#End clock constraint
