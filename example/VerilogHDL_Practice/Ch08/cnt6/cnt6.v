// Ch08 cnt6.v
// 三位元漣波計數器

module cnt6 (Clk,Clr,Q);
input  Clk,Clr;		// 一位元輸入
output [2:0] Q;		// 三位元輸出
reg    [2:0] Q;		// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, T 型正反器
always@ (posedge Clk or posedge Clr) 	// 時脈為上緣觸發 Clk
  if (Clr)        Q[0] = 0;
  else            Q[0] = ~Q[0];

always@ (negedge Q[0] or posedge Clr) 	// 時脈為下緣觸發 Q[0]
  if (Clr)        Q[1] = 0;
  else            Q[1] = ~Q[1];

always@ (negedge Q[1] or posedge Clr) 	// 時脈為下緣觸發 Q[1]
  if (Clr)        Q[2] = 0;
  else            Q[2] = ~Q[2];


  
endmodule
