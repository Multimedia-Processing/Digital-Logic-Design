// Ch08 shift_reg.v
// 移位暫存器

module shift_reg (Clk,St,Ld,Ser,D,Q1,Q2,Q3);
input  Clk,St,Ld,Ser;		// 一位元輸入
input  [3:0] D;			// 四位元輸入
output [3:0] Q1,Q2,Q3;		// 四位元輸出
reg    [3:0] Q1,Q2,Q3;		// 宣告為暫存器資料
integer i;			// 宣告為整數資料

// 下緣觸發時脈,上緣同步右移,上緣同步載入
// 使用移位運算子
always@ (negedge Clk) 
  if (St)
    begin
      Q1 = Q1 >> 1;
      Q1[3] = Ser; 
    end
  else if (Ld)
    Q1 = D;

// 使用 for 敘述
always@ (negedge Clk)
  if (St)
    begin
      for(i = 0; i <= 2; i = i+1)
        Q2[i] = Q2[i+1];
      Q2[3] = Ser;
    end
  else if (Ld)
    Q2 = D;


// 使用連接運算子
always@ (negedge Clk) 
  if (St)
    Q3 = {Ser,Q3[3:1]};
  else if (Ld)
    Q3 = D;
 
endmodule