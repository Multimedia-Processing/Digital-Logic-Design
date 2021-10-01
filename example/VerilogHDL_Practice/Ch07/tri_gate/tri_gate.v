// Ch07 tri_gate.v
// 三態緩衝閘

module tri_gate (I,C,O1,O2,O3);
input  I,C;			// 一位元輸入
output O1,O2,O3;		// 一位元輸出 
reg    O3;			// 宣告為暫存器資料

// 使用邏輯閘層次敘述
bufif1 (O1, I, C); 

// 使用 assign 敘述
assign O2 = C ? I : 1'bz;

// 使用 if 敘述
always@ (C or I)
  if (C == 1)	O3 = I;
  else		O3 = 1'bz;

endmodule
