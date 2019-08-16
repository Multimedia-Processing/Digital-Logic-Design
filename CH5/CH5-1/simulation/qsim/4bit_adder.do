onerror {exit -code 1}
vlib work
vlog -work work 4bit_adder.vo
vlog -work work 4bit_adder.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.4bit_adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction 4bit_adder.msim.vcd
vcd add -internal 4bit_adder_vlg_vec_tst/*
vcd add -internal 4bit_adder_vlg_vec_tst/i1/*
run -all
quit -f
