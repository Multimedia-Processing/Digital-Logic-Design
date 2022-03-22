	.file	"rsum.c"
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
# sum/rsum.c -march=rv64imafdc -mabi=lp64d -march=rv64imafdc
# -auxbase-strip sum/rsum_o0.s -fverbose-asm
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
	.globl	sum
	.type	sum, @function
sum:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp138, n
	mv	a4,a1	# tmp140, acc
	sw	a5,-20(s0)	# tmp139, n
	mv	a5,a4	# tmp141, tmp140
	sw	a5,-24(s0)	# tmp141, acc
# sum/rsum.c:2:     if (n>0)
	lw	a5,-20(s0)		# tmp142, n
	sext.w	a5,a5	# tmp143, tmp142
	ble	a5,zero,.L2	#, tmp143,,
# sum/rsum.c:3:         return sum(n-1, acc+n);
	lw	a5,-20(s0)		# tmp145, n
	addiw	a5,a5,-1	#, tmp144, tmp145
	sext.w	a3,a5	# _1, tmp144
	lw	a4,-24(s0)		# tmp147, acc
	lw	a5,-20(s0)		# tmp148, n
	addw	a5,a4,a5	# tmp148, tmp146, tmp147
	sext.w	a5,a5	# _2, tmp146
	mv	a1,a5	#, _2
	mv	a0,a3	#, _1
	call	sum		#
	mv	a5,a0	# tmp149,
	j	.L3		#
.L2:
# sum/rsum.c:5:         return acc;
	lw	a5,-24(s0)		# _3, acc
.L3:
# sum/rsum.c:6: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	sum, .-sum
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
