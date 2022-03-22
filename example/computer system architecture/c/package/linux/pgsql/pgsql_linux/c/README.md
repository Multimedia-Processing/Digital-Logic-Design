# 用 C 語言透過 libpq 函式庫操作 PostgreSQL 資料庫

* 程式修改自 -- [PostgreSQL C tutorial](http://zetcode.com/db/postgresqlc/)


## 先做 createdb

```
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/pgsql/c
$ createdb testdb
```

## 建置程式

```
$ make
gcc pqhello.c -o pqhello `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
```

## pghello

```
$ ./pghello
Version of libpq: 120002
```

## make 專案

```
$ make
gcc pghello.c -o pghello `pkg-config --cflags libpq` -g -Wall -std=gnu11 -O3 `pkg-config --libs libpq`
```

## pgcreate.c 創建 Cars 資料表 

```
$ ./pgcreate

```

## 手動查詢 Cars 資料表

```
$ psql testdb
psql (12.2)
Type "help" for help.

testdb=# SELECT * from Cars;
 id |    name    | price
----+------------+--------
  1 | Audi       |  52642
  2 | Mercedes   |  57127
  3 | Skoda      |   9000
  4 | Volvo      |  29000
  5 | Bentley    | 350000
  6 | Citroen    |  21000
  7 | Hummer     |  41400
  8 | Volkswagen |  21600
(8 rows)

testdb=# \q
```


## 用 pqmultirows.c 程式列出資料表

```
$ ./pgmultirows
1 Audi 52642
2 Mercedes 57127
3 Skoda 9000
4 Volvo 29000
5 Bentley 350000

```

## 用 pqheader.c 列出 Cars 表格的欄位

```
$ ./pgheader
There are 3 columns
The column names are:
id
name
price

```

## 用 pglisttab.c 列出所有表格

```
$ ./pglisttab
cars
```

## 用 pgtransact.c 進行原子交付

```
$ ./pgtransact
pqtransact (UPDATE/INSERT/COMMIT) success!
```

