# conan

reference - https://docs.conan.io/en/latest/getting_started.html

## install

```
$ pip install conan
```

## make

```
   18  mkdir build && cd build
   19  conan install ..
   20  cmake .. -G "Visual Studio 16"
   21  cmake --build . --config Release
   22  ./bin/md5
```

## windows + git bash (success)

```
Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/se/conan/md5 (master)       
$ mkdir build && cd build

Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/se/conan/md5/build (master)
$ conan install ..
Configuration:
[settings]
arch=x86_64
arch_build=x86_64     
build_type=Release    
compiler=Visual Studio
compiler.runtime=MD   
compiler.version=16   
os=Windows
os_build=Windows      
[options]
[build_requires]      
[env]

conanfile.txt: Installing package
Requirements
    bzip2/1.0.8 from 'conancenter' - Cache
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache
Packages
    bzip2/1.0.8:d16a91eadaaf5829b928b12d2f836ff7680d3df5 - Cache
    expat/2.4.1:ce5788ba7e3bb7dc834e36b06df66c481f42c99a - Cache
    openssl/1.1.1k:3fb49604f9c2f729b85ba3115852006824e72cab - Cache
    pcre/8.45:e87a8a0d1a34c63e57cfcfa8aa6088b17582df41 - Cache
    poco/1.9.4:827d0093fffd24b2cf1576c6515a7f7707d5d2b9 - Cache
    sqlite3/3.36.0:050fb3a4d3559ab088bce91739e61889c28839d1 - Cache
    zlib/1.2.11:3fb49604f9c2f729b85ba3115852006824e72cab - Cache

Installing (downloading, building) binaries...
bzip2/1.0.8: Already installed!
bzip2/1.0.8: Appending PATH environment variable: C:\Users\Hero3C\.conan\data\bzip2\1.0.8\_\_\package\d16a91eadaaf5829b928b12d2f836ff7680d3df5\bin
expat/2.4.1: Already installed!
openssl/1.1.1k: Already installed!
sqlite3/3.36.0: Already installed!
sqlite3/3.36.0: Appending PATH env var with : C:\Users\Hero3C\.conan\data\sqlite3\3.36.0\_\_\package\050fb3a4d3559ab088bce91739e61889c28839d1\bin
zlib/1.2.11: Already installed!
pcre/8.45: Already installed!
pcre/8.45: Appending PATH environment variable: C:\Users\Hero3C\.conan\data\pcre\8.45\_\_\package\e87a8a0d1a34c63e57cfcfa8aa6088b17582df41\bin
poco/1.9.4: Already installed!
conanfile.txt: Generator txt created conanbuildinfo.txt
conanfile.txt: Generator cmake created conanbuildinfo.cmake
conanfile.txt: Aggregating env generators
conanfile.txt: Generated conaninfo.txt
conanfile.txt: Generated graphinfo

Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/se/conan/md5/build (master) 
$ cmake .. -G "Visual Studio 16"
-- Selecting Windows SDK version 10.0.19041.0 to target Windows 10.0.19043.
-- The C compiler identification is MSVC 19.29.30133.0
-- The CXX compiler identification is MSVC 19.29.30133.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64/cl.exe - skipped   
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64/cl.exe - skipped 
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: Adjusting output directories
-- Conan: Using cmake global configuration
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Current conanbuildinfo.cmake directory: C:/ccc/course/sa/c/se/conan/md5/build
-- Configuring done
-- Generating done
-- Build files have been written to: C:/ccc/course/sa/c/se/conan/md5/build

Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/se/conan/md5/build (master) 
$ cmake --build . --config Release
Microsoft (R) Build Engine for .NET Framework 16.11.0+0538acc04 版
Copyright (C) Microsoft Corporation. 著作權所有，並保留一切權利。

  Checking Build System
  Building Custom Rule C:/ccc/course/sa/c/se/conan/md5/CMakeLists.txt
  md5.cpp
  md5.vcxproj -> C:\ccc\course\sa\c\se\conan\md5\build\bin\md5.exe
  Building Custom Rule C:/ccc/course/sa/c/se/conan/md5/CMakeLists.txt

Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/se/conan/md5/build (master) 
$ ./bin/md5
c3fcd3d76192e4007dfb496cca67e13b
```
