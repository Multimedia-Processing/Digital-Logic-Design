// Ch07 mul4.v
// 四位元無號數與有號數乘法運算

module mul4 (A, B, C, D, S1, S2);
input  [3:0] A, B;		// A, B 四位元無號數輸入
output [7:0] S1;		// S1   八位元無號數輸出
input  signed [3:0] C, D;	// C, D 四位元有號數輸入
output signed [7:0] S2;		// S2   八位元有號數輸出

// 乘法運算子
assign S1 = A * B;
assign S2 = C * D;

endmodule
