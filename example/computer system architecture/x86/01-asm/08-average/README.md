# 08-avarage

```
$ gcc -no-pie average.s -o average
$ ls
average  average.s  README.md
$ ./average 3 5 2 4 1
3
$ ./average 3 5 2 4
3.5
```

## Data Sections
The text section is read-only on most operating systems, so you might find the need for a data section. On most operating systems, the data section is only for initialized data, and you have a special .bss section for uninitialized data. Here is a program that averages the command line arguments, expected to be integers, and displays the result as a floating point number.