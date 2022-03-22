# run

```
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ make clean
rm -f pqhello pqserver pqcreate pqquery pqmultirows pqprepare pqheader pqlisttab pqtransact *.o *.exe

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ make
gcc pqhello.c -o pqhello `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqserver.c -o pqserver `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqcreate.c -o pqcreate `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqquery.c -o pqquery `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqmultirows.c -o pqmultirows `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqprepare.c -o pqprepare `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqheader.c -o pqheader `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqlisttab.c -o pqlisttab `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
gcc pqtransact.c -o pqtransact `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pghello
bash: ./pghello: No such file or directory

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqhello
Version of libpq: 120002

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqserver
Connection to database failed: FATAL:  database "testdb" does not exist



Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ createdb testdb

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqserver
Server version: 120002

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqcreate
NOTICE:  table "cars" does not exist, skipping

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqcreate

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqheader
There are 3 columns
The column names are:
id
name
price

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqquery
PostgreSQL 12.2 on x86_64-w64-mingw32, compiled by x86_64-w64-mingw32-gcc.exe (Rev2, Built by MSYS2 project) 9.2.0, 64-bit

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqmultirows
1 Audi 52642
2 Mercedes 57127
3 Skoda 9000
4 Volvo 29000
5 Bentley 350000

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqtransact
pqtransact (UPDATE/INSERT/COMMIT) success!
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp/code/c/06-os1windows/03-msys2/10-pgsql/c
$ ./pqlisttab
cars

```