// Ch10 debounce2.v
// 去彈跳電路 2

module debounce2 (Clk100,Ki,Ko1,Ko2);
input  Clk100,Ki;	// 一位元輸入
output Ko1,Ko2;		// 一位元輸出
reg    Ko1,Ko2;		// 宣告為暫存器資料
reg    [1:0] Q1,Q2;	// 宣告為暫存器資料
reg    S,R;		// 宣告為暫存器資料

// 鍵盤信號取樣
always@(posedge Clk100)	// 約 100 Hz
  begin
    Q1[1] = Q1[0];	// 連續取樣二次
    Q1[0] = Ki;
    if (Q1 == 2'b11)  S = 1;
    else              S = 0;
    if (Q1 == 2'b00)  R = 1;
    else              R = 0;
  end

// RS 閂鎖器
always@(R or S)
  if (S == 1 && R == 0)				
    Ko1 = 1;			
  else if (S == 0 && R == 1)				
    Ko1 = 0;

// 微分取得一週期的脈波
always@(posedge Clk100)
  begin
    Q2[1] = Q2[0];	// 連續取樣二次
    Q2[0] = Ko1;
    if (Q2 == 2'b01)  Ko2 = 1;
    else              Ko2 = 0;
  end

endmodule
