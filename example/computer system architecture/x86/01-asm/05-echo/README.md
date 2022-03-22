# 05-echo

```
$ gcc -no-pie echo.s && ./a.out 25782 dog huh '$$'
./a.out
25782
dog
huh
$$
```

## Command Line Arguments
You know that in C, main is just a plain old function, and it has a couple parameters of its own:

    int main(int argc, char** argv)
Here is a program that uses this fact to simply echo the commandline arguments to a program, one per line: