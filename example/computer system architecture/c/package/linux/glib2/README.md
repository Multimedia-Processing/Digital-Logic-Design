# glib

參考: https://www.ibm.com/developerworks/linux/tutorials/l-glib/index.html

## 編譯

```
user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp/code/c/06-os1windows/04-pacman/02-glib
$ make
gcc glist.c -o glist `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0`
gcc gslist.c -o gslist `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0`
gcc htable.c -o htable `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0`

```

## 執行

```
user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp/code/c/06-os1windows/04-pacman/02-glib
$ ./glist
a
b
c
The list is now 0 items long

user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp/code/c/06-os1windows/04-pacman/02-glib
$ ./gslist
The list is now 0 items long
The list is now 2 items long

user@DESKTOP-96FRN6B MINGW64 /d/ccc/course/sp/code/c/06-os1windows/04-pacman/02-glib
$ ./htable
There are 2 keys in the hash table
Jazzy likes Cheese

```
