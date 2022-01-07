// Ch08 cnt5.v
// 環形計數器

module cnt5 (Clk,Clr,Q1,Q2);
input  Clk,Clr;		// 一位元輸入
output [3:0]  Q1,Q2;	// 四位元輸出
reg    [3:0]  Q1,Q2;	// 宣告為暫存器資料

// 產生計數值
always@ (posedge Clk)
  if (Clr)
    begin
      Q1 = 4'b1000;		// Q1 初值
      Q2 = 4'b1000;		// Q2 初值
    end
  else
    begin
      Q1 = { Q1[0],Q1[3:1]};	// 循環右移位
      Q2 = {~Q2[0],Q2[3:1]};	// 循環右移位(反相)
   end 

endmodule


