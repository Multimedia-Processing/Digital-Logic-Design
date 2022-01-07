// Ch10 debounce.v
// 去彈跳電路

module debounce (Clk,Ki,Ko);
input  Clk,Ki;		// 一位元輸入
output Ko;		// 一位元輸出
reg    Ko;		// 宣告為暫存器資料
reg    [2:0] Q;		// 宣告為暫存器資料

// 連續取樣三次
always@ (posedge Clk)
  begin
    Q[2] = Q[1]; 
    Q[1] = Q[0];
    Q[0] = Ki;
  end

// 產生去彈跳信號
always@ (Q)
  if (Q == 3'b001)	// 前緣
    Ko = 1;
  else
    Ko = 0;

endmodule
