// Ch07 adder4.v
// 四位元全加法器 (使用加法運算子)

module adder4 (S, Co, A, B, Ci);
input  [3:0] A, B;	// A, B 四位元輸入
input  Ci;		// Ci 一位元輸入
output Co; 		// Co 一位元進位輸出
output [3:0] S; 	// S  四位元加法和輸出

// 使用加法運算子 
assign {Co, S} = A + B + Ci;

endmodule
