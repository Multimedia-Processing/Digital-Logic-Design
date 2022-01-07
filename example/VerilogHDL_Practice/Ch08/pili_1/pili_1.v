// Ch08 pili_1.v
// 七段顯示霹靂燈

module pili_1 (Clk,Clr,A,B,C,D,E,F);
input  Clk,Clr;			// 一位元輸入
output A,B,C,D,E,F;		// 一位元輸出
reg    [6:0] L;			// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除
always@ (posedge Clk) 
  if (Clr)		 	L = 7'b1000000;  // A, 順時針
  else if (L == 7'b1000000) 	L = 7'b0100000;  // B, 順時針
  else if (L == 7'b0100000) 	L = 7'b0010000;  // C, 順時針
  else if (L == 7'b0010000) 	L = 7'b0001000;  // D, 順時針
  else if (L == 7'b0001000) 	L = 7'b0000100;  // E, 順時針
  else if (L == 7'b0000100) 	L = 7'b0000010;  // F, 順時針
  else if (L == 7'b0000010) 	L = 7'b1000001;  // A, 逆時針
  else if (L == 7'b1000001) 	L = 7'b0000011;  // F, 逆時針
  else if (L == 7'b0000011)	L = 7'b0000101;  // E, 逆時針
  else if (L == 7'b0000101)	L = 7'b0001001;  // D, 逆時針
  else if (L == 7'b0001001)	L = 7'b0010001;  // C, 逆時針
  else if (L == 7'b0010001)	L = 7'b0100001;  // B, 逆時針
  else if (L == 7'b0100001) 	L = 7'b1000000;  // A, 順時針
  else	                 	L = 7'b0000000;  // 不顯示
assign {A,B,C,D,E,F} = L[6:1];

endmodule
