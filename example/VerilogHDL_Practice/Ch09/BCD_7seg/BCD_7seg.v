// Ch09 BCD_7seg.v
// BCD 上數計數器以七段顯示

module BCD_7seg (Clk,Clr,Q,A,B,C,D,E,F,G);
input  Clk,Clr;		// 一位元輸入
output A,B,C,D,E,F,G;	// 一位元輸出
output [3:0] Q;		// 四位元輸出
wire   [3:0] Q;         // 宣告為連線資料

// 呼叫模組例證, 依順序
BCD BCD1 (Clk,Clr,Q);
 	// BCD.v 之輸出入埠順序 (Clk,Clr,Cnt)
seg seg1 (Q,A,B,C,D,E,F,G);
  	// seg.v 之輸出入埠順序 (Di,A,B,C,D,E,F,G)



endmodule
