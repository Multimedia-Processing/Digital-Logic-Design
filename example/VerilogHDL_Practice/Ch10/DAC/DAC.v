// Ch10 LCM.v
// 液晶顯示模組

module DAC (Clk10K,Clr,Din,N_CS,N_WR,N_DACA);
input  Clk10K,Clr;		// 一位元輸入
input  [7:0] Din;		// 八位元輸入
output N_CS,N_WR,N_DACA;	// 一位元輸出
reg    [3:0] Cnt;		// 宣告為暫存器資料
reg    N_WR;			// 宣告為暫存器資料

// 產生 N_WR 信號
always@ (posedge Clk10K)
  if (Clr || Cnt == 9)
    begin
      Cnt = 0;
      N_WR = 0;
    end
  else
    begin
      Cnt = Cnt + 1;
      N_WR = 1;
    end

// 產生 N_CS, N_DACA 信號
assign N_CS   = 1;
assign N_DACA = 1;

endmodule  
