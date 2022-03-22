# fib.s

-no-pie : That flag is telling gcc not to make a position independent executable (PIE). PIE is a security feature where the kernel loads the binary and dependencies into a random location of virtual memory each time it's run.

```
$ gcc -no-pie fib.s -o fib // 巨集版 gcc -no-pie fibMacro.s -o fibMacro
$ ./fib                    //        ./fibMacro
                   0
                   1
                   1
                   2
                   3
                   5
                   8
                  13
                  21
                  34
                  55
                  89
                 144
                 233
                 377
                 610
                 987
                1597
                2584
                4181
                6765
               10946
               17711
               28657
               46368
               75025
              121393
              196418
              317811
              514229
              832040
             1346269
             2178309
             3524578
             5702887
             9227465
            14930352
            24157817
            39088169
            63245986
           102334155
           165580141
           267914296
           433494437
           701408733
          1134903170
          1836311903
          2971215073
          4807526976
          7778742049
         12586269025
         20365011074
         32951280099
         53316291173
         86267571272
        139583862445
        225851433717
        365435296162
        591286729879
        956722026041
       1548008755920
       2504730781961
       4052739537881
       6557470319842
      10610209857723
      17167680177565
      27777890035288
      44945570212853
      72723460248141
     117669030460994
     190392490709135
     308061521170129
     498454011879264
     806515533049393
    1304969544928657
    2111485077978050
    3416454622906707
    5527939700884757
    8944394323791464
   14472334024676221
   23416728348467685
   37889062373143906
   61305790721611591
   99194853094755497
  160500643816367088
  259695496911122585
  420196140727489673
  679891637638612258
 1100087778366101931
 1779979416004714189

```

## 說明 Calling Conventions for 64-bit C Code

* 來源 -- https://cs.lmu.edu/~ray/notes/gasexamples/

The 64-bit calling conventions are a bit more detailed, and they are explained fully in the AMD64 ABI Reference. You can also get info on them at Wikipedia. The most important points are (again, for 64-bit Linux, not Windows):

1. From left to right, pass as many parameters as will fit in registers. The order in which registers are allocated, are:
    * For integers and pointers, rdi, rsi, rdx, rcx, r8, r9.
    * For floating-point (float, double), xmm0, xmm1, xmm2, xmm3, xmm4, xmm5, xmm6, xmm7
2. Additional parameters are pushed on the stack, right to left, and are removed by the caller after the call.
3. After the parameters are pushed, the call instruction is made, so when the called function gets control, the return address is at (%rsp), the first memory parameter is at 8(%rsp), etc.
4. THE STACK POINTER %RSP MUST BE ALIGNED TO A 16-BYTE BOUNDARY BEFORE MAKING A CALL. Fine, but the process of making a call pushes the return address (8 bytes) on the stack, so when a function gets control, %rsp is not aligned. You have to make that extra space yourself, by pushing something or subtracting 8 from %rsp.
5. The only registers that the called function is required to preserve (the calle-save registers) are: rbp, rbx, r12, r13, r14, r15. All others are free to be changed by the called function.
6. The callee is also supposed to save the control bits of the XMCSR and the x87 control word, but x87 instructions are rare in 64-bit code so you probably don't have to worry about this.
7. Integers are returned in rax or rdx:rax, and floating point values are returned in xmm0 or xmm1:xmm0.

This program prints the first few fibonacci numbers, illustrating how registers have to be saved and restored:
