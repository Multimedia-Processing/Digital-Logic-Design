# GlobalCall

```
$ gcc -fverbose-asm -S globalCall.c -o globalCall.s
$ gcc globalCall.s -o globalCall 
$ ./globalCall
add(5, 8)=13
```

## 組合語言

```
	.file	"globalCall.c"
	.globl	_a
	.data
	.align 4
_a:
	.long	5
	.globl	_b
	.align 4
_b:
	.long	8
	.globl	_c
	.align 4
_c:
	.long	1
	.text
	.globl	_add
	.def	_add;	.scl	2;	.type	32;	.endef
_add:                                        # add 函數開始
	pushl	%ebp	 #                       # 框架與堆疊設定
	movl	%esp, %ebp	 #,
	movl	_a, %edx	 # a, D.1939         # edx = a
	movl	_b, %eax	 # b, D.1939         # eax = b
	addl	%edx, %eax	 # D.1939, D.1939    # eax = eax+edx = a+b
	movl	%eax, _c	 # D.1939, c         # c = eax
	nop
	popl	%ebp	 #                       # 恢復框架
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "add(5, 8)=%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp	 #
	movl	%esp, %ebp	 #,    
	andl	$-16, %esp	 #,
	subl	$16, %esp	 #,
	call	___main	 #     
	call	_add	 #     
	movl	_c, %eax	 # c, D.1940
	movl	%eax, 4(%esp)	 # D.1940,
	movl	$LC0, (%esp)	 #,
	call	_printf	 #
	movl	$0, %eax	 #, D.1940
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_printf;	.scl	2;	.type	32;	.endef

```