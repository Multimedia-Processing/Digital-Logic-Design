# C -- 避免陷阱，提高品質的方法

* [C/C++ 語言新手十三誡 (PTT)](https://www.ptt.cc/bbs/C_and_CPP/M.1465304337.A.9F2.html)
* [《C陷阱與缺陷》 閱讀總結](https://codertw.com/%E7%A8%8B%E5%BC%8F%E8%AA%9E%E8%A8%80/429214/)
* [高等C語言](https://shengwen1997.gitbooks.io/program_with_c/content/index.html)
* [C语言常见易混易犯错误（C语言陷阱与缺陷前三章基础内容总结）](https://zhuanlan.zhihu.com/p/168784500)
* 21st Century C
    * https://github.com/b-k/21st-Century-Examples
    * 直接跑在 Linux 中程式碼，看程式碼，不用買書 ....

## 避免陷阱的總體方法

1. gcc 總是加上 -Wall
2. 使用有 lint 的編輯器
3. 溶入 Linux/POSIX 的環境寫 C 語言，然後善用外部函式庫
    * 例如 glib2, sqlite, gsl
    * 參考 https://github.com/b-k/21st-Century-Examples
    * 繪圖程式可用 SDL2 套件
    * 凡事都自己重來很累，也很容易出錯 ...
    * C 語言預設沒有 map, hashtable ，不代表你得用 C++ ... (glib2 有且很好用)
    * Windows 底下可以安裝 WSL 或 msys2，不需要非得用 Visual Studio ... 
    * sscanf 某種程度上可以代替正規表達式。
    * 別總是想著要在 Windows 上用 Visual Studio 工具開發 C 語言
    * 真的要跨 Windows/Mac/Linux 的 C 程式，幾乎都會使用 CMake
    * https://cliutils.gitlab.io/modern-cmake/
4. 用 valgrind 檢查記憶體漏洞
5. C 語言比較適合做系統程式，或者需要速度很快的程式
    * 像是 Compiler/OS/VM/Assembler/嵌入式系統 或 Linux/POSIX 上的那些系統程式
    * 不需要速度快的，或許用 Python 就行了！
    * 網站前端得用 JavaScript, 手機 App 得用 Swift/Kotlin/C#/Dart(Flutter), 遊戲得用 C#+Unity ，不要企圖用一種語言做所有事情。
6. 要學好更專業的 C 語言，建議向 github 上的高品質程式碼學習
    * 像是 jserv 的作品 (mini-arm-os/rv32emu-next/sehttpd/simplefs)
    * 或者小型的編譯器 (c4/rubi/shecc)
    * c4 -- https://github.com/ccc-c/c4/wiki
    * 或者 xv6 這樣的教學型作業系統 https://github.com/riscv2os/riscv2os/wiki
    * xv6 -- https://github.com/riscv2os/riscv2os/tree/master/xv6
    * 向 UNIX/Linux 學習是很好的方式
    * 自製 C 語言標準函式庫也可以學到很多

## 基本陷阱

1. = 和 == 誤用
    * `if (a=5) ...`
2. switch case 忘記加 break
3. 懸掛的 else
    * 應該習慣加上 {}
4. < 和 <= 誤用
5. scanf 沒加上位址
    * `char a; scanf("%c", a);`
6. 分號沒加或多加
7. scanf 的 %c 是以空格結束的
    * `char s[100]; scanf("%s", s);` // 然後輸入 hello world!, 123 結果只會得到 hello，沒有 world!
    * 若要得到 hello world! 應該用甚麼呢？
    * `scanf("%[^,]", s);`
    * https://shengwen1997.gitbooks.io/program_with_c/content/sscanf.html
8. 轉型所造成的問題 (兩邊型態應相同，不同須強制轉型，勿濫用)
    * 常數 unsigned 應加上 u，例如 37u，浮點應加上 .0，例如 3.0
9. i++ 與 ++i 不同。
    * `int i=1, j=2; i++ = ++j;` 該如何解讀呢？
10. macro 應在所有參數使用時加括號。
    * `#define SQUARE(x) (x*x)`
    * 呼叫 `SQUARE(10-5)` 會如何？
    * `#define MAX(x,y) ((x)>(y)?x:y)`
    * 不加 () 的話，若呼叫 `MAX(a==1, 5)` 會如何？
11. 不要在 stack 設置過大的變數以避免堆疊溢位(stack overflow)
    * `void f() { char a[10000000]; ... }`
12. 浮點數是有誤差的，別用 `float a=0.1, b=0.2; if (a+b==0.3) ... `
13. 應用 strncpy() 取代 strcpy(), snprintf() 取代 sprintf()
    * 避免 buffer overflow 的問題
14. C 語言預設非 unicode，中文逐字處理必須使用 wchar_t 或套件
    * [C 語言中的寬字串](https://shengwen1997.gitbooks.io/program_with_c/content/wide_string.html)
    * [寬窄字串間的轉換](https://shengwen1997.gitbooks.io/program_with_c/content/wide_narrow_transform.html)
15. 字串長度多少才夠呢？
    * https://shengwen1997.gitbooks.io/program_with_c/content/string_wrong_using.html
16. 運算子優先順序不確定時，請加上 ()
    * `a&b + c*d`
    * `(a&b) + (c*d)`
17. 在不同的編譯器上， int 的長度不同，可能是2/4/8 bytes
18. unsigned 的轉換
    * `char c = 0x80; unsigned int a = 0; int b = 0, d=0; `
    * `a = c;` //c將首先被轉換為int型別，由於存在符號位擴充套件，a=0xffffff80
    * `b = c;` //c將首先被轉換為int型別，由於存在符號位擴充套件，b=0xffffff80
    * `d = (unsigned char)c;` //c是無符號型別，不會進行符號位擴充套件,d=0x00000080

## 指標陷阱

1. 指標亂指，或使用超出陣列範圍
    * `int *p; p=100; *p = 3;`
    * `int a[10]; int *p=a; p+=10; *p=3;`
2. 有 malloc 沒有 free，或者沒 malloc 卻 free 了
    * 或者重複的 free 
3. 指標指向區域變數後傳回 (堆疊已回收)
    * `char *f() { char a[10]="hello"; return a; }`
4. 誤將指標設定為內容
    * `*ip=&i; ip = 7; *ip=5;`
5. 指標運算每次是加那個型態的大小
    * `long a[10], p=a; p+=3;` // p 前進 12 個 byte 
6. 忘記初始化
    * `char *r, *s="hello!"; strcpy(r, s);`
    * `char *p; *p = 5;`
    * `char *p; scanf("%s", p);`
7. malloc 卻沒檢查分配是否成功
    * 若不想檢查，請使用自己的 MALLOC()，分配失敗就 assert 或 error
8. 你不可以試圖用 char* 去更改一個"字串常數"
    * `char* p="john"; *p = 'J';`
9. strcat() 不會另行配置空間 (沒宣告更大就 strcat ...)
10. 二維陣列不是指標的指標
    * `int a[5][10]; int **p = a;`
11. 函式內 malloc 出來的空間記得要讓主程式的指標接住
    * 否則就會記憶體洩漏
    * 可以用 valgrind 檢查
    * http://wen00072.github.io/blog/2014/11/29/catching-leakage-use-valgrind-checking-c-memory-leak/

## 參數傳遞

1. 參數傳回可用 return，勿過度用指標型參數去回傳。
    * `void f(char *p, int *a, char **pp, int *ap[])` // 這不太好 ....
2. 不要拿著指標參數當區域變數用。
    * `void f(int a[], int *p) { for (*p=a; ; *p++) a[*p]=... }`
3. 參數盡量加上 const
    * 一律用 `const char*` 定義字串常數
4. 參數中的指標 `*p` 與陣列 `p[]` 同義，但一般宣告時意義不同。
5. 避免太常用 malloc() (大塊分配比小塊分配好除錯)
    * 例如： `int a[1000];` 比 `int *a[1000]; a[i]=malloc(...)` 好除錯。
    * C 語言的標準函式庫，絕大部分都避免使用 malloc() // 除了 strdup() ...

## 疑問

1. EOF 是甚麼？ 
    * 看 [fget.c](./std/fget.c)
    * EOF 是 int, 不是 char ，這樣才不會有任何一個 char 真的是 EOF。
    * `while ((c=fgetc(f)) != EOF) {...}`

## 提高品質

1. 善用結構
    * [結構的初始化](https://shengwen1997.gitbooks.io/program_with_c/content/struct_init.html)
    * `(struct point) {.x=3.0, .y=5.0}`
2. 利用巨集簡化語法
    * [鏈結串列:Linux 核心](https://shengwen1997.gitbooks.io/program_with_c/content/linking_list_external_object.html)
3. 善用函數指標
    * [鏈結串列：通用性鏈結串列](https://shengwen1997.gitbooks.io/program_with_c/content/linking_list_with_object.html)
4. 當物件化會更好的時候
    * [以 C 語言實作物件封裝](https://shengwen1997.gitbooks.io/program_with_c/content/encapsulation.html)
    * [Jserv's blog:以 C 語言實做 Javascript 的 prototype 特性](http://blog.linux.org.tw/~jserv/archives/002057.html)
5. 奇技淫巧只在必要時使用 (總要進階到專業級，但不要濫用奇技淫巧)
    * [以 C 語言實做 Functional Language 的 Currying](http://blog.linux.org.tw/~jserv/archives/002029.html)
6. 必要時可以用字串化 #var 或 token 化 var##..)
    * [https://shengwen1997.gitbooks.io/program_with_c/content/Stringification.html](https://shengwen1997.gitbooks.io/program_with_c/content/Stringification.html)
7. 學會寫 *.h 檔，正確使用 #pragma once 或引用防護 #ifndef
    * `#ifndef __XXX__ #define __XXX__ ... #endif`
    * `#pragma once`
8. 大一點的專案，應該分模組，並且撰寫 Makefile
    * Linux 上還有 automake, 但要跨 Linux/Windows 平台得用 CMake
9. 學會用 assert 
10. 學會用 gcc 預先定義的巨集標記，像是 `__FILE__, __LINE__`
    * `#define ASSERT(cond) if (!cond) printf("Assertion (" #cond ") fail!\nFile: %s, Line %d\n", __FILE__, __LINE__);`
11. 學會用 variadic ，特別是巨集中的 ...
    * `#define check(cond, fmt, ...) { if (cond) printf(fmt, __VA_ARGS__); assert(cond); }`
    * 自己寫個簡單的 sprintf 或 sscanf ，只要支援 `%c %d %s` 就行了。
