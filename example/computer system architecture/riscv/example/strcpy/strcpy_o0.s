	.file	"strcpy.c"
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
# strcpy/strcpy.c -march=rv64imafdc -mabi=lp64d -march=rv64imafdc
# -auxbase-strip strcpy/strcpy_o0.s -fverbose-asm
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
	.globl	strcpy1
	.type	strcpy1, @function
strcpy1:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# x, x
	sd	a1,-48(s0)	# y, y
# strcpy/strcpy.c:4:     size_t i = 0;
	sd	zero,-24(s0)	#, i
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	j	.L2		#
.L3:
# strcpy/strcpy.c:6:         i+=1;
	ld	a5,-24(s0)		# tmp139, i
	addi	a5,a5,1	#, tmp138, tmp139
	sd	a5,-24(s0)	# tmp138, i
.L2:
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	ld	a4,-48(s0)		# tmp140, y
	ld	a5,-24(s0)		# tmp141, i
	add	a4,a4,a5	# tmp141, _1, tmp140
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	ld	a3,-40(s0)		# tmp142, x
	ld	a5,-24(s0)		# tmp143, i
	add	a5,a3,a5	# tmp143, _2, tmp142
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	lbu	a4,0(a4)	# _3, *_1
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	sb	a4,0(a5)	# _3, *_2
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	lbu	a5,0(a5)	# _4, *_2
# strcpy/strcpy.c:5:     while ((x[i]=y[i]) != '\0')
	bne	a5,zero,.L3	#, _4,,
# strcpy/strcpy.c:7: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	strcpy1, .-strcpy1
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
