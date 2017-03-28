-- Simulate the design
vsim +access +r tb_i2s ben -L machxo2 -PL pmi_work
add wave *
run 500 us

