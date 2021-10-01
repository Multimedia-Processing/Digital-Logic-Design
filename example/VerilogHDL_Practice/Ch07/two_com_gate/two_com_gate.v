// Ch07 two_com_gate.v
// 2's 補數 (邏輯閘描述)

module two_com_gate (I, O);
input  [3:0] I;		// I 四位元輸入
output [3:0] O;		// O 四位元輸出
wire   I10, I210;	// 宣告I10, I210 連接線資料

// 邏輯閘描述
buf (O[0], I[0]);
xor (O[1], I[1], I[0]);
or  (I10,  I[1], I[0]);
xor (O[2], I[2], I10);
or  (I210, I[2], I10);
xor (O[3], I[3], I210);

endmodule
