# power

```
$ gcc -no-pie power.s -o power
$ ls
a.out  power  power.s  README.md
$ ./power 2 3
8
$ ./power 3 4
81
```

## 說明

Note that as far as the C Library is concerned, command line arguments are always strings. If you want to treat them as integers, call atoi. Here's a little program to compute xy. Another feature of this example is that it shows how to restrict values to 32-bit ones.