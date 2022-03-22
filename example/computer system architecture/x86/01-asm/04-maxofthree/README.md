# 04-maxofthree


```
$ gcc -std=c99 callmaxofthree.c maxofthree.s && ./a.out
1
2
3
4
5
6

```


## Mixing C and Assembly Language

This 64-bit program is a very simple function that takes in three 64-bit integer parameters and returns the maximum value. It shows how to extract integer parameters: They will have been pushed on the stack so that on entry to the function, they will be in rdi, rsi, and rdx, respectively. The return value is an integer so it gets returned in rax.

