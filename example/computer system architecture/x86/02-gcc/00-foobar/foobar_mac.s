	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_foobar
	.p2align	4, 0x90
_foobar:                                ## @foobar
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edx
	addl	$3, %edx
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edx
	addl	$4, %edx
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edx
	addl	-20(%rbp), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -28(%rbp)
	movl	-16(%rbp), %edx
	imull	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	addl	-28(%rbp), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$77, %edi
	movl	$88, %esi
	movl	$99, %edx
	callq	_foobar
	leaq	L_.str(%rip), %rdi
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movl	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"r=%d\n"


.subsections_via_symbols
