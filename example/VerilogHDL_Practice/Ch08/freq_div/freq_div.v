// Ch08 freq_div.v
// 除頻電路

module freq_div (Clk,Clr,Q1,Q2,Q3);
input  Clk,Clr;		// 一位元輸入
output [3:0] Q1,Q2;	// 四位元輸出
output Q3;		// 一位元輸出
reg    [3:0] Q1,Q2;	// 宣告為暫存器資料
reg     Q3;		// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, 除頻 (2的次方)
always@ (posedge Clk) 
  if (Clr)    Q1 = 0;
  else 	      Q1 = Q1 + 1;

// 上緣觸發時脈, 上緣同步清除, 除頻 (除6,不對稱)
always@ (posedge Clk) 
  if (Clr)           Q2 = 0;
  else if (Q2 == 5)  Q2 = 0;
  else 	             Q2 = Q2 + 1;

// 除頻 (除6,對稱), 組合邏輯電路
always@ (Q2) 
  if (Q2 <= 2)  Q3 = 1;		// Q2 為 0, 1, 2 時
  else 	        Q3 = 0; 	// Q2 為 3, 4, 5 時

endmodule
