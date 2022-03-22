	.file	"fact.c"
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
# fact/fact.c -march=rv64imafdc -mabi=lp64d -march=rv64imafdc
# -auxbase-strip fact/fact_o0.s -fverbose-asm
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
	.globl	fact
	.type	fact, @function
fact:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp138, n
	sw	a5,-20(s0)	# tmp139, n
# fact/fact.c:2:     if (n<1)
	lw	a5,-20(s0)		# tmp140, n
	sext.w	a5,a5	# tmp141, tmp140
	bgt	a5,zero,.L2	#, tmp141,,
# fact/fact.c:3:         return 1;
	li	a5,1		# _3,
	j	.L3		#
.L2:
# fact/fact.c:5:         return n*fact(n-1);
	lw	a5,-20(s0)		# tmp143, n
	addiw	a5,a5,-1	#, tmp142, tmp143
	sext.w	a5,a5	# _1, tmp142
	mv	a0,a5	#, _1
	call	fact		#
	mv	a5,a0	# tmp144,
	mv	a4,a5	# _2, tmp144
# fact/fact.c:5:         return n*fact(n-1);
	lw	a5,-20(s0)		# tmp146, n
	mulw	a5,a5,a4	# tmp145, tmp146, _2
	sext.w	a5,a5	# _3, tmp145
.L3:
# fact/fact.c:6: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	fact, .-fact
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
