# linux

## install

```
$ apt-get install libglib2.0-dev
```

## run

```
guest@localhost:~/code/sp/msys2/03-mingw64/glib2$ make
gcc glist.c -o glist `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0` 
gcc gslist.c -o gslist `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0` 
gcc htable.c -o htable `pkg-config --cflags glib-2.0` -g -Wall -std=gnu11 -O3 `pkg-config --libs glib-2.0` 
guest@localhost:~/code/sp/msys2/03-mingw64/glib2$ ls
glib2.md  glist  glist.c  gslist  gslist.c  htable  htable.c  Makefile  README.md
guest@localhost:~/code/sp/msys2/03-mingw64/glib2$ ./glist
a
b
c
The list is now 0 items long
guest@localhost:~/code/sp/msys2/03-mingw64/glib2$ ./gslist
The list is now 0 items long
The list is now 2 items long
guest@localhost:~/code/sp/msys2/03-mingw64/glib2$ ./htable
There are 2 keys in the hash table
Jazzy likes Cheese
```

