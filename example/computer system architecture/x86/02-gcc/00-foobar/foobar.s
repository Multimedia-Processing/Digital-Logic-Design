	.file	"foobar.c"
 # GNU C11 (tdm-1) version 5.1.0 (mingw32)
 #	compiled by GNU C version 5.1.0, GMP version 4.3.2, MPFR version 2.4.2, MPC version 0.8.2
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: 
 # -iprefix D:/install/CodeBlocksPortable/App/CodeBlocks/MinGW/bin/../lib/gcc/mingw32/5.1.0/
 # -D_REENTRANT foobar.c -mtune=generic -march=pentiumpro
 # -auxbase-strip foobar.s -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations
 # -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
 # -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 # -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 # -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 # -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
 # -finline-atomics -fira-hoist-pressure -fira-share-save-slots
 # -fira-share-spill-slots -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -flifetime-dse
 # -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
 # -fprefetch-loop-arrays -freg-struct-return
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 # -fset-stack-executable -fshow-column -fsigned-zeros
 # -fsplit-ivs-in-unroller -fstdarg-opt -fstrict-volatile-bitfields
 # -fsync-libcalls -ftrapping-math -ftree-coalesce-vars -ftree-cselim
 # -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 # -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
 # -funwind-tables -fverbose-asm -fzero-initialized-in-bss -m32 -m80387
 # -m96bit-long-double -maccumulate-outgoing-args -malign-double
 # -malign-stringops -mavx256-split-unaligned-load
 # -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387
 # -mieee-fp -mlong-double-80 -mms-bitfields -mno-red-zone -mno-sse4
 # -mpush-args -msahf -mstack-arg-probe -mvzeroupper

	.text
	.globl	_foobar
	.def	_foobar;	.scl	2;	.type	32;	.endef
_foobar:
	pushl	%ebp	 #
	movl	%esp, %ebp	 #,
	subl	$16, %esp	 #,
	movl	8(%ebp), %eax	 # a, tmp95
	addl	$2, %eax	 #, tmp94
	movl	%eax, -4(%ebp)	 # tmp94, xx
	movl	12(%ebp), %eax	 # b, tmp99
	addl	$3, %eax	 #, tmp98
	movl	%eax, -8(%ebp)	 # tmp98, yy
	movl	16(%ebp), %eax	 # c, tmp103
	addl	$4, %eax	 #, tmp102
	movl	%eax, -12(%ebp)	 # tmp102, zz
	movl	-4(%ebp), %edx	 # xx, tmp104
	movl	-8(%ebp), %eax	 # yy, tmp105
	addl	%eax, %edx	 # tmp105, D.1501
	movl	-12(%ebp), %eax	 # zz, tmp109
	addl	%edx, %eax	 # D.1501, tmp108
	movl	%eax, -16(%ebp)	 # tmp108, sum
	movl	-4(%ebp), %eax	 # xx, tmp110
	imull	-8(%ebp), %eax	 # yy, D.1501
	imull	-12(%ebp), %eax	 # zz, D.1501
	movl	%eax, %edx	 # D.1501, D.1501
	movl	-16(%ebp), %eax	 # sum, tmp111
	addl	%edx, %eax	 # D.1501, D.1501
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp	 #
	movl	%esp, %ebp	 #,
	andl	$-16, %esp	 #,
	subl	$16, %esp	 #,
	call	___main	 #
	movl	$99, 8(%esp)	 #,
	movl	$88, 4(%esp)	 #,
	movl	$77, (%esp)	 #,
	call	_foobar	 #
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
