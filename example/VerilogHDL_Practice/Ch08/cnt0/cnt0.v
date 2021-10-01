// Ch08 cnt0.v
// 三位元二進制上數計數器

module cnt0 (Clk, Pre, D);
input  Clk, Pre;	// 一位元輸入
output [2:0] D;	// 三位元輸出 
reg    [2:0] D;	// 宣告為暫存器資料

// 上緣觸發時脈, 上數計數器
always@ (posedge Clk or negedge Pre)  // 非同步預置, 必須列出
  if (!Pre)			// Pre 為 0 時，預置計數值為 111
    D = 3'b111;
  else
    D = D + 1;		// 計數值加一

endmodule
