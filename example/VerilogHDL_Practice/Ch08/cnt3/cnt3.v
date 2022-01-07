// Ch08 cnt3.v
// BCD 上數計數器以七段顯示

module cnt3 (Clk,Clr,Q,A,B,C,D,E,F,G);
input  Clk,Clr;		// 一位元輸入
output [3:0] Q;		// 四位元輸出
output A,B,C,D,E,F,G;	// 一位元輸出
reg    [3:0] Q;		// 宣告為暫存器資料
reg    A,B,C,D,E,F,G;	// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, BCD上數計數器
always@ (posedge Clk) 
  if (Clr)        	Q = 0;
  else if (Q == 9)  	Q = 0;
  else	         	Q = Q + 1;

// 七段顯示, 組合邏輯電路
always@ (Q) 
  if      (Q == 4'b0000)  {A,B,C,D,E,F,G} = 7'b1111110;
  else if (Q == 4'b0001)  {A,B,C,D,E,F,G} = 7'b0110000;
  else if (Q == 4'b0010)  {A,B,C,D,E,F,G} = 7'b1101101;
  else if (Q == 4'b0011)  {A,B,C,D,E,F,G} = 7'b1111001;
  else if (Q == 4'b0100)  {A,B,C,D,E,F,G} = 7'b0110011;
  else if (Q == 4'b0101)  {A,B,C,D,E,F,G} = 7'b1011011;
  else if (Q == 4'b0110)  {A,B,C,D,E,F,G} = 7'b0011111;
  else if (Q == 4'b0111)  {A,B,C,D,E,F,G} = 7'b1110000;
  else if (Q == 4'b1000)  {A,B,C,D,E,F,G} = 7'b1111111;
  else if (Q == 4'b1001)  {A,B,C,D,E,F,G} = 7'b1110011;
  else	                  {A,B,C,D,E,F,G} = 7'b0000000;
   
endmodule
