```cpp
(WHILE1)
// while (1) {
  if (M[24576] == 0) goto WHILE1
  // if (M[24576] != 0) {
    int i = 16384;
(WHILE2)
      if (i >= 24576) goto EXIT
//    while (i < 24576) {
      M[i] = -1;
      i++;
      goto WHILE2
//    }
//  }
  goto WHILE1
(EXIT)
```

```cpp
WHILE1:              // (WHILE1)
  if (M[24576] == 0) //   @24576, D=M,
    goto WHILE1      //   @WHILE1, D;JEQ 
  int i = 16384;     //   @16384, D=A, @i, M=D

  WHILE2:            // (WHILE2)
    if (i >= 24576)  //   @24576, D=A, @i, D=M-D           註：(D=i-24576)
      goto END2      //   @END2, D;JGE
    M[i] = -1;       //   @i, D=M, A=D, M=-1
    i++;             //   @i, M=M+1
    goto WHILE2      //   @WHILE2, 0;JMP
  END2:              // (END2)

  goto WHILE1        //   @WHILE1, 0;JMP
```



```cpp
WHILE1:              // (WHILE1)
  int i = 16384;     //   @16384, D=A, @i, M=D

  WHILE2:            // (WHILE2)
    if (i >= 24576)  //   @24576, D=A, @i, D=M-D           註：(D=i-24576)
      goto WEND2;    //   @END2, D;JGE
    int color = 0;   //   @color, M=0   // 白色
    if (M[24576]==0) //   @24576, D=M
      goto NEXT;     //   @NEXT, D;JEQ
    color = -1;      //   @color, M=-1  // 黑色
  NEXT:              // (NEXT)
    M[i] = color;    //   @color, D=M, @i, A=M, M=D
    i++;             //   @i, M=M+1
    goto WHILE2;     //   @WHILE2, 0;JMP
  WEND2:             // (END2)

  goto WHILE1;       //   @WHILE1, 0;JMP
```