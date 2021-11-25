## 簡介
將由作者本人設計，使用開放原始碼的Python程式語言作為指令集架構，因技術成熟與IC製程帶來的優勢將過去限制成為可能，將改變過去高階程式語言需要多次轉換問題，產生新的「可程式規劃裝置—程式語言指令集架構—軟體」新架構，將因Python豐富套件與廣大社群而邁向新的開放社群與模式。

同樣會帶著各位一步一步設計出此處理器，處理器的原始碼採開放授權，可以在此得到最新的內容

## Python指令集處理器
「Python指令集處理器」(Python instruction set computer)是一個基於Python程式語言所製作出的指令集處理器，目的是讓Python程式語言可以直接在硬體直接執行，無須經過多次轉譯但又保留動態語言的特性，讓執行Python程式語言時一樣強大且便利同時快速。

對應的CPU該有的特性：

- 運算核心注重的是「複雜型可程式邏輯元件」(CPLD, Complex PLD)與「現場可程式閘陣列」(FPGA, Field Programmable Gate Array)數量而非實體核心數
- 在邏輯電路可以無限增加與無限制的條件下，指令集定義處理器的邏輯電路，實現高階型指令集
- 程式語言即是組合語言，也就是程式語言即是指令集

這樣的好處：

- 大幅簡化主機板所使用晶片與減少電子零件使用數量，加快與週邊硬體的溝通速度
- 擴充容易且可以持續改進
- 程式執行速度快，中間無須經過轉換

## 指令集
盡可能與最新版本的Python指令集同步，以跟上使用方式。

