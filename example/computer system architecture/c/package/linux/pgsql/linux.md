# Postgresql in Linux

```
 1013  apt install postgresql
 1014  apt install libpq-dev
 1030  systemctl restart postgresql.service
 1032  apt install postgresql-client-common
 1033  createdb
```

## 找不到 pg_ctl


https://askubuntu.com/questions/385416/pg-ctl-command-not-found-what-package-has-this-command

```
You should edit your path:

$ cd ~
$ vim .profile
PATH=$PATH:/usr/lib/postgresql/{version}/bin
export PATH
$ . ~/.profile
Replace {version} with the correct version number.

And now you can execute the command from the shell:

pg_ctl --help
pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.
```

然後就可以了

```
root@localhost:~# pg_ctl --help
pg_ctl is a utility to initialize, start, stop, or control a PostgreSQL server.

Usage:
  pg_ctl init[db] [-D DATADIR] [-s] [-o OPTIONS]
  pg_ctl start    [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]
                  [-o OPTIONS] [-p PATH] [-c]
  pg_ctl stop     [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
  pg_ctl restart  [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
                  [-o OPTIONS] [-c]
  pg_ctl reload   [-D DATADIR] [-s]
  pg_ctl status   [-D DATADIR]
  pg_ctl promote  [-D DATADIR] [-W] [-t SECS] [-s]
  pg_ctl kill     SIGNALNAME PID

Common options:
  -D, --pgdata=DATADIR   location of the database storage area
  -s, --silent           only print errors, no informational messages
  -t, --timeout=SECS     seconds to wait when using -w option
  -V, --version          output version information, then exit
  -w, --wait             wait until operation completes (default)
  -W, --no-wait          do not wait until operation completes
  -?, --help             show this help, then exit
If the -D option is omitted, the environment variable PGDATA is used.

Options for start or restart:
  -c, --core-files       allow postgres to produce core files
  -l, --log=FILENAME     write (or append) server log to FILENAME
  -o, --options=OPTIONS  command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
  -p PATH-TO-POSTGRES    normally not necessary

Options for stop or restart:
  -m, --mode=MODE        MODE can be "smart", "fast", or "immediate"

Shutdown modes are:
  smart       quit after all clients have disconnected
  fast        quit directly, with proper shutdown (default)
  immediate   quit without complete shutdown; will lead to recovery on restart

Allowed signal names for kill:
  ABRT HUP INT QUIT TERM USR1 USR2

Report bugs to <pgsql-bugs@postgresql.org>.
```

## 接著是 initdb 的問題

```
root@localhost:/home/guest/code/sp/database/pgsql_linux# initdb
initdb: no data directory specified
You must identify the directory where the data for this database system
will reside.  Do this with either the invocation option -D or the
environment variable PGDATA.
root@localhost:/home/guest/code/sp/database/pgsql_linux# initdb -D db
initdb: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
```

## 

```
ccc@localhost:~/pgsql$ initdb -D db
The files belonging to this database system will be owned by user "ccc".
This user must also own the server process.

The database cluster will be initialized with locale "en_US.UTF-8".
The default database encoding has accordingly been set to "UTF8".
The default text search configuration will be set to "english".

Data page checksums are disabled.

fixing permissions on existing directory db ... ok
creating subdirectories ... ok
selecting default max_connections ... 100
selecting default shared_buffers ... 128MB
selecting default timezone ... Etc/UTC
selecting dynamic shared memory implementation ... posix
creating configuration files ... ok
running bootstrap script ... ok
performing post-bootstrap initialization ... ok
syncing data to disk ... ok

WARNING: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    pg_ctl -D db -l logfile start

ccc@localhost:~/pgsql$ createdb mydb
createdb: could not connect to database template1: FATAL:  role "ccc" does not 
exist
```


* https://docs.postgresql.tw/server-administration/database-roles/database-roles



