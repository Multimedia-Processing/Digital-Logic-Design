# inline ASM

```
$ gcc -fverbose-asm -S inline.c -o inline.s
$ gcc inline.c -o inline
$ ./inline
sum = 30
```

## 說明

```c
#include <stdio.h>
#include <stdint.h>

int main(int argc, char **argv)
{
    int32_t var1=10, var2=20, sum = 0;
    asm volatile ("addl %%ebx,%%eax;"      /* eax = ebx + eax = 20 + 10 = 30 */
                 : "=a" (sum)              /* output: sum = EAX = 30 */
                 : "a" (var1), "b" (var2)  /* inputs: EAX = var1 = 10, EBX = var2 = 20 */
    );
    printf("sum = %d\n", sum);
    return 0;
}
```

## 組合語言

```
	.file	"inline.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "sum = %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp	 #                      # 準備 ebp 框架，調整堆疊 esp
	movl	%esp, %ebp	 #,
	pushl	%ebx	 #
	andl	$-16, %esp	 #,
	subl	$32, %esp	 #,
	call	___main	 #
	movl	$10, 28(%esp)	 #, var1        # var1 = 10
	movl	$20, 24(%esp)	 #, var2        # var2 = 20
	movl	$0, 20(%esp)	 #, sum         # sum = 0
	movl	28(%esp), %eax	 # var1, tmp90  # eax = var1 // "a" (var1)
	movl	24(%esp), %edx	 # var2, tmp91  # edx = var2 // "b" (var2)
	movl	%edx, %ebx	 # tmp91, tmp91     # ebx = edx
/APP
 # 7 "inline.c" 1                           # asm volatile ("addl %%ebx,%%eax;"
	addl %ebx,%eax;                        
 # 0 "" 2
/NO_APP                                     # : "=a" (sum) /* output: sum = EAX */
	movl	%eax, 20(%esp)	 # sum, sum     # sum = eax
	movl	20(%esp), %eax	 # sum, tmp92   # 準備 printf 的參數
	movl	%eax, 4(%esp)	 # tmp92,       # 第 2 個參數 = eax = sum
	movl	$LC0, (%esp)	 #,             # 第 1 個參數 = .ascii "sum = %d\12\0"
	call	_printf	 #
	movl	$0, %eax	 #, D.1962          # eax = 0,   .... return
	movl	-4(%ebp), %ebx	 #,             # ???
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
```
