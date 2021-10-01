// Ch08 jk_tff.v
// JK 型正反器與 T 型正反器

module jk_tff (Clk,T,J,K,Clr,Qjk,Qt);
input  Clk,T,J,K,Clr;	// 一位元輸入
output Qjk,Qt;		// 一位元輸出 
reg    Qjk,Qt;		// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, JK 型正反器
always@ (posedge Clk) 
  if (Clr)                   Qjk = 0;
  else if ({J,K} == 2'b00)   Qjk = Qjk;
  else if ({J,K} == 2'b01)   Qjk = 0;
  else if ({J,K} == 2'b10)   Qjk = 1;
  else                       Qjk = ~ Qjk;

// 上緣觸發時脈, 上緣同步清除, T 型正反器
always@ (posedge Clk) 
  if (Clr)         Qt = 0;
  else if (T == 1) Qt = ~ Qt;
  else             Qt = Qt;

endmodule


