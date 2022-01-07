// Ch06 shift_reg_for.v
// 四位元移位暫存器 (for 敘述)

module shift_reg_for (Clk, D, Q1, Q2);
input  Clk, D;   		// Clk, D 一位元輸入
output [3:0] Q1,Q2;		// Q1, Q2 四位元輸出
reg    [3:0] Q1,Q2;		// 宣告為暫存器資料
integer i; 			// 宣告迴圈變數 i 為整數資料

// 使用 for 敘述, 非阻隔性指定敘述
always@ (posedge Clk)
  begin
    for (i = 3; i > 0; i = i-1)
      Q1[i] = Q1[i-1];		// 往高位元移位
    Q1[0] = D;
  end
  
// 使用 for 敘述, 阻隔性指定敘述
always@ (posedge Clk)
  begin
    for (i = 1; i <= 3; i = i+1)
      Q2[i] <= Q2[i-1];		// 往高位元移位
    Q2[0] = D;
  end

endmodule
