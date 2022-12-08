## 簡介

## 基本架構
```verilog
module module_name (a, b, c, n);
  // 輸入輸出宣告
  input a, b;
  output c, n;

  // 資料類型宣告
  wire name;
  reg name;  

  // 描述模組內部電路敘述
endmodule // module_name

```

## 資料類型

### parameter
`parameter` 關鍵字用於設定為參數資料。

```verilog
parameter parameter_type parameter_name = parameter_value,
```

## 邏輯閘層次
「邏輯閘層次」(Gate Level)

## 資料流層次
「資料流層次」(Dataflow Level)

### assign連續指定
`assign`連續指定 **適用於輸入輸出埠、 `wire` 、 `wand` 、 `wor` 、 `tri`等訊號運算，不適合用在 `reg` 上面。** 基本語法：

```verilog
assign 輸出訊號 = 輸入訊號與運算子的組合運算式;
```

使用 `assign` 做具有記憶功能的運算式是不合法的，例如 `assign a = a + c` ，此是將 `a` 加上 `c` 然後回存到 `a` ，此時就會要用到暫存器 `reg` ，在組合邏輯電路上是合成不出來的。

### 運算子

| 運算子名稱 |                      符號                      |                                說明                                |
|:----------:|:----------------------------------------------:|:------------------------------------------------------------------:|
|    算術    |         `+`, `-`, `*`, `**`, `/`, `%`          |                     加、減、乘、乘冪、除、餘數                     |
|  位元邏輯  |         `~`, `&`, `|`, `^`, `~^`, `^~`         |               反、及、或、互斥或、反互斥或、互斥反或               |
|  精簡邏輯  |  `&`, `~&`, `|`, `^`, `~|`, `~|^`, `~^`, `^~`  |     及、反及、或、互斥或、反或、反或互斥或、反互斥或、互斥反或     |
|    比較    | `>`, `>=`, `<`, `<=`, `==`, `!=`, `===`, `!==` | 大於、大於等於、小於、小於等於、等於、不等於、狀況等於、狀況不等於 |
|    邏輯    |                `!`, `&&`, `||`                 |                       邏輯反、邏輯及、邏輯或                       |
|    移位    |                   `>>`, `<<`                   |                           又移位、左移位                           |
|    條件    |                      `?:`                      |                    判斷並由兩個運算元中挑出一個                    |
|    連接    |                      `{}`                      |                          依序結合個運算元                          |

*註：`===`、`!==`不一定可以合成

### 實數運算

| 運算子名稱 |               符號               |                     說明                     |
|:----------:|:--------------------------------:|:--------------------------------------------:|
|    算術    |        `+`, `-`, `*`, `/`        |                加、減、乘、除                |
|    比較    | `>`, `>=`, `<`, `<=`, `==`, `!=` | 大於、大於等於、小於、小於等於、等於、不等於 |
|    邏輯    |         `!`, `&&`, `||`          |            邏輯反、邏輯及、邏輯或            |
|    條件    |               `?:`               |         判斷並由兩個運算元中挑出一個         |

*註：`/`不一定可以合成

### 運算子優先權

### 算術運算子

### 位元邏輯運算子

### 精簡邏輯運算子

### 比較運算子

### 邏輯運算子

### 移位運算子

### 條件運算子

### 連接運算子

##  練習題

<details>
<summary>Verilog練習題程式碼 </summary>

``` verilog
module data_flow (P, Q, R, S, T, U, V, W, X, Y, Z);

    input [4:0]P;
    input [4:0]Q;
    output [6:0]R;
    output [3:0]S;
    output [5:0]T;
    output [4:0]U;
    output [4:0]V;
    output [5:0]W;
    output [4:0]X;
    output Y;
    output Z;

    assign R = (P * 3);
    assign S = (Q >> 1);
    assign T = 4'b1001 + P;
    assign U = ~(P & Q);
    assign V = {P[1:0], P[4:2]};
    assign W = {P[2:0], Q[4:2]};
    assign X = (P > 10) ? P:Q;
    assign Y = (Q >= 10)? ((Q <= 20)? 1'b1:1'b0):1'b0;
    assign Z = ~^ P;

endmodule 
```
</details>

<details>
<summary>Verilog測式檔</summary>

``` verilog
`timescale 1ns / 1ps

