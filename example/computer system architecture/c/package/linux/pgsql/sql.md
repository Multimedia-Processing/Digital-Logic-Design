
user@DESKTOP-96FRN6B MINGW64 ~/pgdata
$ createdb mydb

user@DESKTOP-96FRN6B MINGW64 ~/pgdata
$ psql mydb
psql (10.4)
Type "help" for help.

mydb=# SELECT version();
                                                          version

--------------------------------------------------------------------------------
--------------------------------------------
 PostgreSQL 10.4 on x86_64-w64-mingw32, compiled by x86_64-w64-mingw32-gcc.exe (
Rev2, Built by MSYS2 project) 7.3.0, 64-bit
(1 row)

mydb=# SELECT 2+2;
 ?column?
----------
        4
(1 row)

mydb=# \h
Available help:
  ABORT                            CREATE USER MAPPING
  ALTER AGGREGATE                  CREATE VIEW
  ALTER COLLATION                  DEALLOCATE
  ALTER CONVERSION                 DECLARE
  ALTER DATABASE                   DELETE
  ALTER DEFAULT PRIVILEGES         DISCARD
  ALTER DOMAIN                     DO
  ALTER EVENT TRIGGER              DROP ACCESS METHOD
  ALTER EXTENSION                  DROP AGGREGATE
  ALTER FOREIGN DATA WRAPPER       DROP CAST
  ALTER FOREIGN TABLE              DROP COLLATION
  ALTER FUNCTION                   DROP CONVERSION
  ALTER GROUP                      DROP DATABASE
  ALTER INDEX                      DROP DOMAIN
  ALTER LANGUAGE                   DROP EVENT TRIGGER
  ALTER LARGE OBJECT               DROP EXTENSION
  ALTER MATERIALIZED VIEW          DROP FOREIGN DATA WRAPPER
  ALTER OPERATOR                   DROP FOREIGN TABLE
  ALTER OPERATOR CLASS             DROP FUNCTION
  ALTER OPERATOR FAMILY            DROP GROUP
  ALTER POLICY                     DROP INDEX
  ALTER PUBLICATION                DROP LANGUAGE
  ALTER ROLE                       DROP MATERIALIZED VIEW
  ALTER RULE                       DROP OPERATOR
  ALTER SCHEMA                     DROP OPERATOR CLASS
  ALTER SEQUENCE                   DROP OPERATOR FAMILY
  ALTER SERVER                     DROP OWNED
  ALTER STATISTICS                 DROP POLICY
  ALTER SUBSCRIPTION               DROP PUBLICATION
  ALTER SYSTEM                     DROP ROLE
  ALTER TABLE                      DROP RULE
  ALTER TABLESPACE                 DROP SCHEMA
  ALTER TEXT SEARCH CONFIGURATION  DROP SEQUENCE
  ALTER TEXT SEARCH DICTIONARY     DROP SERVER
  ALTER TEXT SEARCH PARSER         DROP STATISTICS
  ALTER TEXT SEARCH TEMPLATE       DROP SUBSCRIPTION
  ALTER TRIGGER                    DROP TABLE
  ALTER TYPE                       DROP TABLESPACE
  ALTER USER                       DROP TEXT SEARCH CONFIGURATION
  ALTER USER MAPPING               DROP TEXT SEARCH DICTIONARY
  ALTER VIEW                       DROP TEXT SEARCH PARSER
  ANALYZE                          DROP TEXT SEARCH TEMPLATE
  BEGIN                            DROP TRANSFORM
  CHECKPOINT                       DROP TRIGGER
  CLOSE                            DROP TYPE
  CLUSTER                          DROP USER
  COMMENT                          DROP USER MAPPING
  COMMIT                           DROP VIEW
  COMMIT PREPARED                  END
  COPY                             EXECUTE
  CREATE ACCESS METHOD             EXPLAIN
  CREATE AGGREGATE                 FETCH
  CREATE CAST                      GRANT
  CREATE COLLATION                 IMPORT FOREIGN SCHEMA
  CREATE CONVERSION                INSERT
  CREATE DATABASE                  LISTEN
  CREATE DOMAIN                    LOAD
  CREATE EVENT TRIGGER             LOCK
  CREATE EXTENSION                 MOVE
  CREATE FOREIGN DATA WRAPPER      NOTIFY
  CREATE FOREIGN TABLE             PREPARE
  CREATE FUNCTION                  PREPARE TRANSACTION
  CREATE GROUP                     REASSIGN OWNED
  CREATE INDEX                     REFRESH MATERIALIZED VIEW
  CREATE LANGUAGE                  REINDEX
  CREATE MATERIALIZED VIEW         RELEASE SAVEPOINT
  CREATE OPERATOR                  RESET
  CREATE OPERATOR CLASS            REVOKE
  CREATE OPERATOR FAMILY           ROLLBACK
  CREATE POLICY                    ROLLBACK PREPARED
  CREATE PUBLICATION               ROLLBACK TO SAVEPOINT
  CREATE ROLE                      SAVEPOINT
  CREATE RULE                      SECURITY LABEL
  CREATE SCHEMA                    SELECT
  CREATE SEQUENCE                  SELECT INTO
  CREATE SERVER                    SET
  CREATE STATISTICS                SET CONSTRAINTS
  CREATE SUBSCRIPTION              SET ROLE
  CREATE TABLE                     SET SESSION AUTHORIZATION
  CREATE TABLE AS                  SET TRANSACTION
  CREATE TABLESPACE                SHOW
  CREATE TEXT SEARCH CONFIGURATION START TRANSACTION
  CREATE TEXT SEARCH DICTIONARY    TABLE
  CREATE TEXT SEARCH PARSER        TRUNCATE
  CREATE TEXT SEARCH TEMPLATE      UNLISTEN
  CREATE TRANSFORM                 UPDATE
  CREATE TRIGGER                   VACUUM
  CREATE TYPE                      VALUES
  CREATE USER                      WITH