-   [1. 淺嘗滋味](https://docs.python.org/zh-tw/3/tutorial/appetite.html)
-   [2. 使用 Python 直譯器](https://docs.python.org/zh-tw/3/tutorial/interpreter.html)
    -   [2.1. 啟動直譯器](https://docs.python.org/zh-tw/3/tutorial/interpreter.html#invoking-the-interpreter)
        -   [2.1.1. 傳遞引數](https://docs.python.org/zh-tw/3/tutorial/interpreter.html#argument-passing)
        -   [2.1.2. 互動模式](https://docs.python.org/zh-tw/3/tutorial/interpreter.html#interactive-mode)
    -   [2.2. 直譯器與它的環境](https://docs.python.org/zh-tw/3/tutorial/interpreter.html#the-interpreter-and-its-environment)
        -   [2.2.1. 原始碼的字元編碼 (encoding)](https://docs.python.org/zh-tw/3/tutorial/interpreter.html#source-code-encoding)
-   [3. 一個非正式的 Python 簡介](https://docs.python.org/zh-tw/3/tutorial/introduction.html)
    -   [3.1. 把 Python 當作計算機使用](https://docs.python.org/zh-tw/3/tutorial/introduction.html#using-python-as-a-calculator)
        -   [3.1.1. 數字 (Number)](https://docs.python.org/zh-tw/3/tutorial/introduction.html#numbers)
        -   [3.1.2. 字串 (String)](https://docs.python.org/zh-tw/3/tutorial/introduction.html#strings)
        -   [3.1.3. List（串列）](https://docs.python.org/zh-tw/3/tutorial/introduction.html#lists)
    -   [3.2. 初探程式設計的前幾步](https://docs.python.org/zh-tw/3/tutorial/introduction.html#first-steps-towards-programming)
-   [4. 深入了解流程控制](https://docs.python.org/zh-tw/3/tutorial/controlflow.html)
    -   [4.1. `if` 陳述式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#if-statements)
    -   [4.2. `for` 陳述式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#for-statements)
    -   [4.3. `range()` 函式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#the-range-function)
    -   [4.4. 迴圈內的 `break` 和 `continue` 陳述式及 `else` 子句](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#break-and-continue-statements-and-else-clauses-on-loops)
    -   [4.5. `pass` 陳述式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#pass-statements)
    -   [4.6. `match` 陳述式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#match-statements)
    -   [4.7. 定義函式 (function)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#defining-functions)
    -   [4.8. 深入了解函式定義](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#more-on-defining-functions)
        -   [4.8.1. 預設引數值](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#default-argument-values)
        -   [4.8.2. 關鍵字引數](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#keyword-arguments)
        -   [4.8.3. 特殊參數](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#special-parameters)
            -   [4.8.3.1. 位置或關鍵字引數 (Positional-or-Keyword Arguments)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#positional-or-keyword-arguments)
            -   [4.8.3.2. 僅限位置參數 (Positional-Only Parameters)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#positional-only-parameters)
            -   [4.8.3.3. 僅限關鍵字引數 (Keyword-Only Arguments)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#keyword-only-arguments)
            -   [4.8.3.4. 函式範例](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#function-examples)
            -   [4.8.3.5. 回顧](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#recap)
        -   [4.8.4. 任意引數列表 (Arbitrary Argument Lists)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#arbitrary-argument-lists)
        -   [4.8.5. 拆解引數列表（Unpacking Argument Lists）](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#unpacking-argument-lists)
        -   [4.8.6. Lambda 運算式](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#lambda-expressions)
        -   [4.8.7. 說明文件字串 (Documentation Strings)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#documentation-strings)
        -   [4.8.8. 函式註釋 (Function Annotations)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#function-annotations)
    -   [4.9. 間奏曲：程式碼風格 (Coding Style)](https://docs.python.org/zh-tw/3/tutorial/controlflow.html#intermezzo-coding-style)
-   [5. 資料結構](https://docs.python.org/zh-tw/3/tutorial/datastructures.html)
    -   [5.1. 進一步了解 List（串列）](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#more-on-lists)
        -   [5.1.1. 將 List 作為 Stack（堆疊）使用](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#using-lists-as-stacks)
        -   [5.1.2. 將 List 作為 Queue（佇列）使用](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#using-lists-as-queues)
        -   [5.1.3. List Comprehensions（串列綜合運算）](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#list-comprehensions)
        -   [5.1.4. 巢狀的 List Comprehensions](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#nested-list-comprehensions)
    -   [5.2. `del` 陳述式](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#the-del-statement)
    -   [5.3. Tuples 和序列 (Sequences)](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#tuples-and-sequences)
    -   [5.4. 集合 (Sets)](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#sets)
    -   [5.5. 字典（Dictionary）](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#dictionaries)
    -   [5.6. 迴圈技巧](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#looping-techniques)
    -   [5.7. 深入了解條件 (Condition)](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#more-on-conditions)
    -   [5.8. 序列和其他資料類型之比較](https://docs.python.org/zh-tw/3/tutorial/datastructures.html#comparing-sequences-and-other-types)
-   [6. 模組 (Module)](https://docs.python.org/zh-tw/3/tutorial/modules.html)
    -   [6.1. 深入了解模組](https://docs.python.org/zh-tw/3/tutorial/modules.html#more-on-modules)
        -   [6.1.1. 把模組當作腳本執行](https://docs.python.org/zh-tw/3/tutorial/modules.html#executing-modules-as-scripts)
        -   [6.1.2. 模組的搜尋路徑](https://docs.python.org/zh-tw/3/tutorial/modules.html#the-module-search-path)
        -   [6.1.3. 「編譯」Python 檔案](https://docs.python.org/zh-tw/3/tutorial/modules.html#compiled-python-files)
    -   [6.2. 標準模組](https://docs.python.org/zh-tw/3/tutorial/modules.html#standard-modules)
    -   [6.3. `dir()` 函式](https://docs.python.org/zh-tw/3/tutorial/modules.html#the-dir-function)
    -   [6.4. 套件 (Package)](https://docs.python.org/zh-tw/3/tutorial/modules.html#packages)
        -   [6.4.1. 從套件中 import *](https://docs.python.org/zh-tw/3/tutorial/modules.html#importing-from-a-package)
        -   [6.4.2. 套件內引用](https://docs.python.org/zh-tw/3/tutorial/modules.html#intra-package-references)
        -   [6.4.3. 多目錄中的套件](https://docs.python.org/zh-tw/3/tutorial/modules.html#packages-in-multiple-directories)
-   [7. 輸入和輸出](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html)
    -   [7.1. 更華麗的輸出格式](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#fancier-output-formatting)
        -   [7.1.1. 格式化的字串文本 (Formatted String Literals)](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#formatted-string-literals)
        -   [7.1.2. 字串的 format() method](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#the-string-format-method)
        -   [7.1.3. 手動格式化字串](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#manual-string-formatting)
        -   [7.1.4. 格式化字串的舊方法](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#old-string-formatting)
    -   [7.2. 讀寫檔案](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#reading-and-writing-files)
        -   [7.2.1. 檔案物件的 method](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#methods-of-file-objects)
        -   [7.2.2. 使用 `json` 儲存結構化資料](https://docs.python.org/zh-tw/3/tutorial/inputoutput.html#saving-structured-data-with-json)
-   [8. 錯誤和例外](https://docs.python.org/zh-tw/3/tutorial/errors.html)
    -   [8.1. 語法錯誤 (Syntax Error)](https://docs.python.org/zh-tw/3/tutorial/errors.html#syntax-errors)
    -   [8.2. 例外 (Exception)](https://docs.python.org/zh-tw/3/tutorial/errors.html#exceptions)
    -   [8.3. 處理例外](https://docs.python.org/zh-tw/3/tutorial/errors.html#handling-exceptions)
    -   [8.4. 引發例外](https://docs.python.org/zh-tw/3/tutorial/errors.html#raising-exceptions)
    -   [8.5. 例外鏈接 (Exception Chaining)](https://docs.python.org/zh-tw/3/tutorial/errors.html#exception-chaining)
    -   [8.6. 使用者自定的例外](https://docs.python.org/zh-tw/3/tutorial/errors.html#user-defined-exceptions)
    -   [8.7. 定義清理動作](https://docs.python.org/zh-tw/3/tutorial/errors.html#defining-clean-up-actions)
    -   [8.8. 預定義的清理動作](https://docs.python.org/zh-tw/3/tutorial/errors.html#predefined-clean-up-actions)
-   [9. Class（類別）](https://docs.python.org/zh-tw/3/tutorial/classes.html)
    -   [9.1. 關於名稱與物件的一段話](https://docs.python.org/zh-tw/3/tutorial/classes.html#a-word-about-names-and-objects)
    -   [9.2. Python 作用域 (Scope) 及命名空間 (Namespace)](https://docs.python.org/zh-tw/3/tutorial/classes.html#python-scopes-and-namespaces)
        -   [9.2.1. 作用域和命名空間的範例](https://docs.python.org/zh-tw/3/tutorial/classes.html#scopes-and-namespaces-example)
    -   [9.3. 初見 class](https://docs.python.org/zh-tw/3/tutorial/classes.html#a-first-look-at-classes)
        -   [9.3.1. Class definition（類別定義）語法](https://docs.python.org/zh-tw/3/tutorial/classes.html#class-definition-syntax)
        -   [9.3.2. Class 物件](https://docs.python.org/zh-tw/3/tutorial/classes.html#class-objects)
        -   [9.3.3. 實例物件](https://docs.python.org/zh-tw/3/tutorial/classes.html#instance-objects)
        -   [9.3.4. Method 物件](https://docs.python.org/zh-tw/3/tutorial/classes.html#method-objects)
        -   [9.3.5. Class 及實例變數](https://docs.python.org/zh-tw/3/tutorial/classes.html#class-and-instance-variables)
    -   [9.4. 隨意的備註](https://docs.python.org/zh-tw/3/tutorial/classes.html#random-remarks)
    -   [9.5. 繼承 (Inheritance)](https://docs.python.org/zh-tw/3/tutorial/classes.html#inheritance)
        -   [9.5.1. 多重繼承](https://docs.python.org/zh-tw/3/tutorial/classes.html#multiple-inheritance)
    -   [9.6. 私有變數](https://docs.python.org/zh-tw/3/tutorial/classes.html#private-variables)
    -   [9.7. 補充說明](https://docs.python.org/zh-tw/3/tutorial/classes.html#odds-and-ends)
    -   [9.8. 疊代器 (Iterator)](https://docs.python.org/zh-tw/3/tutorial/classes.html#iterators)
    -   [9.9. 產生器 (Generator)](https://docs.python.org/zh-tw/3/tutorial/classes.html#generators)
    -   [9.10. 產生器運算式](https://docs.python.org/zh-tw/3/tutorial/classes.html#generator-expressions)
-   [10. Python 標準函式庫概覽](https://docs.python.org/zh-tw/3/tutorial/stdlib.html)
    -   [10.1. 作業系統介面](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#operating-system-interface)
    -   [10.2. 檔案之萬用字元 (File Wildcards)](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#file-wildcards)
    -   [10.3. 命令列引數](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#command-line-arguments)
    -   [10.4. 錯誤輸出重新導向與程式終止](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#error-output-redirection-and-program-termination)
    -   [10.5. 字串樣式比對](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#string-pattern-matching)
    -   [10.6. 數學相關](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#mathematics)
    -   [10.7. 網路存取](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#internet-access)
    -   [10.8. 日期與時間](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#dates-and-times)
    -   [10.9. 資料壓縮](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#data-compression)
    -   [10.10. 效能量測](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#performance-measurement)
    -   [10.11. 品質控管](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#quality-control)
    -   [10.12. 標準模組庫](https://docs.python.org/zh-tw/3/tutorial/stdlib.html#batteries-included)
-   [11. Python 標準函式庫概覽——第二部份](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html)
    -   [11.1. 輸出格式化 (Output Formatting)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#output-formatting)
    -   [11.2. 模板化 (Templating)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#templating)
    -   [11.3. 二進制資料記錄編排 (Binary Data Record Layouts)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#working-with-binary-data-record-layouts)
    -   [11.4. 多執行緒 (Multi-threading)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#multi-threading)
    -   [11.5. 日誌記錄 (Logging)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#logging)
    -   [11.6. 弱引用 (Weak References)](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#weak-references)
    -   [11.7. 使用於 List 的工具](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#tools-for-working-with-lists)
    -   [11.8. 十進制 (Decimal) 浮點數運算](https://docs.python.org/zh-tw/3/tutorial/stdlib2.html#decimal-floating-point-arithmetic)
-   [12. 虛擬環境與套件](https://docs.python.org/zh-tw/3/tutorial/venv.html)
    -   [12.1. 簡介](https://docs.python.org/zh-tw/3/tutorial/venv.html#introduction)
    -   [12.2. 建立虛擬環境](https://docs.python.org/zh-tw/3/tutorial/venv.html#creating-virtual-environments)
    -   [12.3. 用 pip 管理套件](https://docs.python.org/zh-tw/3/tutorial/venv.html#managing-packages-with-pip)
-   [13. 現在可以來學習些什麼？](https://docs.python.org/zh-tw/3/tutorial/whatnow.html)
-   [14. 互動式輸入編輯和歷史記錄替換](https://docs.python.org/zh-tw/3/tutorial/interactive.html)
    -   [14.1. Tab 鍵自動完成 (Tab Completion) 和歷史記錄編輯 (History Editing)](https://docs.python.org/zh-tw/3/tutorial/interactive.html#tab-completion-and-history-editing)
    -   [14.2. 互動式直譯器的替代方案](https://docs.python.org/zh-tw/3/tutorial/interactive.html#alternatives-to-the-interactive-interpreter)
-   [15. 浮點數運算：問題與限制](https://docs.python.org/zh-tw/3/tutorial/floatingpoint.html)
    -   [15.1. 表示法誤差 (Representation Error)](https://docs.python.org/zh-tw/3/tutorial/floatingpoint.html#representation-error)
-   [16. 附錄](https://docs.python.org/zh-tw/3/tutorial/appendix.html)
    -   [16.1. 互動模式](https://docs.python.org/zh-tw/3/tutorial/appendix.html#interactive-mode)
        -   [16.1.1. 錯誤處理](https://docs.python.org/zh-tw/3/tutorial/appendix.html#error-handling)
        -   [16.1.2. 可執行的 Python 腳本](https://docs.python.org/zh-tw/3/tutorial/appendix.html#executable-python-scripts)
        -   [16.1.3. 互動式啟動檔案](https://docs.python.org/zh-tw/3/tutorial/appendix.html#the-interactive-startup-file)
        -   [16.1.4. 客製化模組](https://docs.python.org/zh-tw/3/tutorial/appendix.html#the-customization-modules)

### 指令集格式規範
#### 資料輸入寬度
採用EPE8規範，限制資料進入寬度為80字元，包含了未來使用UTF-32，因此保留平行輸入 $`80 \times 32 = 2560`$  Bits 解碼器。

#### 縮排
採用EPE8規範，規定縮排使用4字元的空白組成，且不得使用Tab鍵。

#### 變數名稱使用
同與Python一樣是大小寫區分。
