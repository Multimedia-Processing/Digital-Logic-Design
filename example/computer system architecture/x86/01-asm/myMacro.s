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
 
