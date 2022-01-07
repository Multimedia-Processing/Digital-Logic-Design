// Ch06 shift_reg_while.v
// 四位元移位暫存器 (while 敘述)

module shift_reg_while (Clk, D, Q);
input  Clk, D;   	// Clk, D 一位元輸入
output [3:0] Q;		// Q 四位元輸出
reg    [3:0] Q;		// 宣告 Q 為暫存器資料
integer i;		// 宣告迴圈變數 i 為整數資料

// 使用 while 敘述
always@ (posedge Clk)
  begin
    i = 3;			// 迴圈初值
    while (i > 0)		// 條件判斷式
      begin
        Q[i] = Q[i-1];		// 往高位元移位
        i = i - 1; 		// 迴圈變異量
      end
    Q[0] = D;
  end

endmodule