module data_flow_test ();

    reg [4:0]P;
    reg [4:0]Q;
    wire [6:0]R;
    wire [3:0]S;
    wire [5:0]T;
    wire [4:0]U;
    wire [4:0]V;
    wire [5:0]W;
    wire [4:0]X;
    wire Y;
    wire Z;

    data_flow UUT (P, Q, R, S, T, U, V, W, X, Y, Z);
    
    initial begin
        P=5'b00000; Q=5'b00000;
        #100; 
            P=5'b11000; Q=5'b10101;
        #100; 
            P=5'b00111; Q=5'b01010;
        #100;
            P=5'b10011; Q=5'b11010;
        #100;
            P=5'b01100; Q=5'b00101;
    end

    initial begin
        #500;
        $finish;
    end

endmodule
```
</details>

### 模擬圖
![模擬圖結果](docs/assets/data_flow.png)


## 行為層次
「行為層次」(Behavior Level)以控制結構描述方式高階描述方式來描述電路，具有高度抽象化特性，設計上較為直覺與抓大放小。

另外，除了組合邏輯電路的設計外，行為層次的設計還包含了記憶與觸發的特性，可以針對具有時序的序向電路進行設計。

如果將行為層次描述與資料流層次描述兩者結合，形成新的[暫存器轉換層次](#暫存器轉換層次)。值得注意的是， **使用 `always` 時不能使用 `assign` 在 `always` 區塊內，因為 `assign` 用於組合邏輯合成，未有觸發、記憶暫存器的功能，會引發錯誤以及衝突。**

### always 程序結構區塊
主要針對有觸發的電路設計，

```verilog
always @ (posedge wire) begin

end
```

觸發方式有三種，分別是訊號準位觸發、上升緣觸發、下降緣觸發。

### 阻隔性指定描述
具有順序的指定語法，當執行時，會先把資料給最先執行的，再給第二個的，這樣依序。

```verilog

```

### 非阻隔性指定描述

```verilog

```

## 暫存器轉換層次
「暫存器轉換層次」(RTL, Register Transfer Level)是一個在暫存器描述的方式做設計的一種描述方式，主要講述暫存器的資料移動設計，在大型的硬體描述語言設計中會使用到。

## 編譯指令與系統任務
### 編譯指令
「編譯指令」(Compiler Directive)針對編譯時的指令，對於電路設計提供更方便與彈性的設計，其中包含了 <code>&grave;include</code> 、 <code>&grave;timescale</code> 、 <code>&grave;define</code> 、 <code>&grave;undef</code> 、 <code>&grave;resetall</code> 與條件編譯指令。

#### &grave;include
<code>&grave;include</code> 可以用於匯入他人設計的 IC ，類似於 C 語言的 `#include <.h>` 的指令，只是將 `#` 上會改為「重音符號」 <code>&grave;</code>， `<>` 改為 `""` 。

```verilog
`include "verilog_file.v"
```

#### &grave;timescale
設定模擬時間的基本單位與精準度，基本使用如下。

```verilog
`timescale 時間單位 / 時間精準度
```

- **時間單位：** 時間單位以及時間精準度的單位，應該要以 0 以上的整數。
- **時間精準度：** 模擬時間與延遲時間的精準度，數字不能大於時間單位。

可以使用的單位可以為 `s` 、 `ms` 、 `us` 、 `ns` 、 `ps` 、 `fs`

例如：

```verilog
`timescale 1ns / 1ps
// `timescale 時間單位 1 奈秒 / 時間精準度 1 皮秒

module adder_one_assign_test ();
reg a, b, ci;
wire co, sum;
integer i;

adder_one_assign UUT (.a(a), .b(b), .ci(ci), .co(co), .sum(sum));

initial begin
  for (i = 0; i < 8; i = i + 1)
    begin
      {a, b, ci} = i[2:0];
      #10;
    end
end

initial begin
  #80;
  $finish;
end


endmodule // adder_one_assign_test
```

給隔 $`10ns`$ 會對 `i` 變數做加 1 的動作，到第 $`80ns`$ 時會停下來運作。

實際運作圖片

![2021-11-19 16-51-55 的螢幕擷圖](https://i.imgur.com/S7gt6nE.png)

## 任務

```
$dumpfile("simple.vcd");
$dumpvars(0,sklansky_add_tb);
```

### signed
通過 `signed` 宣告可以進行有號數運算，而 `$signed` 則產生有號數輸出訊號，因此來快速解決設計上需要思考有號數的運算。

Tag: #數位邏輯設計 #數位邏輯 #digital-logic #digital-logic-design #DigitalLogic #DigitalLogicDesign #digitallogic #digitallogicdesign #硬體描述語言 #hdl #HDL #verilog #verilogHDL
