onerror {exit -code 1}
vlib work
vlog -work work BCD_seven_seg_A.vo
vlog -work work BCD_seven_seg_A.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.BCD_seven_seg_A_vlg_vec_tst -voptargs="+acc"
vcd file -direction BCD_seven_seg_A.msim.vcd
vcd add -internal BCD_seven_seg_A_vlg_vec_tst/*
vcd add -internal BCD_seven_seg_A_vlg_vec_tst/i1/*
run -all
quit -f
