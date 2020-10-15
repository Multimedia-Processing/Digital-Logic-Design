onerror {exit -code 1}
vlib work
vlog -work work ten_line_to_four_line_BCD_priority_encoder.vo
vlog -work work ten_line_to_four_line_BCD_priority_encoder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ten_line_to_four_line_BCD_priority_encoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction ten_line_to_four_line_BCD_priority_encoder.msim.vcd
vcd add -internal ten_line_to_four_line_BCD_priority_encoder_vlg_vec_tst/*
vcd add -internal ten_line_to_four_line_BCD_priority_encoder_vlg_vec_tst/i1/*
run -all
quit -f
