transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/timmy/Git/Learn-VHDL/Verilog/CH2/and_gate/and_gate.srcs/sources_1/new {/home/timmy/Git/Learn-VHDL/Verilog/CH2/and_gate/and_gate.srcs/sources_1/new/and_gate.v}

