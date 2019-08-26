onerror {exit -code 1}
vlib work
vlog -work work four_bit_add_sub.vo
vlog -work work four_bit_add_sub.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.four_bit_add_sub_vlg_vec_tst -voptargs="+acc"
vcd file -direction four_bit_add_sub.msim.vcd
vcd add -internal four_bit_add_sub_vlg_vec_tst/*
vcd add -internal four_bit_add_sub_vlg_vec_tst/i1/*
run -all
quit -f
