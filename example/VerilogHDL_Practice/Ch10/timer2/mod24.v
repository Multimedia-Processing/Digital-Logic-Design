// Ch10 mod24.v
// mod-24 計數器

module mod24 (Clk_i, Clr, Q);
input  Clk_i,Clr;		// 一位元輸入
output [7:0] Q;			// 四位元輸出
reg    [7:0] Q;			// 宣告為暫存器資料

// 除 24 (0 ~ 23)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 8'h23)	// 等於 23
    Q = 0;
  else if (Q[3:0] == 4'h9)	// 等於 X9
    begin
      Q[7:4] = Q[7:4] + 1;
      Q[3:0] = 0;
    end
  else 					
    Q[3:0] = Q[3:0] + 1;

endmodule
