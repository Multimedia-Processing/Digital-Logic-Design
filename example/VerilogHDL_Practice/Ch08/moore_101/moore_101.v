// Ch08 moore_101.v
// 莫耳狀態機器 (101字序偵測器)

module moore_101 (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// 一位元輸入
output Q;			// 一位元輸出 
output [1:0] Cs;		// 二位元輸出
reg    Q;			// 宣告為暫存器資料
reg    [1:0] Cs;		// 宣告為暫存器資料
parameter [1:0]			// 宣告狀態參數,二進制編碼
  S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

// 上緣觸發時脈,上緣同步清除, 序向邏輯電路
always@ (posedge Clk)
  if (Clr) 			// 切換為起始狀態
    begin
      Cs = S0;      Q = 0;
    end 
  else 
    case (Cs)
      S0 : if (D == 0)
             Cs = S0;
           else
             Cs = S1;
      S1 : if (D == 0)
             Cs = S2;
           else
             Cs = S1;
      S2 : if (D == 0)
             Cs = S0;
           else
             begin
               Q = 1;    Cs = S3;
             end
      S3 : begin
             Q = 0;
             if (D == 0)
               Cs = S2;
             else
               Cs = S1;
           end
    endcase

endmodule
