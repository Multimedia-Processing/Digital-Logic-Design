# sqlite

參考 -- http://zetcode.com/db/sqlitec/

## 安裝

```
$ pacman -S mingw-w64-x86_64-sqlite3
警告：mingw-w64-x86_64-sqlite3-3.23.1-1 已經爲最新 -- 重新安裝
正在解決依賴關係...
正在檢查衝突的套件...

套件 (1) mingw-w64-x86_64-sqlite3-3.23.1-1

總計安裝大小：  5.66 MiB
淨升級大小：  0.00 MiB

:: 進行安裝嗎？ [Y/n] y
(1/1) 正在檢查鑰匙圈中的鑰匙                         [###########################] 100%
(1/1) 正在檢查套件完整性                             [###########################] 100%
(1/1) 正在載入套件檔案                               [###########################] 100%
(1/1) 正在檢查檔案衝突                               [###########################] 100%
(1/1) 正在檢查可用磁碟空間                           [###########################] 100%
:: 正在處理套件變更...
錯誤：無法取得目前的工作目錄
(1/1) 正在重裝 mingw-w64-x86_64-sqlite3              [###########################] 100%

$ pkg-config --cflags sqlite3
-I/mingw64/include

$ pkg-config --libs sqlite3
-L/mingw64/lib -lsqlite3 -lz

```

## 編譯執行

```
Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/sqlite
$ ./sqlite_write

Tim@DESKTOP-QOC5V2F MINGW64 /d/ccc/sp2/database/sqlite
$ ./sqlite_read
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
