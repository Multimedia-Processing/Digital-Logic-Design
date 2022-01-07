// Ch10 BCD999_2.v
// 產生 0 ~ 999 計數值

module BCD999_2 (Clk,Clr,Q);
input  Clk,Clr;		// 一位元輸入
output [11:0] Q;	// 十二位元輸出
wire   Clk1,Clk2,Clk3;  // 宣告為連接線資料

// 產生計數值
BCD BCD1 (Clk , Clr, Q[ 3:0], Clk1);
BCD BCD2 (Clk1, Clr, Q[ 7:4], Clk2);
BCD BCD3 (Clk2, Clr, Q[11:8], Clk3);

endmodule
