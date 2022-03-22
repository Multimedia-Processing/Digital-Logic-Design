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
# -auxbase-strip clear/clear_o1.s -O1 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fallocation-dce
# -fauto-inc-dec -fbranch-count-reg -fcombine-stack-adjustments
# -fcompare-elim -fcprop-registers -fdefer-pop -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fforward-propagate
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-unique
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -finline -finline-atomics -finline-functions-called-once -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-reference-addressable
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
# -freorder-blocks -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsection-anchors -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-ter -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss -mdiv
# -mexplicit-relocs -mfdiv -mplt -mriscv-attribute -mstrict-align

	.text
	.align	1
	.globl	clear1
	.type	clear1, @function
clear1:
# clear/clear.c:5:     for (i=0; i<size; i++) {
	beq	a1,zero,.L1	#, size,,
	mv	a5,a0	# ivtmp.7, array
	slli	a1,a1,2	#, tmp140, size
	add	a0,a0,a1	# tmp140, _17, array
.L3:
# clear/clear.c:6:         array[i] = 0;
	sw	zero,0(a5)	#, MEM[base: _10, offset: 0B]
# clear/clear.c:5:     for (i=0; i<size; i++) {
	addi	a5,a5,4	#, ivtmp.7, ivtmp.7
	bne	a5,a0,.L3	#, ivtmp.7, _17,
.L1:
# clear/clear.c:8: }
	ret	
	.size	clear1, .-clear1
	.align	1
	.globl	clear2
	.type	clear2, @function
clear2:
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	slli	a1,a1,2	#, tmp138, tmp140
	add	a1,a0,a1	# tmp138, _13, array
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	bgeu	a0,a1,.L5	#, array, _13,
.L7:
# clear/clear.c:13:         *p = 0;
	sw	zero,0(a0)	#, MEM[base: p_14, offset: 0B]
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	addi	a0,a0,4	#, array, array
# clear/clear.c:12:     for (p=array; p<array+size; p++) {
	bltu	a0,a1,.L7	#, array, _13,
.L5:
# clear/clear.c:15: }
	ret	
	.size	clear2, .-clear2
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
