
#Begin clock constraint
define_clock -name {up_down_counter|osc_clk_inferred_clock} {n:up_down_counter|osc_clk_inferred_clock} -period 60.132 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 30.066 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {up_down_counter|clk_derived_clock} {n:up_down_counter|clk_derived_clock} -period 1000.000 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 500.000 -route 0.000 
#End clock constraint
