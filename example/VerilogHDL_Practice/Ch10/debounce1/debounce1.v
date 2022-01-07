// Ch10 debounce1.v
// 去彈跳電路 1

module debounce1 (Clk100,Ki,Ko1,Ko2,Ko3);
input  Clk100,Ki;	// 一位元輸入
output Ko1,Ko2,Ko3;	// 一位元輸出
reg    Ko1,Ko2,Ko3;	// 宣告為暫存器資料
reg    [2:0] Q;		// 宣告為暫存器資料

// 取樣頻率約 100 Hz, 連續取樣三次
always@ (posedge Clk100)
  begin
    Q[2] = Q[1]; 
    Q[1] = Q[0];
    Q[0] = Ki;
  end

// 產生去彈跳信號
always@ (Q)
  begin
    if (Q == 3'b111)	// 前後緣
      Ko1 = 1;
    else
      Ko1 = 0;
    if (Q == 3'b001)	// 前緣
      Ko2 = 1;
    else
      Ko2 = 0;
    if (Q == 3'b110)	// 後緣
      Ko3 = 1;
    else
      Ko3 = 0;
  end

endmodule
