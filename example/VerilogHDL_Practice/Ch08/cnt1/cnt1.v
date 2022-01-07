// Ch08 cnt1.v
// 上數與下數計數器

module cnt1 (Clk,Clr,Q1,Q2);
input  Clk,Clr;		// 一位元輸入
output [3:0] Q1,Q2;	// 四位元輸出 
reg    [3:0] Q1,Q2;	// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, 上數計數器
always@ (posedge Clk) 
  if (Clr)  Q1 = 0;
  else 	    Q1 = Q1 + 1;

// 上緣觸發時脈, 上緣同步清除, 減二下數計數器
always@ (posedge Clk) 
  if (Clr)  Q2 = 15;
  else 	    Q2 = Q2 - 2;

endmodule