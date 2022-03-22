# foobar.c

```
$ gcc -fverbose-asm -S fib.c -o fib.s
```

來源 -- https://eli.thegreenplace.net/2011/02/04/where-the-top-of-the-stack-is-on-x86

```
    .file    "foobar.c"
    .text
    .globl    _foobar
    .def    _foobar;    .scl    2;    .type    32;    .endef
_foobar:
# 進入函數前置堆疊操作
    pushl    %ebp     #
    movl    %esp, %ebp     #,
    subl    $16, %esp     #,
# int xx = a + 2;
    movl    8(%ebp), %eax  # a, tmp95  # eax = a
    addl    $2, %eax       #, tmp94    # eax = eax + 2
    movl    %eax, -4(%ebp) # tmp94, xx # xx = eax
# int yy = b + 3;
    movl    12(%ebp), %eax # b, tmp99  # eax = b
    addl    $3, %eax       #, tmp98    # eax = eax + 3
    movl    %eax, -8(%ebp) # tmp98, yy # yy = eax
# int zz = c + 4;
    movl    16(%ebp), %eax # c, tmp103  # eax = c
    addl    $4, %eax       #, tmp102    # eax = eax + 4
    movl    %eax, -12(%ebp) # tmp102,zz # zz = eax
# int sum = xx + yy + zz;
    movl    -4(%ebp), %edx # xx, tmp104  # edx = xx 
    movl    -8(%ebp), %eax # yy, tmp105  # eax = yy
    addl    %eax, %edx # tmp105, D.1501  # edx = edx + eax 
    movl    -12(%ebp), %eax # zz, tmp109 # zz = eax
    addl    %edx, %eax  # D.1501, tmp108 # eax = eax + edx
    movl    %eax, -16(%ebp) # tmp108,sum # sum = eax
# return xx * yy * zz + sum;
    movl    -4(%ebp), %eax     # xx, tmp110 # eax = xx
    imull    -8(%ebp), %eax    # yy, D.1501 # eax = eax * yy
    imull    -12(%ebp), %eax   # zz, D.1501 # eax = eax * zz
    movl    %eax, %edx     # D.1501, D.1501 # edx = eax
    movl    -16(%ebp), %eax   # sum, tmp111 # sum = eax
    addl    %edx, %eax     # D.1501, D.1501 # eax = edx + eax
# 離開前的後置堆疊處理動作
    leave
    ret
    .def    ___main;    .scl    2;    .type    32;    .endef
    .globl    _main
    .def    _main;    .scl    2;    .type    32;    .endef
_main:
    pushl    %ebp     #
    movl    %esp, %ebp     #,
    andl    $-16, %esp     #,
    subl    $16, %esp     #,
    call    ___main      #
    movl    $99, 8(%esp) #, 把 99 傳給 c
    movl    $88, 4(%esp) #, 把 88 傳給 b
    movl    $77, (%esp)  #, 把 77 傳給 a
    call    _foobar      #  呼叫 foobar (a=77,b=88,c=99)
    leave
    ret
    .ident    "GCC: (tdm-1) 5.1.0"
```