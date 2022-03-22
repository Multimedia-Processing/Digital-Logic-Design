## success

```
wsl> gcc md5.c -o md5 -lmhash
wsl> ./md5
0x750c783e6ab0b503eaa86e310a5db738
```

## install & check

```
wsl> pkg-config --libs mhash-dev
Package mhash-dev was not found in the pkg-config search path.
Perhaps you should add the directory containing `mhash-dev.pc'
to the PKG_CONFIG_PATH environment variable
No package 'mhash-dev' found
wsl> pkg-config --libs mhash
-lmhash
```