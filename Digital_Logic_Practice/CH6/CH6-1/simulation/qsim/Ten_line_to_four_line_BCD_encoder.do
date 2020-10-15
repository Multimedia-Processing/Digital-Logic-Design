onerror {exit -code 1}
vlib work
vlog -work work Ten_line_to_four_line_BCD_encoder.vo
vlog -work work Ten_line_to_four_line_BCD_encoder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Ten_line_to_four_line_BCD_encoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction Ten_line_to_four_line_BCD_encoder.msim.vcd
vcd add -internal Ten_line_to_four_line_BCD_encoder_vlg_vec_tst/*
vcd add -internal Ten_line_to_four_line_BCD_encoder_vlg_vec_tst/i1/*
run -all
quit -f
