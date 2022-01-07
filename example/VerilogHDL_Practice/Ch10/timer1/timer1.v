// Ch10 timer1.v
// 計時器, 產生 0:0:0 ~ 23:59:59 計時值

module timer1 (Clk10M, Clr, H, M, S);
input  Clk10M,Clr;	// 一位元輸入
output [7:0] H,M,S;	// 八位元輸出
reg    [7:0] H,M,S;	// 宣告為暫存器資料
reg    [23:0] Q;	// 宣告為暫存器資料
reg    Clk1;		// 宣告為暫存器資料

// 除頻得 1Hz
always@ (posedge Clk10M)
  begin
    if (Clr || Q == 9999999)		// 除 10M
      Q = 0;
    else 
      Q = Q + 1;
    Clk1 = Q[23];
  end 

// 產生計時值
always@(posedge Clk1)			// 時脈為 1 Hz
  if (Clr)				// 全部歸零
    begin  H = 0;  M = 0;  S = 0;  end
  else if ({H,M,S} == 24'h235959)	// 等於 23:59:59
    {H,M,S} = 0;
  else if ({H[3:0],M,S} == 20'h95959)	// 等於 X9:59:59
    begin
      H[7:4] = H[7:4] + 1;
      H[3:0] = 0;
      M = 0;  S = 0;
    end
  else if ({M,S} == 16'h5959)		// 等於 XX:59:59
    begin
      H[3:0] = H[3:0] + 1;
      M = 0;  S = 0;
    end
  else if ({M[3:0],S} == 12'h959)	// 等於 XX:X9:59
    begin
      M[7:4] = M[7:4] + 1;
      M[3:0] = 0;
      S = 0;
    end
  else if (S == 8'h59)			// 等於 XX:XX:59
    begin
      M[3:0] = M[3:0] + 1;
      S = 0;
    end
  else if (S[3:0] == 4'h9)		// 等於 XX:XX:X9
    begin
      S[7:4] = S[7:4] + 1;
      S[3:0] = 0;
    end
  else 					
    S[3:0] = S[3:0] + 1;

endmodule
