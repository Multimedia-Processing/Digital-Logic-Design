// Ch07 shift_c.v
// 四位元循環移位

module shift_c (D, Y1, Y2, Z1, Z2);
input  [3:0] D;			// D 四位元輸入
output [3:0] Y1,Y2,Z1,Z2;	// Y, Z 四位元輸出
reg    [3:0] Y1,Z1;		// 宣告為暫存器資料 
reg    T1,T2;			// 宣告為暫存器資料 

// 使用移位運算子
always@ (D)
  begin		// Y1循環左移一位, Z1循環右移一位
    T1 = D[3];	  	T2 = D[0];
    Y1 = D << 1;	Z1 = D >> 1;
    Y1[0] = T1;	  	Z1[3] = T2;
  end

// 使用連接運算子
assign Y2 = {D[2:0], D[3]};  // 循環左移一位
assign Z2 = {D[0], D[3:1]};  // 循環右移一位

endmodule
