// Ch10 BCD.v
// BCD (mod-10) 計數器

module BCD (Clk_i, Clr, Cnt, Clk_o);
input  Clk_i,Clr;		// 一位元輸入
output [3:0] Cnt;		// 四位元輸出
output Clk_o;			// 一位元輸出
reg    [3:0] Cnt;		// 宣告為暫存器資料

// 除 10  (0 ~ 9)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Cnt == 9)			// 除 10
    Cnt = 0;
  else 
    Cnt = Cnt + 1;
assign Clk_o = ~(Cnt[3] & ~Cnt[2] & ~Cnt[1] & Cnt[0]); // = 9 時

endmodule
