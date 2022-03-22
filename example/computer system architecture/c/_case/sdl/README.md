# sdl

* 教材 -- https://lazyfoo.net/tutorials/SDL/ (good!)
    * https://github.com/haxpor/lazyfoo-sdl2c


## run

```
  77  ./msys2run.sh 03_event_close
   79  ./msys2run.sh 04_key_press
   90  ./msys2run.sh 05_stretching
   92  ./msys2run.sh 06_extlib
   98  ./msys2run.sh 07_hardware_render
  100  ./msys2run.sh 08_geometry_render
  101  ./msys2run.sh 09_viewport
```



## msys2 / mingw64 版 (成功)

我安裝了這個 

mingw64/mingw-w64-x86_64-SDL2 2.0.14-2 [installed]
    A library for portable low-level access to a video framebuffer, audio
    output, mouse, and keyboard (Version 2) (mingw-w64)

但是編譯有錯

```
Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/_case/sdl
$ gcc -I/mingw64/include/SDL2 bezier.c -o bezier -L/mingw64/lib/ -lSDL2 -lSDL2main -lm
/usr/lib/gcc/x86_64-pc-msys/10.2.0/../../../../x86_64-pc-msys/bin/ld: /usr/lib/gcc/x86_64-pc-msys/10.2.0/../../../../lib/libmsys-2.0.a(libcmain.o): in function `main':
/c/_/S/msys2-runtime/src/msys2-runtime/winsup/cygwin/lib/libcmain.c:37: undefined reference to `WinMain'
collect2: error: ld returned 1 exit status

```

猜測應該將主程式改為 WinMain，於是對了，可以正確執行：

```
Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/_case/sdl
$ gcc -I/mingw64/include/SDL2 bezier_win.c -o bezier_win -L/mingw64/lib/ -lSDL2 -lSDL2main -lm

Hero3C@DESKTOP-O093POU MINGW64 /c/ccc/course/sa/c/_case/sdl
$ ./bezier_win

```

後來又加裝了這些

```
   31  pacman -S mingw64/mingw-w64-x86_64-SDL2_image
   32  pacman -S mingw64/mingw-w64-x86_64-SDL2_gfx
   33  pacman -S mingw64/mingw-w64-x86_64-smpeg2
```


## build

在 SDL2-2.0.16.zip 解壓縮後，SDL2/docs 下有一個 INSTALL.txt 的檔案，告訴我們如何建置 SDL

```
To compile and install SDL:

    1.  Windows with Visual Studio:
        * Read ./docs/README-visualc.md

        Windows with gcc, either native or cross-compiling:
        * Read the FAQ at https://wiki.libsdl.org/FAQWindows
        * Run './configure; make; make install'

        Mac OS X with Xcode:
        * Read docs/README-macosx.md

        Mac OS X from the command line:
        * Run './configure; make; make install'

        Linux and other UNIX systems:
        * Run './configure; make; make install'

        Android:
        * Read docs/README-android.md

        iOS:
        * Read docs/README-ios.md

        Using Cmake:
        * Read docs/README-cmake.md

    2.  Look at the example programs in ./test, and check out the online
        documentation at https://wiki.libsdl.org/

    3.  Join the SDL developer discussions, sign up on 
        https://discourse.libsdl.org/
        and go to the development forum
        https://discourse.libsdl.org/c/sdl-development/6

    4.  Sign up for the announcement list through the web interface:
        https://www.libsdl.org/mailing-list.php

That's it!
Sam Lantinga <slouken@libsdl.org>
```


## git bash (失敗)

按照其方法，我在 git bash 中 configure 完後，用 make 建置失敗

```
$ make
C:/Program Files/Git/usr/bin/sh.exe build-scripts/updaterev.sh                      ath_LD contains a newline
C:/Program Files/Git/usr/bin/sh.exe build-ath_LDCXX contains a newlinescripts/mkinstalldirs build
mkdir -p -- build                         scripts/updaterev.sh
touch build/.created                      scripts/mkinstalldirs build
  CC     build/SDL.lo
/usr/bin/sh: C:/Program: No such file or directory
make: *** [Makefile:266: build/SDL.lo] Errirectoryor 127                                    or 127
$ pwd
/c/ccc/course/sa/c/_case/sdl/SDL2
```

