// Ch08 mealy.v
// 米利狀態機器 (101 字序偵測器)

module mealy (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// 一位元輸入
output Q;			// 一位元輸出 
output [1:0] Cs;		// 二位元輸出
reg    Q;			// 宣告為暫存器資料
reg    [1:0] Cs, Ns;		// 宣告為暫存器資料
parameter [1:0]			// 宣告狀態參數, Gray 編碼
 S0=2'b00, S1=2'b01, S2=2'b11;

// 上緣觸發時脈,上緣同步清除, 序向邏輯電路
always@ (posedge Clk)
  if (Clr) Cs = S0;		// 切換為起始狀態
  else     Cs = Ns;		// 切換為次一狀態

// 決定次一狀態 Ns 與輸出 Q, 組合邏輯電路
always @ (Cs or D)
  case (Cs)
    S0 : if (D == 0)
  	   begin  Ns = S0;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 0;  end
    S1 : if (D == 0)
	   begin  Ns = S2;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 0;  end
    S2 : if (D == 0)
	   begin  Ns = S0;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 1;  end
  endcase

endmodule
