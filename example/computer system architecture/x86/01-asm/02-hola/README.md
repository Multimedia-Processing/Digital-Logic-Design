# hola.s

```
$ gcc -no-pie hola.s -o hola
$ ./hola
Hola, mundo
```

參考 -- https://stackoverflow.com/questions/60352424/call-an-assembler-function-from-c-code-in-linux

```
-no-pie 代表 no position independent executable

就是不要編成與位址無關的目的檔

```

## 平台

這些只能在 linux 上編譯執行

MINGW64

```
user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp2/asm/linux/02-hola
$ ./hola
Segmentation fault
```

MSYS

```
user@DESKTOP-96FRN6B MSYS /d/ccc/course/sp2/asm/linux/02-hola
$ gcc -no-pie hola.s -o hola
/tmp/ccbS7fJV.o:fake:(.text+0x3):  截斷重定址至相符: R_X86_64_32S 針對 .text
collect2: 錯誤：ld 回傳 1

```

windows gcc

```
user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp2/asm/linux/02-hola (master)
$ gcc hola.s -o hola
hola.s: Assembler messages:
hola.s:12: Error: bad register name `%rdi'

```


