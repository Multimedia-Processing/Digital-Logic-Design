onerror {exit -code 1}
vlib work
vlog -work work enight_to_three_priority_encoder.vo
vlog -work work enight_to_three_priority_encoder.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.enight_to_three_priority_encoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction enight_to_three_priority_encoder.msim.vcd
vcd add -internal enight_to_three_priority_encoder_vlg_vec_tst/*
vcd add -internal enight_to_three_priority_encoder_vlg_vec_tst/i1/*
run -all
quit -f
