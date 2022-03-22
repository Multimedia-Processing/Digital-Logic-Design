# Postgresql in MSYS2

* https://docs.postgresql.tw/

```
$ pacman -S mingw-w64-x86_64-postgresql
```

## 創建資料庫

```
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/pgsql
$ mkdir pgdata

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/pgsql
$ initdb -D ./pgdata
The files belonging to this database system will be owned by user "Tim".
This user must also own the server process.

The database cluster will be initialized with locale "Chinese (Traditional)_Taiw
an.950".
Encoding "BIG5" implied by locale is not allowed as a server-side encoding.
The default database encoding will be set to "UTF8" instead.
initdb: could not find suitable text search configuration for locale "Chinese (T
raditional)_Taiwan.950"
The default text search configuration will be set to "simple".

Data page checksums are disabled.

fixing permissions on existing directory ./pgdata ... ok
creating subdirectories ... ok
selecting dynamic shared memory implementation ... windows
selecting default max_connections ... 100
selecting default shared_buffers ... 128MB
selecting default time zone ... Asia/Taipei
creating configuration files ... ok
running bootstrap script ... ok
performing post-bootstrap initialization ... ok
syncing data to disk ... ok

initdb: warning: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    C:/msys64/mingw64/bin/pg_ctl -D ./pgdata -l logfile start

```

## 啟動伺服器


```
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/pgsql
$ pg_ctl -D ./pgdata -l logfile start
waiting for server to start.... done
server started
```
