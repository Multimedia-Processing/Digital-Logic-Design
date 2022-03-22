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
# -auxbase-strip swap/swap_o3.s -O3 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fallocation-dce
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns
# -fschedule-insns2 -fsection-anchors -fsemantic-interposition
# -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
# -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
# -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
# -fverbose-asm -fversion-loops-for-strides -fzero-initialized-in-bss -mdiv
# -mexplicit-relocs -mfdiv -mplt -mriscv-attribute -mstrict-align

	.text
	.align	1
	.globl	swap
	.type	swap, @function
swap:
# swap/swap.c:5:     temp = v[k];
	slli	a1,a1,2	#, _1, tmp144
# swap/swap.c:6:     v[k] = v[k+1];
	addi	a5,a1,4	#, tmp142, _1
	add	a5,a0,a5	# tmp142, _5, v
	lw	a3,0(a5)		# _6, *_5
# swap/swap.c:5:     temp = v[k];
	add	a1,a0,a1	# _1, _2, v
# swap/swap.c:5:     temp = v[k];
	lw	a4,0(a1)		# temp, *_2
# swap/swap.c:6:     v[k] = v[k+1];
	sw	a3,0(a1)	# _6, *_2
# swap/swap.c:7:     v[k+1] = temp;
	sw	a4,0(a5)	# temp, *_5
# swap/swap.c:8: }
	ret	
	.size	swap, .-swap
	.align	1
	.globl	sort
	.type	sort, @function
sort:
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	beq	a1,zero,.L3	#, n,,
	slli	a1,a1,2	#, tmp151, n
	addi	a6,a0,-4	#, ivtmp.26, ivtmp.25
	add	a7,a0,a1	# tmp151, _60, ivtmp.25
.L7:
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	lw	a5,0(a6)		# _3, MEM[base: _25, offset: 0B]
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	lw	a1,0(a0)		# _30, MEM[base: _29, offset: 0B]
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	ble	a5,a1,.L5	#, _3, _30,
	addi	a2,a0,-8	#, ivtmp.12, ivtmp.25
	mv	a3,a0	# ivtmp.18, ivtmp.25
	mv	a4,a6	# ivtmp.17, ivtmp.26
.L6:
# swap/swap.c:6:     v[k] = v[k+1];
	sw	a1,0(a4)	# _30, MEM[base: _4, offset: 0B]
# swap/swap.c:7:     v[k+1] = temp;
	sw	a5,0(a3)	# _3, MEM[base: _44, offset: 0B]
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	lw	a5,0(a2)		# _3, MEM[base: _45, offset: 0B]
# swap/swap.c:13:         for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
	addi	a4,a4,-4	#, ivtmp.17, ivtmp.17
	addi	a2,a2,-4	#, ivtmp.12, ivtmp.12
	addi	a3,a3,-4	#, ivtmp.18, ivtmp.18
	bgt	a5,a1,.L6	#, _3, _30,
.L5:
# swap/swap.c:12:     for (i=0; i<n; i+=1) {
	addi	a0,a0,4	#, ivtmp.25, ivtmp.25
	addi	a6,a6,4	#, ivtmp.26, ivtmp.26
	bne	a0,a7,.L7	#, ivtmp.25, _60,
.L3:
# swap/swap.c:17: }
	ret	
	.size	sort, .-sort
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
