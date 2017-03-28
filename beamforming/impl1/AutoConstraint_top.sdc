
#Begin clock constraint
define_clock -name {pll1|CLKOP_inferred_clock} {n:pll1|CLKOP_inferred_clock} -period 5.713 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 2.856 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {pll1|CLKOS_inferred_clock} {n:pll1|CLKOS_inferred_clock} -period 4.456 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.228 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {clk_div|clk_track_derived_clock} {n:clk_div|clk_track_derived_clock} -period 4.456 -clockgroup Autoconstr_clkgroup_1 -rise 0.000 -fall 2.228 -route 0.000 
#End clock constraint
