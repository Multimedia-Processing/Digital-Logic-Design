# PostgreSQL

* https://docs.postgresql.tw/

## 安裝 -- Postgresql in MSYS2

```
$ pacman -S mingw-w64-x86_64-postgresql
```

## 創建資料庫

```
$ mkdir pgdata
$ initdb -D ./pgdata
$ pg_ctl -D ./pgdata -l logfile start
waiting for server to start.... done
server started
```

## 執行 C 程式存取資料庫

* 參考: [用 C 語言透過 libpq 函式庫操作 PostgreSQL 資料庫](c/README.md)

## 進行手動操作

* [新手教學- PostgreSQL 正體中文使用手冊](https://docs.postgresql.tw/tutorial)
    * [1.3. 建立一個資料庫](https://docs.postgresql.tw/tutorial/getting-started/creating-a-database)
    * [1.4. 存取一個資料庫](https://docs.postgresql.tw/tutorial/getting-started/accessing-a-database)
    * [2. SQL 查詢語言](https://docs.postgresql.tw/tutorial/the-sql-language)

## 詳細操作

* [install](install)
* [sql](sql)
* [c](c)

## 離開

最後可用 pg_ctl stop 離開

```
$ pg_ctl stop -D ./pgdata
waiting for server to shut down.... done
server stopped
```