mydb=# \q

```


## 操作

script -- https://github.com/postgres/postgres/tree/master/src/tutorial

```
$ psql -s mydb
psql (10.4)
Type "help" for help.

mydb=# \i basics.sql
basics.sql: No such file or directory
mydb=# CREATE TABLE weather (
mydb(#     city            varchar(80),
mydb(#     temp_lo         int,           -- low temperature
mydb(#     temp_hi         int,           -- high temperature
mydb(#     prcp            real,          -- precipitation
mydb(#     date            date
mydb(# );
***(Single step mode: verify command)*******************************************

CREATE TABLE weather (
    city            varchar(80),
    temp_lo         int,
    temp_hi         int,
    prcp            real,
    date            date
);
***(press return to proceed or enter x and return to cancel)********************


CREATE TABLE
mydb=# CREATE TABLE cities (
mydb(#     name            varchar(80),
mydb(#     location        point
mydb(# );
***(Single step mode: verify command)*******************************************

CREATE TABLE cities (
    name            varchar(80),
    location        point
);
***(press return to proceed or enter x and return to cancel)********************


CREATE TABLE
mydb=# INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

***(Single step mode: verify command)*******************************************

INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
***(press return to proceed or enter x and return to cancel)********************


INSERT 0 1
mydb=# INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');
***(Single step mode: verify command)*******************************************

INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');
***(press return to proceed or enter x and return to cancel)********************


INSERT 0 1
mydb=# INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
mydb-#     VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');
***(Single step mode: verify command)*******************************************

INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');
***(press return to proceed or enter x and return to cancel)********************


INSERT 0 1
mydb=# INSERT INTO weather (date, city, temp_hi, temp_lo)
mydb-#     VALUES ('1994-11-29', 'Hayward', 54, 37);
***(Single step mode: verify command)*******************************************

INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);
***(press return to proceed or enter x and return to cancel)********************


INSERT 0 1
mydb=# SELECT * FROM weather;
***(Single step mode: verify command)*******************************************

SELECT * FROM weather;
***(press return to proceed or enter x and return to cancel)********************


     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      43 |      57 |    0 | 1994-11-29
 Hayward       |      37 |      54 |      | 1994-11-29
(3 rows)

```

## Part2

```
mydb=# SELECT * FROM weather;
***(Single step mode: verify command)*******************************************

SELECT * FROM weather;
***(press return to proceed or enter x and return to cancel)********************


     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      43 |      57 |    0 | 1994-11-29
 Hayward       |      37 |      54 |      | 1994-11-29
(3 rows)

mydb=# SELECT city, temp_lo, temp_hi, prcp, date FROM weather;
***(Single step mode: verify command)*******************************************
SELECT city, temp_lo, temp_hi, prcp, date FROM weather;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      43 |      57 |    0 | 1994-11-29
 Hayward       |      37 |      54 |      | 1994-11-29
(3 rows)

mydb=# SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;
***(Single step mode: verify command)*******************************************
SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_avg |    date
---------------+----------+------------
 San Francisco |       48 | 1994-11-27
 San Francisco |       50 | 1994-11-29
 Hayward       |       45 | 1994-11-29
(3 rows)

mydb=# SELECT * FROM weather
mydb-#     WHERE city = 'San Francisco' AND prcp > 0.0;
***(Single step mode: verify command)*******************************************
SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
(1 row)

mydb=# SELECT * FROM weather
mydb-#     ORDER BY city;
***(Single step mode: verify command)*******************************************
SELECT * FROM weather
    ORDER BY city;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 Hayward       |      37 |      54 |      | 1994-11-29
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      43 |      57 |    0 | 1994-11-29
(3 rows)

mydb=# SELECT * FROM weather
mydb-#     ORDER BY city, temp_lo;
***(Single step mode: verify command)*******************************************
SELECT * FROM weather
    ORDER BY city, temp_lo;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 Hayward       |      37 |      54 |      | 1994-11-29
 San Francisco |      43 |      57 |    0 | 1994-11-29
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
(3 rows)

mydb=# SELECT DISTINCT city
mydb-#     FROM weather;
***(Single step mode: verify command)*******************************************
SELECT DISTINCT city
    FROM weather;
***(press return to proceed or enter x and return to cancel)********************

     city
---------------
 Hayward
 San Francisco
(2 rows)

mydb=# SELECT DISTINCT city
mydb-#     FROM weather
mydb-#     ORDER BY city;
***(Single step mode: verify command)*******************************************
SELECT DISTINCT city
    FROM weather
    ORDER BY city;
***(press return to proceed or enter x and return to cancel)********************

     city
---------------
 Hayward
 San Francisco
(2 rows)

```

## Part3

```
mydb=# SELECT *
mydb-#     FROM weather, cities
mydb-#     WHERE city = name;
***(Single step mode: verify command)*******************************************
SELECT *
    FROM weather, cities
    WHERE city = name;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    |     name      | locatio
n
---------------+---------+---------+------+------------+---------------+--------
---
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,5
3)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,5
3)
(2 rows)

mydb=# SELECT city, temp_lo, temp_hi, prcp, date, location
mydb-#     FROM weather, cities
mydb-#     WHERE city = name;
***(Single step mode: verify command)*******************************************
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather, cities
    WHERE city = name;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    | location
---------------+---------+---------+------+------------+-----------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | (-194,53)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | (-194,53)
(2 rows)

mydb=# SELECT weather.city, weather.temp_lo, weather.temp_hi,
mydb-#        weather.prcp, weather.date, cities.location
mydb-#     FROM weather, cities
mydb-#     WHERE cities.name = weather.city;
***(Single step mode: verify command)*******************************************
SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather, cities
    WHERE cities.name = weather.city;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    | location
---------------+---------+---------+------+------------+-----------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | (-194,53)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | (-194,53)
(2 rows)

mydb=# SELECT *
mydb-#     FROM weather INNER JOIN cities ON (weather.city = cities.name);
***(Single step mode: verify command)*******************************************
SELECT *
    FROM weather INNER JOIN cities ON (weather.city = cities.name);
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    |     name      | locatio
n
---------------+---------+---------+------+------------+---------------+--------
---
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,5
3)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,5
3)
(2 rows)

mydb=# SELECT *
mydb-#     FROM weather LEFT OUTER JOIN cities ON (weather.city = cities.name);
***(Single step mode: verify command)*******************************************
SELECT *
    FROM weather LEFT OUTER JOIN cities ON (weather.city = cities.name);
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    |     name      | locatio
n
---------------+---------+---------+------+------------+---------------+--------
---
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,5
3)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,5
3)
 Hayward       |      37 |      54 |      | 1994-11-29 |               |
(3 rows)

mydb=# SELECT W1.city, W1.temp_lo AS low, W1.temp_hi AS high,
mydb-#     W2.city, W2.temp_lo AS low, W2.temp_hi AS high
mydb-#     FROM weather W1, weather W2
mydb-#     WHERE W1.temp_lo < W2.temp_lo
mydb-#     AND W1.temp_hi > W2.temp_hi;
***(Single step mode: verify command)*******************************************
SELECT W1.city, W1.temp_lo AS low, W1.temp_hi AS high,
    W2.city, W2.temp_lo AS low, W2.temp_hi AS high
    FROM weather W1, weather W2
    WHERE W1.temp_lo < W2.temp_lo
    AND W1.temp_hi > W2.temp_hi;
***(press return to proceed or enter x and return to cancel)********************

     city      | low | high |     city      | low | high
---------------+-----+------+---------------+-----+------
 San Francisco |  43 |   57 | San Francisco |  46 |   50
 Hayward       |  37 |   54 | San Francisco |  46 |   50
(2 rows)

mydb=# SELECT *
mydb-#     FROM weather w, cities c
mydb-#     WHERE w.city = c.name;
***(Single step mode: verify command)*******************************************
SELECT *
    FROM weather w, cities c
    WHERE w.city = c.name;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    |     name      | locatio
n
---------------+---------+---------+------+------------+---------------+--------
---
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | San Francisco | (-194,5
3)
 San Francisco |      43 |      57 |    0 | 1994-11-29 | San Francisco | (-194,5
3)
(2 rows)

```

## Part 4 -- AGGREGATION

```
mydb=# SELECT max(temp_lo) FROM weather;
***(Single step mode: verify command)*******************************************
SELECT max(temp_lo) FROM weather;
***(press return to proceed or enter x and return to cancel)********************

 max
-----
  46
(1 row)

mydb=# SELECT city FROM weather WHERE temp_lo = max(temp_lo);
***(Single step mode: verify command)*******************************************
SELECT city FROM weather WHERE temp_lo = max(temp_lo);
***(press return to proceed or enter x and return to cancel)********************

ERROR:  aggregate functions are not allowed in WHERE
LINE 1: SELECT city FROM weather WHERE temp_lo = max(temp_lo);
                                                 ^
mydb=# SELECT city FROM weather
mydb-#     WHERE temp_lo = (SELECT max(temp_lo) FROM weather);
***(Single step mode: verify command)*******************************************
SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);
***(press return to proceed or enter x and return to cancel)********************

     city
---------------
 San Francisco
(1 row)

mydb=# SELECT city, max(temp_lo)
mydb-#     FROM weather
mydb-#     GROUP BY city;
***(Single step mode: verify command)*******************************************
SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city;
***(press return to proceed or enter x and return to cancel)********************

     city      | max
---------------+-----
 Hayward       |  37
 San Francisco |  46
(2 rows)

mydb=# SELECT city, max(temp_lo)
mydb-#     FROM weather
mydb-#     GROUP BY city
mydb-#     HAVING max(temp_lo) < 40;
***(Single step mode: verify command)*******************************************
SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;
***(press return to proceed or enter x and return to cancel)********************

  city   | max
---------+-----
 Hayward |  37
(1 row)

mydb=# SELECT city, max(temp_lo)
mydb-#     FROM weather
mydb-#     WHERE city LIKE 'S%'            -- (1)
mydb-#     GROUP BY city
mydb-#     HAVING max(temp_lo) < 40;
***(Single step mode: verify command)*******************************************
SELECT city, max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'
    GROUP BY city
    HAVING max(temp_lo) < 40;
***(press return to proceed or enter x and return to cancel)********************

 city | max
------+-----
(0 rows)

```

## Part 5 -- Update & Delete

```
mydb=# UPDATE weather
mydb-#     SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
mydb-#     WHERE date > '1994-11-28';
***(Single step mode: verify command)*******************************************
UPDATE weather
    SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
    WHERE date > '1994-11-28';
***(press return to proceed or enter x and return to cancel)********************

UPDATE 2
mydb=# SELECT * FROM weather;
***(Single step mode: verify command)*******************************************
SELECT * FROM weather;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      41 |      55 |    0 | 1994-11-29
 Hayward       |      35 |      52 |      | 1994-11-29
(3 rows)

mydb=# DELETE FROM weather WHERE city = 'Hayward';
***(Single step mode: verify command)*******************************************
DELETE FROM weather WHERE city = 'Hayward';
***(press return to proceed or enter x and return to cancel)********************

DELETE 1
mydb=# SELECT * FROM weather;
***(Single step mode: verify command)*******************************************
SELECT * FROM weather;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date
---------------+---------+---------+------+------------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27
 San Francisco |      41 |      55 |    0 | 1994-11-29
(2 rows)

```

## Part 6 -- View, 

```
mydb=# CREATE VIEW myview AS
mydb-#     SELECT city, temp_lo, temp_hi, prcp, date, location
mydb-#         FROM weather, cities
mydb-#         WHERE city = name;
***(Single step mode: verify command)*******************************************
CREATE VIEW myview AS
    SELECT city, temp_lo, temp_hi, prcp, date, location
        FROM weather, cities
        WHERE city = name;
***(press return to proceed or enter x and return to cancel)********************

CREATE VIEW
mydb=# SELECT * FROM myview;
***(Single step mode: verify command)*******************************************
SELECT * FROM myview;
***(press return to proceed or enter x and return to cancel)********************

     city      | temp_lo | temp_hi | prcp |    date    | location
---------------+---------+---------+------+------------+-----------
 San Francisco |      46 |      50 | 0.25 | 1994-11-27 | (-194,53)
 San Francisco |      41 |      55 |    0 | 1994-11-29 | (-194,53)
(2 rows)

```