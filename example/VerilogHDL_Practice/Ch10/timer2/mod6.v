// Ch10 mod6.v
// mod-6 計數器

module mod6 (Clk_i, Clr, Q, Clk_o);
input  Clk_i,Clr;		// 一位元輸入
output [3:0] Q;			// 四位元輸出
output Clk_o;			// 一位元輸出
reg    [3:0] Q;			// 宣告為暫存器資料

// 除 6 (0 ~ 5)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 5)		// 除 6
    Q = 0;
  else 
    Q = Q + 1;
assign Clk_o = ~(~Q[3] & Q[2] & ~Q[1] & Q[0]);	// = 5 時

endmodule
