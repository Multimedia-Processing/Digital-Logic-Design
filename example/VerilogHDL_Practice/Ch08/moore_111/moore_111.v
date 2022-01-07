// Ch08 moore_111.v
// 莫耳狀態機器 (111字序偵測器)

module moore_111 (Clk, Clr, D, Q, Cs, Cnt);
input  Clk, Clr, D;		// 一位元輸入
output Q;			// 一位元輸出 
output [1:0] Cs,Cnt;		// 二位元輸出
reg    Q;			// 宣告為暫存器資料
reg    [1:0] Cs, Cnt;		// 宣告為暫存器資料
parameter S0 = 0, S1 = 1;	// 宣告狀態參數
 
// 上緣觸發時脈, 上緣同步清除, 序向邏輯電路
always@ (posedge Clk)
  if (Clr)
    begin  Cs = S0; Q = 0;  end		// 切換為起始狀態
  else   
    case (Cs)
      S0 : if (D == 0)
             begin
               Q = 0;
               Cnt = 0;
               Cs  = S0;
             end
           else
             begin 
               Q = 0;
               Cnt = 1;
               Cs  = S1;
             end
      S1 : if (D == 0) 			// 有 0, 歸位 S0
             begin
               Cs = S0;
               Q = 0;     
             end
           else    			// 當 D == 1
             begin
               Cs = S1;
               if (Cnt == 2) 		// 連續 1 已達三次
                 begin
                   Cnt = 2;
                   Q = 1;
                 end 
               else			// 連續1 未達三次
                 Cnt = Cnt + 1; 
             end
    endcase

endmodule
