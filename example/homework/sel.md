# 多工器
### 2x1多工器
以下是2X1多工器，是多工器的最小單位。

![2021-09-23 00-54-42 的螢幕擷圖](https://i.imgur.com/YweseX5.png)

Verilog程式碼

```verilog
module sel_2x1 (a, b, sel, out);
  input a, b, sel;
  output out;
  wire sel_a, sel_b;

  assign sel_a = ~(a & ~sel);
  assign sel_b = ~(b & sel);
  assign out = ~(sel_a & sel_b);

endmodule // sel_2x1
```

Verilog測試檔案

```verilog
`include "sel_2x1.v"

module sel_2x1_test ();
  reg a, b, sel;
  wire out;
  integer number1, number2;

  sel_2x1 UUT (a, b, sel, out);

  initial begin
    $display("| a | b | sel | out |");
    for (number1 = 0; number1 < 4; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 2; number2 = number2 + 1)
          begin
            {a, b} = number1;
            {sel} = number2;
            $monitor("| %b | %b |  %b  |  %b  |", a, b, sel, out);
            #10;
          end
      end
    $finish;
  end

endmodule // sel_2x1_test
```

測試結果

```
| a | b | sel | out |
| 0 | 0 |  0  |  0  |
| 0 | 0 |  1  |  0  |
| 0 | 1 |  0  |  0  |
| 0 | 1 |  1  |  1  |
| 1 | 0 |  0  |  1  |
| 1 | 0 |  1  |  0  |
| 1 | 1 |  0  |  1  |
| 1 | 1 |  1  |  1  |
```

### 4x1多工器

```verilog
module sel_4x1 (a, b, c, d, sel0, sel1, out);
input a, b, c, d;
input sel0, sel1;
output out;
wire sel0_b, sel1_b;
wire a_sel, b_sel, c_sel, d_sel;

not not_sel0(sel0_b, sel0);
not not_sel1(sel1_b, sel1);

and(a_sel, a, sel1_b, sel0_b);
and(b_sel, b, sel1_b, sel0);
and(c_sel, c, sel1, sel0_b);
and(d_sel, d, sel1, sel0);
or(out, a_sel, b_sel, c_sel, d_sel);

endmodule // sel_4x1
```

Verilog測試檔案

```verilog
`include "sel_4x1.v"

module sel_4x1_test ();
  reg a, b, c, d, sel0, sel1;
  wire out;
  integer number1, number2;

  sel_4x1 UUT (a, b, c, d, sel0, sel1, out);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 4; number2 = number2 + 1)
          begin
            {a, b, c, d} = number1;
            {sel0, sel1} = number2;
            $monitor("| %b | %b | %b | %b | %b | %b | %b |",
              a, b, c, d, sel0, sel1, out);
            #10;
          end
      end
    $finish;
  end

endmodule // sel_4x1_test
```

測試結果

```
| 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 0 | 0 | 1 | 0 | 1 | 0 |
| 0 | 0 | 0 | 1 | 1 | 0 | 0 |
| 0 | 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 | 1 |
| 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 0 | 1 | 1 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 | 1 | 1 |
| 0 | 0 | 1 | 1 | 1 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 0 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 1 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 1 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 | 1 | 1 |
| 1 | 0 | 1 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 | 0 | 1 | 1 |
| 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 | 0 | 1 | 1 |
| 1 | 0 | 1 | 1 | 1 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 | 1 |
| 1 | 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 | 1 | 0 | 1 |
| 1 | 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 1 | 0 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 | 1 | 1 |
```
