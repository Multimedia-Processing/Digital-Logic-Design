# sha_ming

## mining

```
$ wsl
wsl> gcc mining.c -o mining -lmhash
wsl> ./mining
0000008cbcf9a25669c1284ec99e88630f95e72eb3d4509421661cd959fb5ec8
nonce=5553774
took 22659118 us=22659 ms
```

## mining-fake

若將 SHA256 硬體化，速度可能會快 22659/1252=18.098 倍。

```
wsl> gcc mining_fake.c -o mining_fake -lmhash
wsl> ./mining_fake
nonce=5553774
took 1252293 us=1252 ms
```

## mining-fake2

甚至有可能達到 22659/17=1332.88 倍

```
wsl> gcc mining_fake2.c -o mining_fake2 -lmhash
wsl> ./mining_fake2
nonce=5553774
took 17973 us=17 ms
```

## sha256

```
wsl> gcc sha256.c -o sha256 -lmhash
wsl> ./sha256
0xdd950c059076dbd361cfd48f2701997c6ce8244e98f631cccc84313b2050e116
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