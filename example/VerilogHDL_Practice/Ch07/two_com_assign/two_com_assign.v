// Ch07 two_com_assign.v
// 2's 補數 (assign 敘述)

module two_com_assign (I, O);
input  [3:0] I;		// I 四位元輸入
output [3:0] O;		// O 四位元輸出

// assign 敘述
assign O[0] = I[0];
assign O[1] = I[1] ^ I[0];
assign O[2] = I[2] ^ (I[1] | I[0]);
assign O[3] = I[3] ^ (I[2] | I[1] | I[0]);

endmodule
