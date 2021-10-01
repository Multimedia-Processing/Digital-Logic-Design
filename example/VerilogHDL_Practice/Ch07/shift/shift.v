// Ch07 shift.v
// 四位元移位運算

module shift (D,Y1,Y2,Y3,Z1,Z2,Z3);
input  [3:0] D;			// D 四位元輸入
output [3:0] Y1,Y2,Y3,Z1,Z2,Z3;	// Y, Z 四位元輸出 
parameter B1 = 1;		// 移位一位元
parameter B2 = 2;		// 移位二位元
parameter B3 = 3;		// 移位三位元

// 使用移位運算子
assign Y1 = D << B1;	// 左移一位, 乘 2
assign Y2 = D << B2;	// 左移二位, 乘 4
assign Y3 = D << B3;	// 左移三位, 乘 8
assign Z1 = D >> B1;	// 右移一位, 除 2
assign Z2 = D >> B2;	// 右移二位, 除 4
assign Z3 = D >> B3;	// 右移三位, 除 8

endmodule

