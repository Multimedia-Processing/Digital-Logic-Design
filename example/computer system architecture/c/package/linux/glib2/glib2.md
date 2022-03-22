

```
Tim@DESKTOP-QOC5V2F MINGW64 ~
$ ls

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pacman -S glib2
警告：glib2-2.54.3-1 已經為最新——重新安裝
正在解決依賴關係…
正在檢查衝突的軟體包…

軟體包 (1) glib2-2.54.3-1

總計下載大小：   1.82 MiB
總計安裝大小：  10.58 MiB
淨升級大小：   0.00 MiB

:: 進行安裝嗎？ [Y/n] y
:: 正在接收軟體包…
 glib2-2.54.3-1-x86_64   1861.0 KiB   701K/s 00:03 [#####################] 100%
(1/1) 正在檢查鑰匙圈中的鑰匙                       [#####################] 100%
(1/1) 正在檢查軟體包完整性                         [#####################] 100%
(1/1) 正在載入軟體包檔案                           [#####################] 100%
(1/1) 正在檢查檔案衝突                             [#####################] 100%
(1/1) 正在檢查可用磁碟空間                         [#####################] 100%
:: 正在處理軟體包變更…
(1/1) 正在重裝 glib2                               [#####################] 100%

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pacman -Ss glib2
mingw32/mingw-w64-i686-glib2 2.60.3-1
    Common C routines used by GTK+ 2.4 and other libs (mingw-w64)
mingw64/mingw-w64-x86_64-glib2 2.60.3-1
    Common C routines used by GTK+ 2.4 and other libs (mingw-w64)
msys/glib2 2.54.3-1 [已安裝]
    Common C routines used by GTK+ and other libs
msys/glib2-devel 2.54.3-1 (development)
    glib2 headers and libraries
msys/glib2-docs 2.54.3-1
    Documentation for glib2

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pacman -S mingw-w64-x86_64-glib2
正在解決依賴關係…
正在檢查衝突的軟體包…

軟體包 (29) mingw-w64-x86_64-bzip2-1.0.6-6
            mingw-w64-x86_64-ca-certificates-20180409-1
            mingw-w64-x86_64-expat-2.2.6-1  mingw-w64-x86_64-gcc-libs-8.3.0-2
            mingw-w64-x86_64-gettext-0.19.8.1-8  mingw-w64-x86_64-gmp-6.1.2-1
            mingw-w64-x86_64-libffi-3.2.1-4  mingw-w64-x86_64-libiconv-1.16-1
            mingw-w64-x86_64-libsystre-1.0.1-4
            mingw-w64-x86_64-libtasn1-4.13-1
            mingw-w64-x86_64-libtre-git-r128.6fb7206-2
            mingw-w64-x86_64-libwinpthread-git-7.0.0.5447.a2d94c81-1
            mingw-w64-x86_64-mpc-1.1.0-1  mingw-w64-x86_64-mpdecimal-2.4.2-1
            mingw-w64-x86_64-mpfr-4.0.2-2
            mingw-w64-x86_64-ncurses-6.1.20180908-1
            mingw-w64-x86_64-openssl-1.1.1.b-1
            mingw-w64-x86_64-p11-kit-0.23.16.1-1  mingw-w64-x86_64-pcre-8.43-1
            mingw-w64-x86_64-python3-3.7.3-3
            mingw-w64-x86_64-readline-8.0.000-2
            mingw-w64-x86_64-sqlite3-3.28.0-1  mingw-w64-x86_64-tcl-8.6.9-2
            mingw-w64-x86_64-termcap-1.3.1-3  mingw-w64-x86_64-tk-8.6.9.1-1
            mingw-w64-x86_64-wineditline-2.205-1  mingw-w64-x86_64-xz-5.2.4-1
            mingw-w64-x86_64-zlib-1.2.11-7  mingw-w64-x86_64-glib2-2.60.3-1

總計下載大小：   40.29 MiB
總計安裝大小：  294.24 MiB

:: 進行安裝嗎？ [Y/n] y
:: 正在接收軟體包…
 mingw-w64-x86_64-gm...   486.0 KiB   368K/s 00:01 [#####################] 100%
 mingw-w64-x86_64-mp...   345.9 KiB  1074K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-mp...    78.9 KiB   781K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-li...    44.3 KiB  1385K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-gc...   581.5 KiB  1201K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-ex...   158.7 KiB   822K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-li...   623.0 KiB  1182K/s 00:01 [#####################] 100%
 mingw-w64-x86_64-ge...     3.1 MiB  1348K/s 00:02 [#####################] 100%
 mingw-w64-x86_64-bz...    81.3 KiB   946K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-wi...    52.7 KiB   775K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-zl...   102.1 KiB  1110K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-pc...   885.1 KiB  1238K/s 00:01 [#####################] 100%
 mingw-w64-x86_64-li...    44.9 KiB   749K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-mp...   254.2 KiB   204K/s 00:01 [#####################] 100%
 mingw-w64-x86_64-li...    84.2 KiB   674K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-li...    24.0 KiB   521K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-nc...  1756.2 KiB  1321K/s 00:01 [#####################] 100%
 mingw-w64-x86_64-li...   186.3 KiB   996K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-p1...   300.1 KiB   131K/s 00:02 [#####################] 100%
 mingw-w64-x86_64-ca...   356.3 KiB   288K/s 00:01 [#####################] 100%
錯誤：無法取得檔案「mingw-w64-x86_64-openssl-1.1.1.b-1-any.pkg.tar.xz」從 repo.msys2.org：Operation too slow. Less than 1 bytes/sec transferred the last 10 seconds
 mingw-w64-x86_64-op...  1629.3 KiB  1034K/s 00:02 [#####################] 100%
 mingw-w64-x86_64-tc...     3.0 MiB   799K/s 00:04 [#####################] 100%
 mingw-w64-x86_64-tk...  1897.4 KiB   993K/s 00:02 [#####################] 100%
 mingw-w64-x86_64-xz...   297.7 KiB   822K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-te...    27.1 KiB   577K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-re...   372.9 KiB  1120K/s 00:00 [#####################] 100%
 mingw-w64-x86_64-sq...   854.2 KiB  1185K/s 00:01 [#####################] 100%
錯誤：無法取得檔案「mingw-w64-x86_64-python3-3.7.3-3-any.pkg.tar.xz」從 repo.msys2.org：Operation too slow. Less than 1 bytes/sec transferred the last 10 seconds
 mingw-w64-x86_64-py...     4.0 MiB  1073K/s 00:04 [#####################] 100%
 mingw-w64-x86_64-gl...     4.4 MiB   473K/s 00:10 [#####################] 100%
(29/29) 正在檢查鑰匙圈中的鑰匙                     [#####################] 100%
(29/29) 正在檢查軟體包完整性                       [#####################] 100%
(29/29) 正在載入軟體包檔案                         [#####################] 100%
(29/29) 正在檢查檔案衝突                           [#####################] 100%
(29/29) 正在檢查可用磁碟空間                       [#####################] 100%
:: 正在處理軟體包變更…
( 1/29) 正在安裝 mingw-w64-x86_64-gmp              [#####################] 100%
( 2/29) 正在安裝 mingw-w64-x86_64-mpfr             [#####################] 100%
( 3/29) 正在安裝 mingw-w64-x86_64-mpc              [#####################] 100%
( 4/29) 正在安裝 mingw-w64-x86_64-libwinpthrea...  [#####################] 100%
( 5/29) 正在安裝 mingw-w64-x86_64-gcc-libs         [#####################] 100%
( 6/29) 正在安裝 mingw-w64-x86_64-expat            [#####################] 100%
( 7/29) 正在安裝 mingw-w64-x86_64-libiconv         [#####################] 100%
( 8/29) 正在安裝 mingw-w64-x86_64-gettext          [#####################] 100%
( 9/29) 正在安裝 mingw-w64-x86_64-bzip2            [#####################] 100%
(10/29) 正在安裝 mingw-w64-x86_64-wineditline      [#####################] 100%
(11/29) 正在安裝 mingw-w64-x86_64-zlib             [#####################] 100%
(12/29) 正在安裝 mingw-w64-x86_64-pcre             [#####################] 100%
(13/29) 正在安裝 mingw-w64-x86_64-libffi           [#####################] 100%
(14/29) 正在安裝 mingw-w64-x86_64-mpdecimal        [#####################] 100%
(15/29) 正在安裝 mingw-w64-x86_64-libtre-git       [#####################] 100%
(16/29) 正在安裝 mingw-w64-x86_64-libsystre        [#####################] 100%
(17/29) 正在安裝 mingw-w64-x86_64-ncurses          [#####################] 100%
(18/29) 正在安裝 mingw-w64-x86_64-libtasn1         [#####################] 100%
(19/29) 正在安裝 mingw-w64-x86_64-p11-kit          [#####################] 100%
(20/29) 正在安裝 mingw-w64-x86_64-ca-certificates  [#####################] 100%
(21/29) 正在安裝 mingw-w64-x86_64-openssl          [#####################] 100%
(22/29) 正在安裝 mingw-w64-x86_64-tcl              [#####################] 100%
(23/29) 正在安裝 mingw-w64-x86_64-tk               [#####################] 100%
(24/29) 正在安裝 mingw-w64-x86_64-xz               [#####################] 100%
(25/29) 正在安裝 mingw-w64-x86_64-termcap          [#####################] 100%
(26/29) 正在安裝 mingw-w64-x86_64-readline         [#####################] 100%
(27/29) 正在安裝 mingw-w64-x86_64-sqlite3          [#####################] 100%
(28/29) 正在安裝 mingw-w64-x86_64-python3          [#####################] 100%
(29/29) 正在安裝 mingw-w64-x86_64-glib2            [#####################] 100%
找不到 schema 檔案：不做任何事。

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pacman -Ss pkg-config
mingw32/mingw-w64-i686-pkg-config 0.29.2-1 (mingw-w64-i686-toolchain)
    A system for managing library compile/link flags (mingw-w64)
mingw32/mingw-w64-i686-python2-pkgconfig 1.4.0-1
    A Python interface to the pkg-config command line tool
mingw32/mingw-w64-i686-python3-pkgconfig 1.4.0-1
    A Python interface to the pkg-config command line tool
mingw32/mingw-w64-i686-ruby-pkg-config 1.3.2-1
    Implementation of pkg-config in ruby (mingw-w64)
mingw64/mingw-w64-x86_64-pkg-config 0.29.2-1 (mingw-w64-x86_64-toolchain)
    A system for managing library compile/link flags (mingw-w64)
mingw64/mingw-w64-x86_64-python2-pkgconfig 1.4.0-1
    A Python interface to the pkg-config command line tool
mingw64/mingw-w64-x86_64-python3-pkgconfig 1.4.0-1
    A Python interface to the pkg-config command line tool
mingw64/mingw-w64-x86_64-ruby-pkg-config 1.3.2-1
    Implementation of pkg-config in ruby (mingw-w64)
msys/pkg-config 0.29.2-1 (base-devel)
    A system for managing library compile/link flags

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pacman -S mingw-w64-x86_64-pkg-config
正在解決依賴關係…
正在檢查衝突的軟體包…

軟體包 (1) mingw-w64-x86_64-pkg-config-0.29.2-1

總計下載大小：  0.23 MiB
總計安裝大小：  1.31 MiB

:: 進行安裝嗎？ [Y/n] y
:: 正在接收軟體包…
 mingw-w64-x86_64-pk...   238.9 KiB   226K/s 00:01 [#####################] 100%
(1/1) 正在檢查鑰匙圈中的鑰匙                       [#####################] 100%
(1/1) 正在檢查軟體包完整性                         [#####################] 100%
(1/1) 正在載入軟體包檔案                           [#####################] 100%
(1/1) 正在檢查檔案衝突                             [#####################] 100%
(1/1) 正在檢查可用磁碟空間                         [#####################] 100%
:: 正在處理軟體包變更…
(1/1) 正在安裝 mingw-w64-x86_64-pkg-config         [#####################] 100%

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pkg-config glib2

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pkg-config -c glib2
Unknown option -c

Tim@DESKTOP-QOC5V2F MINGW64 ~
$ pkg-config --cflags glib-2.0
-mms-bitfields -IC:/msys64/mingw64/include/glib-2.0 -IC:/msys64/mingw64/lib/glib-2.0/include -IC:/msys64/mingw64/include

Tim@DESKTOP-QOC5V2F MINGW64 ~
```
