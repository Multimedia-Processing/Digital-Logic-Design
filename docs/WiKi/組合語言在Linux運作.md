Teaname

MingW

在 Linux 上面執行[組合語言](/docs/knowledge-network-database-repository/組合語言.md)。

不管是在 Windows 或者 Linux 上面運作[組合語言](/docs/knowledge-network-database-repository/組合語言.md)，第一要先組譯，再來連結，最後執行。

因此實際 C 語言在編譯的過程是：

1. 編譯
2. 組譯
3. 連結
4. 執行

以下是實際執行[組合語言](/docs/knowledge-network-database-repository/組合語言.md)的範例：

```
gcc -c hello.s
ld hello.o -o hello
./hello
```

程式碼：

```assembly
.include "../myMacro.s"
.global _start

.text
_start:
WRITES $1, $message, $13
EXIT
message:
.ascii  "My name is GJC\n"
```

對應的巨集程式碼：

```assembly
# write(1, message, 13)
.macro WRITES fd, msg, len
  mov     $1, %rax            # system call 1 is write
  mov     \fd, %rdi           # file handle 1 is stdout
  mov     \msg, %rsi          # address of string to output
  mov     \len, %rdx          # number of bytes
  syscall
.endm

.macro EXIT
  mov 	$60, %rax
  xor	%rdi, %rdi
  syscall
.endm

.macro PUTS msg
  mov   \msg, %rdi
  call  puts
.endm


.macro PRINTF fmt, p1
  # We need to call printf, but we are using eax, ebx, and ecx.  printf
  # may destroy eax and ecx so we will save these before the call and
  # restore them afterwards.

  push    %rax                    # caller-save register
  push    %rcx                    # caller-save register

  mov     \fmt, %rdi              # set 1st parameter (format)
  mov     \p1, %rsi               # set 2nd parameter (current_number)
  xor     %rax, %rax              # because printf is varargs

  # Stack is already aligned because we pushed three 8 byte registers
  call    printf                  # printf(format, current_number)

  pop     %rcx                    # restore caller-save register
  pop     %rax                    # restore caller-save register
.endm
```

可以透過寫[巨集](/docs/knowledge-network-database-repository/巨集.md)的方式來增進撰寫[組合語言](/docs/knowledge-network-database-repository/組合語言.md)的速度與便利行。

[組合語言](/docs/knowledge-network-database-repository/組合語言.md)的[巨集](/docs/knowledge-network-database-repository/巨集.md)會比函式好用一些。

整數參數、指標，有放置順序，不夠放要放到堆疊裡面。

eax 32 位元
rax 64 位元

記憶體有擴充，所以r13~r14儲存起來

乘法透過移項的方式來做次方運算，來加速組合語言運算。




$`f(n) = n!`$

```math

```

遞迴需要自己處理堆疊，所以一般都是交給C語言。

```c
int f(int n) {
  if(n <= 1) {
    return 1;
  } else {
    return n * f(n - 1)
  }
}
```

```as
# ----------------------------------------------------------------------------
# A 64-bit recursive implementation of the function
#
#     uint64_t factorial(unsigned n)
#
# implemented recursively
# ----------------------------------------------------------------------------

        .globl  factorial

        .text
factorial:
        cmp     $1, %rdi                # n <= 1?
        jnbe    L1                      # if not, go do a recursive call
        mov     $1, %rax                # otherwise return 1
        ret
L1:
        push    %rdi                    # save n on stack (also aligns %rsp!)
        dec     %rdi                    # n-1
        call    factorial               # factorial(n-1), result goes in %rax
        pop     %rdi                    # restore n
        imul    %rdi, %rax              # n * factorial(n-1), stored in %rax
        ret

```

可以使用 `-S` 來將 C 語言產生組合語言。

通常組合語言有專門的浮點數運算。

---

Tag: #數位邏輯設計 #數位邏輯 #digital-logic #digital-logic-design #DigitalLogic #DigitalLogicDesign #digitallogic #digitallogicdesign 