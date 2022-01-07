// Ch10 timer_7seg.v
// 計時器, 產生 0:0:0 ~ 23:59:59 計時值
// 使用七段多工顯示 

module timer_7seg (Clk10M,Clr,De,A,B,C,D,E,F,G);
input  Clk10M,Clr;	// 一位元輸入
output [3:1]  De;	// 多工掃描 
output A,B,C,D,E,F,G;	// 一位元輸出, 七段顯示碼
reg    [7:0]  H,M,S;	// 宣告為暫存器資料
reg    [23:0] Q;	// 宣告為暫存器資料
reg    [3:0]  Code;	// 宣告為暫存器資料
reg    Clk1;		// 宣告為暫存器資料
reg    [6:0]  L;	// 宣告為暫存器資料

// 除頻得 1Hz
always@ (posedge Clk10M)
  begin
    if (Clr || Q == 9999999)		// 除 10M
      Q = 0;
    else 
      Q = Q + 1;
    Clk1 = Q[23];
  end 

// 取得多工顯示頻率 ~ 300 Hz	 
assign De = Q[14:12];
 
// 產生計時值
always@ (posedge Clk1)			// 時脈為 1 Hz
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

// 七段多工二進制碼, 組合邏輯電路
always@ (De or H or M or S)
  case (De)
    3'b000  : Code = H[7:4];
    3'b001  : Code = H[3:0];
    3'b010  : Code = M[7:4];
    3'b011  : Code = M[3:0];
    3'b100  : Code = S[7:4];
    3'b101  : Code = S[3:0];
    default : Code = 0;
  endcase

// 七段顯示, 組合邏輯電路
always@ (Code) 
  case (Code)
    0      : L = 7'h7e;
    1      : L = 7'h30;
    2      : L = 7'h6d;
    3      : L = 7'h79;
    4      : L = 7'h33;
    5      : L = 7'h5b;
    6      : L = 7'h1f;
    7      : L = 7'h70;
    8      : L = 7'h7f;
    9      : L = 7'h73;
    default: L = 7'h00;
  endcase
assign {A,B,C,D,E,F,G} = L;

endmodule
