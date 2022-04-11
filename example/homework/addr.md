## 加法器
加法器是常見的運算元件，也是數位邏輯中基本元件之一，加法器除了加法外可以延伸製作減法、乘法以及除法。

一個加法器包括了加數、被加數、進位、輸出，也因此最小一位元加法器單元有分成兩種，半加法器、全加法器。

而透過半加法器組成的全加法器中，依照速度與特性又分成兩種加法器：「漣波加法器」、「前瞻加法器」，分別以簡單與快速成為兩種的特性。

這邊都會詳細的說明其中原理與推導。

### 一位元半加法器

Verilog程式碼

```verilog
module half_adder (a, b, sum, carry);
input a, b;
output sum, carry;

xor (sum, a, b);
and (carry, a, b);

endmodule // half_adder

```

Verilog測試檔案

```verilog
module half_subtr_test ();
  reg [3:0] a, b;
  wire [4:0] sum;
  integer number1, number2;

  half_subtr UUT (a, b, sum);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
              a = number1;
              b = number2;
              #10;
          end
      end
    $finish;
  end

endmodule // half_subtr_test

```

測試結果

```
| a   | b   | sum | carry |
| 0   | 0   | 0   | 0     |
| 0   | 1   | 1   | 0     |
| 1   | 0   | 1   | 0     |
| 1   | 1   | 0   | 1     |
```

### 一位元全加法器

全加器具有前級進位、和、進位，半加器則只具有和、進位。

使用AND邏輯閘做出來。

Verilog程式碼

```verilog
module full_adder (a, b, ci, sum, carry);

input a, b, ci;
output carry, sum;
wire a_b, a_ci, b_ci;

xor (sum, a, b, ci);
and (a_b, a, b);
and (a_ci, a, ci);
and (b_ci, b, ci);
or (carry, a_b, a_ci, b_ci);

endmodule // full_adder
```

Verilog測試檔案

```verilog
`timescale 1ns / 1ps
`include "full_adder.v"

module full_adder_test ();
  reg a, b, ci;
  wire sum, carry;
  integer number1, number2, number3;

  full_adder UUT (a, b, ci, sum, carry);

  initial begin
    for (number1 = 0; number1 < 2; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 2; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                ci = number3;
                $monitor("| %b | %b | %b | %b | %b |", a, b, ci, sum, carry);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // full_adder_test

```

Verilog程式碼

```verilog
module adder_one_assign (a, b, ci, co, sum);
input a, b, ci;
output co, sum;

assign sum = a ^ b ^ ci;
assign co = (a & b) | (a & ci) | (b & ci);

endmodule // adder_one_assign

```

Verilog測試檔案

```verilog
`timescale 1ns / 1ps

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

Verilog程式碼

```verilog
module adder_one_if (a, b, ci, co, sum);
input a, b, ci;
output co, sum;
reg co, sum;


always @ ( a or b or ci ) begin
  if ({a, b, ci} == 0) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 1) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 2) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 3) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 4) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 5) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 6) begin
    {co, sum} = 2'b00;
  end else begin
    {co, sum} = 2'b00;
  end

end

endmodule // adder_one_if

```

Verilog測試檔案

```verilog
`timescale 1ns / 1ps

module adder_one_if_test ();
reg a, b, ci;
wire co, sum;
integer i;

adder_one_if UUT (.a(a), .b(b), .ci(ci), .co(co), .sum(sum));

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


endmodule // adder_one_if_test

```

訊號模擬結果：

![2021-11-12 18-06-14 的螢幕擷圖](https://i.imgur.com/I4h8uI1.png)

使用兩個半加器組成全加器，這樣的作法就有點算是漣波加法器的作法，只是是在1位元就這麼做。

Verilog程式碼

```verilog
```

Verilog測試檔案

```verilog

```

### 漣波加法器
透過進位的方式，一級一級的串接，達到進位的作法，在加法運算中會因為需要等前一級進位才可下一位進位，因此當串聯的數量高的時候速度就會很慢，因此為了改善會使用前瞻進位加法器這類的加法方式。

#### 4位元漣波加法器

Verilog程式碼

```verilog
`include "full_adder.v"

module full_adder_4_bit (a, b, ci, sum, co);

input [3:0] a, b;
input ci;
output [3:0] sum;
output co;
wire carry1, carry2, carry3;

full_adder add1(a[0], b[0], ci, sum[0], carry1);
full_adder add2(a[1], b[1], carry1, sum[1], carry2);
full_adder add3(a[2], b[2], carry2, sum[2], carry3);
full_adder add4(a[3], b[3], carry3, sum[3], co);

endmodule // full_add_4_bit

```

Verilog測試檔案

```verilog
`include "full_adder_4_bit.v"

module full_adder_4_bit_test ();
  reg [3:0] a, b;
  reg ci;
  wire [3:0] sum;
  wire co;
  integer number1, number2, number3;

  full_adder_4_bit UUT (a, b, ci, sum, co);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                ci = number3;
                $monitor("| %d | %d | %b | %d | %b |", a, b, ci, sum, co);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // full_adder_4_bit_test

```

### 4位元加法器
透過 `assign` 的連續指定方式，設計加法器。

Verilog程式碼

```verilog
module adder_four (sum, co, a, b, ci);
input [3:0] a, b;
input ci;
output [3:0] sum;
output co;

assign {co, sum} = (a + b + ci);

endmodule // adder_four

```

Verilog測試檔案

```verilog
`timescale 1ns / 1ps
`include "adder_4_assign.v"

module adder_4_assign_test ();
reg [3:0] a, b;
reg [3:0] sum;
reg ci, co;
integer i;

adder_4_assign UUT (.co(co), .sum(sum), .a(a), .b(b), .ci(ci));

initial begin
  ci = 0;
  for (i = 0; i < 8; i = i + 2)
    begin
      a = i;
      b = 16 - i;
      ci = ~ci;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_4_assign_test

```
