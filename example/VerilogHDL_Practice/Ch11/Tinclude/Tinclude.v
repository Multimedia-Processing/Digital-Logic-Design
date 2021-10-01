// Ch11 Tinclude.v
// 除頻 /10 對稱方波

// 將 div10.v 含括進來
`include "div10.v"

module Tinclude (Clk_i,Clr,Clk_o,Q);
input  Clk_i,Clr;	// 一位元輸入
output Clk_o;		// 一位元輸出
output [3:0] Q;		// 四位元輸出
reg    Clk_o;		// 宣告為暫存器資料
reg    [3:0] Q; 	// 宣告為暫存器資料

// MOD-10 (BCD) 除頻, 呼叫 div10 例證
div10 div_0 (Clk_i, Clr, Q);

// 形成對稱方波
always@ (Q)
  if (Q <= 4)  Clk_o  = 0;
  else         Clk_o  = 1;
  
endmodule
