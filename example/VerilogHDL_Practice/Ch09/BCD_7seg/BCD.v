// Ch09 BCD.v
// BCD 上數計數器

module BCD (Clk,Clr,Cnt);
input  Clk,Clr;		// 一位元輸入
output [3:0] Cnt;	// 四位元輸出
reg    [3:0] Cnt;	// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, BCD上數計數器
always@ (posedge Clk) 
  if (Clr)
    Cnt = 0;
  else if (Cnt == 9)
    Cnt = 0;
  else
    Cnt = Cnt + 1;
 
endmodule
