-- Simulate the design
vsim -L ovi_machxo2 -PL pmi_work +access +r tb_i2s
add wave *
run -all