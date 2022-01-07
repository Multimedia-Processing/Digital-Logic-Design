// Ch05 op.v
// 運算子之使用 (資料流層敘述)

module op (A, B, Ci, Co, S, X, Y, Z);
input  [3:0] A, B;		// A, B 四位元輸入
input  Ci;			// Ci 一位元輸入
output Co;			// Co 一位元輸出 
output [3:0] S, X, Y, Z;	// S, X, Y, Z 四位元輸出 

assign {Co, S} = A + B + Ci; 	// 全加法
assign X = {A[2:0], A[3]}; 	// A 循環左移 1 位元
assign Y = B ~^ 4'b1010;	// B 和四位元資料1010作互斥反或
assign Z = (~A) & B;		// A’B

endmodule

