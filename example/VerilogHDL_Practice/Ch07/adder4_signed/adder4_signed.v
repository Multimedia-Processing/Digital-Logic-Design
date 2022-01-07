// Ch07 adder4_signed.v
// 四位元加法器 (有號數加法)

module adder4_signed (S1, S2, A, B, C, D);
input  signed [3:0] A, B;	// A, B 四位元有號數輸入
input  [3:0] C, D;		// C, D 四位元無號數輸入
output signed [4:0] S1, S2;  	// S1, S2 五位元有號數加法和輸出

// 有號數加法 
assign S1 = A + B;
assign S2 = $signed(C) + $signed(D);

endmodule
