# sqlite3 linux

```
$ apt install libsqlite3-dev
```

## run

```
root@localhost:/home/guest/code/sp/database/sqlite# make
gcc sqlite_read.c -o sqlite_read `pkg-config --cflags sqlite3` -g -Wall -std=gnu11 -O3 `pkg-config --libs sqlite3`
gcc sqlite_write.c -o sqlite_write `pkg-config --cflags sqlite3` -g -Wall -std=gnu11 -O3 `pkg-config --libs sqlite3`
root@localhost:/home/guest/code/sp/database/sqlite# ./sqlite_write
root@localhost:/home/guest/code/sp/database/sqlite# ./sqlite_read
Id = 1
Name = Audi
Price = 52642

Id = 2
Name = Mercedes
Price = 57127

Id = 3
Name = Skoda
Price = 9000

Id = 4
Name = Volvo
Price = 29000

Id = 5
Name = Bentley
Price = 350000

Id = 6
Name = Citroen
Price = 21000

Id = 7
Name = Hummer
Price = 41400

Id = 8
Name = Volkswagen
Price = 21600

```
