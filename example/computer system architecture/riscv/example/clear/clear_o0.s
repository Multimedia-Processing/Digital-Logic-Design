	.file	"clear.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (SiFive GCC-Metal 10.2.0-2020.12.8) version 10.2.0 (riscv64-unknown-elf)
#	compiled by GNU C version 10.2.0, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -imultilib rv64imafdc/lp64d
# -iprefix c:\install\sifive\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8\bin\../lib/gcc/riscv64-unknown-elf/10.2.0/
# -isysroot c:\install\sifive\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8\bin\../riscv64-unknown-elf
# clear/clear.c -march=rv64imafdc -mabi=lp64d -march=rv64imafdc
# -auxbase-strip clear/clear_o0.s -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fallocation-dce
# -fauto-inc-dec -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -fmath-errno -fmerge-debug-strings -fpeephole -fplt
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mdiv -mexplicit-relocs -mfdiv -mplt
# -mriscv-attribute -mstrict-align

	.text
	.align	1
	.globl	clear1
	.type	clear1, @function
clear1:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# array, array
	sd	a1,-48(s0)	# size, size
# clear/clear.c:5:     for (i=0; i<size; i++) {
	sd	zero,-24(s0)	#, i
# clear/clear.c:5:     for (i=0; i<size; i++) {
	j	.L2		#
.L3:
# clear/clear.c:6:         array[i] = 0;
	ld	a5,-24(s0)		# tmp136, i
	slli	a5,a5,2	#, _1, tmp136
	ld	a4,-40(s0)		# tmp137, array
	add	a5,a4,a5	# _1, _2, tmp137
# clear/clear.c:6:         array[i] = 0;
	sw	zero,0(a5)	#, *_2
# clear/clear.c:5:     for (i=0; i<size; i++) {
	ld	a5,-24(s0)		# tmp139, i
	addi	a5,a5,1	#, tmp138, tmp139
	sd	a5,-24(s0)	# tmp138, i
.L2:
# clear/clear.c:5:     for (i=0; i<size; i++) {
	ld	a4,-24(s0)		# tmp140, i
	ld	a5,-48(s0)		# tmp141, size
	bltu	a4,a5,.L3	#, tmp140, tmp141,
# clear/clear.c:8: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	clear1, .-clear1
	.align	1
	.globl	clear2
	.type	clear2, @function
clear2:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# array, array
	sd	a1,-48(s0)	# size, size
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	ld	a5,-40(s0)		# tmp136, array
	sd	a5,-24(s0)	# tmp136, p
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	j	.L5		#
.L6:
# clear/clear.c:13:         *p = 0;
	ld	a5,-24(s0)		# tmp137, p
	sw	zero,0(a5)	#, *p_3
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	ld	a5,-24(s0)		# tmp139, p
	addi	a5,a5,4	#, tmp138, tmp139
	sd	a5,-24(s0)	# tmp138, p
.L5:
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	ld	a5,-48(s0)		# tmp140, size
	slli	a5,a5,2	#, _1, tmp140
	ld	a4,-40(s0)		# tmp141, array
	add	a5,a4,a5	# _1, _2, tmp141
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	ld	a4,-24(s0)		# tmp142, p
	bltu	a4,a5,.L6	#, tmp142, _2,
# clear/clear.c:15: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	clear2, .-clear2
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
