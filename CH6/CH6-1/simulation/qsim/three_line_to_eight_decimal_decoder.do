onerror {exit -code 1}
vlib work
vlog -work work three_line_to_eight_decimal_decoder.vo
vlog -work work three_line_to_eight_decimal_decoder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.three_line_to_eight_decimal_decoder_vlg_vec_tst -voptargs="+acc"
vcd file -direction three_line_to_eight_decimal_decoder.msim.vcd
vcd add -internal three_line_to_eight_decimal_decoder_vlg_vec_tst/*
vcd add -internal three_line_to_eight_decimal_decoder_vlg_vec_tst/i1/*
run -all
quit -f
