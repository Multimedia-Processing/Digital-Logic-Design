	.file	"swap.c"
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
# swap/swap.c -march=rv64imafdc -mabi=lp64d -march=rv64imafdc
# -auxbase-strip swap/swap_o0.s -fverbose-asm
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
	.globl	swap
	.type	swap, @function
swap:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# v, v
	sd	a1,-48(s0)	# k, k
# swap/swap.c:5:     temp = v[k];
	ld	a5,-48(s0)		# tmp145, k
	slli	a5,a5,2	#, _1, tmp145
	ld	a4,-40(s0)		# tmp146, v
	add	a5,a4,a5	# _1, _2, tmp146
# swap/swap.c:5:     temp = v[k];
	lw	a5,0(a5)		# tmp147, *_2
	sw	a5,-20(s0)	# tmp147, temp
# swap/swap.c:6:     v[k] = v[k+1];
	ld	a5,-48(s0)		# tmp148, k
	addi	a5,a5,1	#, _3, tmp148
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp149, v
	add	a4,a4,a5	# _4, _5, tmp149
# swap/swap.c:6:     v[k] = v[k+1];
	ld	a5,-48(s0)		# tmp150, k
	slli	a5,a5,2	#, _6, tmp150
	ld	a3,-40(s0)		# tmp151, v
	add	a5,a3,a5	# _6, _7, tmp151
# swap/swap.c:6:     v[k] = v[k+1];
	lw	a4,0(a4)		# _8, *_5
# swap/swap.c:6:     v[k] = v[k+1];
	sw	a4,0(a5)	# _8, *_7
# swap/swap.c:7:     v[k+1] = temp;
	ld	a5,-48(s0)		# tmp152, k
	addi	a5,a5,1	#, _9, tmp152
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp153, v
	add	a5,a4,a5	# _10, _11, tmp153
# swap/swap.c:7:     v[k+1] = temp;
	lw	a4,-20(s0)		# tmp154, temp
	sw	a4,0(a5)	# tmp154, *_11
# swap/swap.c:8: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	swap, .-swap
	.align	1
	.globl	sort
	.type	sort, @function
sort:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# v, v
	sd	a1,-48(s0)	# n, n
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	sd	zero,-24(s0)	#, i
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	j	.L3		#
.L6:
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	ld	a5,-24(s0)		# tmp142, i
	addi	a5,a5,-1	#, tmp141, tmp142
	sd	a5,-32(s0)	# tmp141, j
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	j	.L4		#
.L5:
# swap/swap.c:14:             swap(v, j);
	ld	a1,-32(s0)		#, j
	ld	a0,-40(s0)		#, v
	call	swap		#
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	ld	a5,-32(s0)		# tmp144, j
	addi	a5,a5,-1	#, tmp143, tmp144
	sd	a5,-32(s0)	# tmp143, j
.L4:
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	ld	a5,-32(s0)		# tmp145, j
	slli	a5,a5,2	#, _1, tmp145
	ld	a4,-40(s0)		# tmp146, v
	add	a5,a4,a5	# _1, _2, tmp146
	lw	a3,0(a5)		# _3, *_2
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	ld	a5,-32(s0)		# tmp147, j
	addi	a5,a5,1	#, _4, tmp147
	slli	a5,a5,2	#, _5, _4
	ld	a4,-40(s0)		# tmp148, v
	add	a5,a4,a5	# _5, _6, tmp148
	lw	a5,0(a5)		# _7, *_6
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	mv	a4,a3	# tmp149, _3
	bgt	a4,a5,.L5	#, tmp149, tmp150,
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	ld	a5,-24(s0)		# tmp152, i
	addi	a5,a5,1	#, tmp151, tmp152
	sd	a5,-24(s0)	# tmp151, i
.L3:
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	ld	a4,-24(s0)		# tmp153, i
	ld	a5,-48(s0)		# tmp154, n
	bltu	a4,a5,.L6	#, tmp153, tmp154,
# swap/swap.c:17: }
	nop	
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	sort, .-sort
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
