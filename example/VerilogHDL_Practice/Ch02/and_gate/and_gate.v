// Ch02 and_gate.v
// 二輸入及閘 (閘層描述)

module and_gate (A, B, O);
input  A, B;	// A, B 一位元輸入
output O;	// O    一位元輸出

and (O, A, B);

endmodule
