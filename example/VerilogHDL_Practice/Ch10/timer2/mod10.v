// Ch10 mod10.v
// mod-10 (BCD) 計數器

module mod10 (Clk_i, Clr, Q, Clk_o);
input  Clk_i,Clr;		// 一位元輸入
output [3:0] Q;			// 四位元輸出
output Clk_o;			// 一位元輸出
reg    [3:0] Q;			// 宣告為暫存器資料

// 除 10 (0 ~ 9)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 9)		// 除 10
    Q = 0;
  else 
    Q = Q + 1;
assign Clk_o = ~(Q[3] & ~Q[2] & ~Q[1] & Q[0]);	// = 9 時

endmodule
