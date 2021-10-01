// Ch10 LCM.v
// 液晶顯示模組

module LCM (Clk10M,Clr,EN,RS,RW,D,Cs);
input  Clk10M,Clr;			// 一位元輸入
output EN,RS,RW;			// 一位元輸出 
output [7:0] D;				// 八位元輸出
output [2:0] Cs;			// 二位元輸出
reg    Clk,Clk_en;			// 宣告為暫存器資料
reg    [7:0] D;				// 宣告為暫存器資料
reg    [23:0] Cnt;			// 宣告為暫存器資料
reg    [1:0] Cn;			// 宣告為暫存器資料
reg    [2:0] Cs, Ns;			// 宣告為暫存器資料
parameter [2:0]				// 宣告狀態參數, 二進制編碼
 S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011,
 S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;

// 除頻
always@ (posedge Clk10M or posedge Clr)
  begin
    if(Clr)
      Cnt = 0;
    else
      Cnt = Cnt + 1;
    Clk = Cnt[0];			// 模擬用
//  Clk = Cnt[23];			// 實際電路用
  end	

// 取得 Clk_state, Clk_en
always@ (posedge Clk or posedge Clr)
  begin
    if (Clr)
      begin
        Cn = 0;
        Cs = 3'b000;
      end
    else if (Cn == 2'b10)
      begin 
        Cn = 0; 
        Cs = Ns;
      end 
    else
      Cn = Cn + 1;
    Clk_en = Cn[0];
  end

// 決定次一狀態 Ns 與輸出 Q, 組合邏輯電路
always@ (Cs)
  case (Cs)
    S0 : begin
           Ns = S1;
           D = 8'b00111000;		// 8'h38
         end
    S1 : begin
           Ns = S2;
           D = 8'b00111000;		// 8'h38 
         end
    S2 : begin
           Ns = S3;
           D = 8'b00001110;		// 8'h0E 
         end
    S3 : begin
           Ns = S4;
           D = 8'b00000110;		// 8'h06 
         end
    S4 : begin
           Ns = S5;
           D = 8'b00000001;		// 8'h01 
         end
    S5 : begin
           Ns = S6;
           D = 8'b11000100;		// 8'hC4 
 		  			// DD RAM ADDRESS 8'h44                       
         end
    S6 : begin
           Ns = S7;
           D = 8'b01000001;		// DD RAM DATA 8'h41='A'
         end
    S7 : begin
           Ns = S7;
           D = 8'b00000000;	                       
         end
  endcase

assign EN = (Cs == S7)  ? 0 : Clk_en;
assign RS = (Cs == S6)  ? 1 : 0;
assign RW = 0;

endmodule
