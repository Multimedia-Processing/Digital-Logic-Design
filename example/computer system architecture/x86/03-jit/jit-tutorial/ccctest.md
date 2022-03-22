# jit-tutorial

## simple

```
user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ gcc simple.c -o simple

user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ ./simple *bb+ab > output.pgm

user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ time ./simple *bb+ab > /dev/null

real    0m7.396s
user    0m7.140s
sys     0m0.046s

```

## hardcoded

```
user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ gcc hardcoded.c -o hardcoded

user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ time ./hardcoded *bb+ab > /dev/null

real    0m4.384s
user    0m4.249s
sys     0m0.061s

```

## micro-asm

```
// micro-asm.h
#include <stdarg.h>
typedef struct {
  char *dest;
} microasm;

// this makes it more obvious what we're doing later on
#define xmm(n) (n)

void asm_write(microasm *a, int n, ...) {
  va_list bytes;
  int i;
  va_start(bytes, n);
  for (i = 0; i < n; ++i) *(a->dest++) = (char) va_arg(bytes, int);
  va_end(bytes);
}

void movsd_reg_memory(microasm *a, char reg, char disp)
{ asm_write(a, 5, 0xf2, 0x0f, 0x11, 0x47 | reg << 3, disp); }

void movsd_memory_reg(microasm *a, char disp, char reg)
{ asm_write(a, 5, 0xf2, 0x0f, 0x10, 0x47 | reg << 3, disp); }

void movsd_reg_reg(microasm *a, char src, char dst)
{ asm_write(a, 4, 0xf2, 0x0f, 0x11, 0xc0 | src << 3 | dst); }

void mulsd(microasm *a, char src, char dst)
{ asm_write(a, 4, 0xf2, 0x0f, 0x59, 0xc0 | dst << 3 | src); }

void addsd(microasm *a, char src, char dst)
{ asm_write(a, 4, 0xf2, 0x0f, 0x58, 0xc0 | dst << 3 | src); }

void subsd(microasm *a, char src, char dst)
{ asm_write(a, 4, 0xf2, 0x0f, 0x5c, 0xc0 | dst << 3 | src); }

void movpd_reg_memory(microasm *a, char reg, char disp)
{ asm_write(a, 5, 0x66, 0x0f, 0x11, 0x47 | reg << 3, disp); }

void movpd_memory_reg(microasm *a, char disp, char reg)
{ asm_write(a, 5, 0x66, 0x0f, 0x10, 0x47 | reg << 3, disp); }

void addpd_memory_reg(microasm *a, char disp, char reg)
{ asm_write(a, 5, 0x66, 0x0f, 0x58, 0x47 | reg << 3, disp); }
```

## mandeljit

失敗！

```
user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ time ./simple *bb+ab > /dev/null

real    0m7.494s
user    0m7.218s
sys     0m0.062s

user@DESKTOP-96FRN6B MSYS /d/ccc/ccc109/sp/jit/jit-tutorial
$ time ./mandeljit *bb+ab > /dev/null
Segmentation fault (核心已傾印)

real    0m1.945s
user    0m0.015s
sys     0m0.077s

```