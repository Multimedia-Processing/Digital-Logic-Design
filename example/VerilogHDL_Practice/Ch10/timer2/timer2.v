// Ch10 timer2.v
// 計時器, 產生 0:0:0 ~ 23:59:59 計時值

module timer2 (Clk10M, Clr, H, M, S);
input  Clk10M,Clr;			// 一位元輸入
output [7:0] H,M,S;			// 八位元輸出
reg    [7:0] H,M,S;			// 宣告為暫存器資料
reg    [23:0] Q;			// 宣告為暫存器資料
reg    Clk1;				// 宣告為暫存器資料
wire   Clk2,Clk3,Clk4,Clk5;		// 宣告為連線資料

// 除頻得 1 Hz
always@ (posedge Clk10M)
  begin
    if (Clr || Q == 9999999)		// 除 10M
      Q = 0;
    else 
      Q = Q + 1;
    Clk1 = Q[23];			// Clk1 = 1 Hz
  end
 
// 呼叫各模組例證
mod10 mod10_1 (Clk1,Clr,S[3:0],Clk2);
mod6  mod6_1  (Clk2,Clr,S[7:4],Clk3);
mod10 mod10_2 (Clk3,Clr,M[3:0],Clk4);
mod6  mod6_2  (Clk4,Clr,M[7:4],Clk5);
mod24 mod24   (Clk5,Clr,H[7:0]);

endmodule
