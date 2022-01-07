// Ch08 moore.v
// 莫耳狀態機器 (101字序偵測器)

module moore (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// 一位元輸入
output Q;			// 一位元輸出 
output [1:0] Cs;		// 二位元輸出
reg    Q;			// 宣告為暫存器資料
reg    [1:0] Cs, Ns;		// 宣告為暫存器資料
parameter [1:0]			// 宣告狀態參數,二進制編碼
 S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

// 上緣觸發時脈,上緣同步清除, 序向邏輯電路
always@ (posedge Clk)
  if (Clr) Cs = S0;		// 切換為起始狀態
  else     Cs = Ns;		// 切換為次一狀態

// 決定次一狀態 Ns 與輸出 Q, 組合邏輯電路
always @ (Cs or D)
  case (Cs)
    S0 : begin
           Q = 0;
           if (D == 0)  Ns = S0;
           else       	Ns = S1;
         end
    S1 : begin
	   Q = 0;
	   if (D == 0)  Ns = S2;
           else	    	Ns = S1;
         end
    S2 : begin
           Q = 0;
           if (D == 0)  Ns = S0;
           else       	Ns = S3;
         end	         
    S3 : begin
           Q = 1;
           if (D == 0)	Ns = S2;
           else	    	Ns = S1;
         end
  endcase

endmodule
