# JitCall

```
PS D:\ccc\course\sp\code\c\05-objfile\02-jitCall\win> gcc -m32 jitCall.c -o jitCall 
PS D:\ccc\course\sp\code\c\05-objfile\02-jitCall\win> ./jitCall
add(5, 8)=13
sum(10)=55
fib(10)=89
```

## 原理

```
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> objdump -d add.o

add.o:     file format pe-i386

PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> gcc -c sum.c    
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> gcc -c add.c    
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> objdump -d add.o

add.o:     file format pe-i386


Disassembly of section .text:

00000000 <_add>:
   0:   55                      push   %ebp
   1:   89 e5                   mov    %esp,%ebp
   3:   83 ec 10                sub    $0x10,%esp
   6:   8b 45 08                mov    0x8(%ebp),%eax
   9:   89 45 fc                mov    %eax,-0x4(%ebp)
  12:   8b 55 08                mov    0x8(%ebp),%edx
  15:   8b 45 0c                mov    0xc(%ebp),%eax
  18:   01 d0                   add    %edx,%eax
  1a:   c9                      leave
  1b:   c3                      ret
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> gcc -c sum.c    
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> objdump -d sum.o

sum.o:     file format pe-i386


Disassembly of section .text:

00000000 <_sum>:
   0:   55                      push   %ebp
   1:   89 e5                   mov    %esp,%ebp
   3:   83 ec 10                sub    $0x10,%esp
   6:   c7 45 fc 00 00 00 00    movl   $0x0,-0x4(%ebp)
   d:   c7 45 f8 00 00 00 00    movl   $0x0,-0x8(%ebp)
  14:   eb 0a                   jmp    20 <_sum+0x20>
  16:   8b 45 f8                mov    -0x8(%ebp),%eax
  19:   01 45 fc                add    %eax,-0x4(%ebp)
  1c:   83 45 f8 01             addl   $0x1,-0x8(%ebp)
  20:   8b 45 f8                mov    -0x8(%ebp),%eax
  23:   3b 45 08                cmp    0x8(%ebp),%eax
  26:   7e ee                   jle    16 <_sum+0x16>
  28:   8b 45 fc                mov    -0x4(%ebp),%eax
  2b:   c9                      leave
  2c:   c3                      ret
  2d:   90                      nop
  2e:   90                      nop
  2f:   90                      nop

PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> gcc -c fib.c    
PS D:\ccc\sp\code\c\05-obj\03-jitCall\win32\c> objdump -d fib.o

fib.o:     file format pe-i386


Disassembly of section .text:

00000000 <_fib>:
   0:   55                      push   %ebp
   1:   89 e5                   mov    %esp,%ebp
   3:   53                      push   %ebx
   4:   83 ec 14                sub    $0x14,%esp
   7:   83 7d 08 00             cmpl   $0x0,0x8(%ebp)
   b:   75 07                   jne    14 <_fib+0x14>
   d:   b8 00 00 00 00          mov    $0x0,%eax
  12:   eb 2d                   jmp    41 <_fib+0x41>
  14:   83 7d 08 01             cmpl   $0x1,0x8(%ebp)
  18:   75 07                   jne    21 <_fib+0x21>
  1a:   b8 01 00 00 00          mov    $0x1,%eax
  1f:   eb 20                   jmp    41 <_fib+0x41>
  21:   8b 45 08                mov    0x8(%ebp),%eax
  24:   83 e8 01                sub    $0x1,%eax
  27:   89 04 24                mov    %eax,(%esp)
  2a:   e8 d1 ff ff ff          call   0 <_fib>
  2f:   89 c3                   mov    %eax,%ebx
  31:   8b 45 08                mov    0x8(%ebp),%eax
  34:   83 e8 02                sub    $0x2,%eax
  37:   89 04 24                mov    %eax,(%esp)
  3a:   e8 c1 ff ff ff          call   0 <_fib>
  3f:   01 d8                   add    %ebx,%eax
  41:   83 c4 14                add    $0x14,%esp
  44:   5b                      pop    %ebx
  45:   5d                      pop    %ebp
  46:   c3                      ret
  47:   90                      nop
```

## 更深入 JIT

* https://github.com/spencertipping/jit-tutorial (超讚文章!)

## 更多專案

* Jit 大全 -- https://github.com/wdv4758h/awesome-jit
* https://www.gnu.org/software/lightning/manual/lightning.html
* https://github.com/asmjit/asmjit
* https://www.gnu.org/software/libjit/
* https://gcc.gnu.org/onlinedocs/jit/intro/index.html
* https://github.com/bitfunnel/nativejit/
* https://github.com/v8/v8
* https://github.com/dibyendumajumdar/nanojit