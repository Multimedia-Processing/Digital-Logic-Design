// Ch10 div10.v
// 除頻 /10

module div10 (Clk_i,Clr,Clk_o);
input  Clk_i,Clr;	// 一位元輸入
output Clk_o;		// 一位元輸出
reg    Clk_o;		// 宣告為暫存器資料
reg    [3:0] Q; 	// 宣告為暫存器資料

// MOD-10 (BCD) 除頻
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 9)  Q = 0;
  else                Q = Q + 1;

// 形成對稱方波
always@ (Q)
  if (Q <= 4)  Clk_o  = 0;
  else         Clk_o  = 1;
  
endmodule
