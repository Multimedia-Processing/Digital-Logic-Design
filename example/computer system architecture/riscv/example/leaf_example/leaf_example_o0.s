	.file	"leaf_example.c"
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
# leaf_example/leaf_example.c -march=rv64imafdc -mabi=lp64d
# -march=rv64imafdc -auxbase-strip leaf_example/leaf_example_o0.s
# -fverbose-asm
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
	.globl	leaf_example
	.type	leaf_example, @function
leaf_example:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp138, g
	mv	a4,a3	# tmp144, j
	sw	a5,-36(s0)	# tmp139, g
	mv	a5,a1	# tmp141, tmp140
	sw	a5,-40(s0)	# tmp141, h
	mv	a5,a2	# tmp143, tmp142
	sw	a5,-44(s0)	# tmp143, i
	mv	a5,a4	# tmp145, tmp144
	sw	a5,-48(s0)	# tmp145, j
# leaf_example/leaf_example.c:3:     f = (g+h)-(i+j);
	lw	a4,-36(s0)		# tmp147, g
	lw	a5,-40(s0)		# tmp148, h
	addw	a5,a4,a5	# tmp148, tmp146, tmp147
	sext.w	a4,a5	# _1, tmp146
# leaf_example/leaf_example.c:3:     f = (g+h)-(i+j);
	lw	a3,-44(s0)		# tmp150, i
	lw	a5,-48(s0)		# tmp151, j
	addw	a5,a3,a5	# tmp151, tmp149, tmp150
	sext.w	a5,a5	# _2, tmp149
# leaf_example/leaf_example.c:3:     f = (g+h)-(i+j);
	subw	a5,a4,a5	# tmp152, _1, _2
	sw	a5,-20(s0)	# tmp152, f
# leaf_example/leaf_example.c:4:     return f;
	lw	a5,-20(s0)		# _8, f
# leaf_example/leaf_example.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	leaf_example, .-leaf_example
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
