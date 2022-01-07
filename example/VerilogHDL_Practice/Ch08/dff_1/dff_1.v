// Ch08 dff_1.v
// D 型正反器與控制信號

module dff_1 (Clk,D,Din,Clr1,Clr2,Pre,Load,Q1,Q2,Q3,Q4);
input  Clk,D,Din,Clr1,Clr2,Pre,Load;	// 一位元輸入
output Q1,Q2,Q3,Q4;			// 一位元輸出 
reg    Q1,Q2,Q3,Q4;			// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除
always@ (posedge Clk)	// 同步清除, 無須列出
  if (Clr1)   Q1 = 0;	// 上緣觸發, Clr1
  else 	      Q1 = D;

// 上緣觸發時脈, 上緣非同步清除
always@ (posedge Clk or posedge Clr2)  // 非同步清除, 必須列出
  if (Clr2)   Q2 = 0;	// 上緣觸發, Clr2
  else        Q2 = D;

// 下緣觸發時脈, 下緣非同步預置
always@ (negedge Clk or negedge Pre)  // 非同步預置, 必須列出
  if (!Pre)   Q3 = 1;	// 下緣觸發, !Pre
  else        Q3 = D;

// 下緣觸發時脈, 下緣同步載入
always@ (negedge Clk)   // 同步載入, 無須列出
  if (!Load)  Q4 = Din;	// 下緣觸發, !Load
  else	      Q4 = D;

endmodule


