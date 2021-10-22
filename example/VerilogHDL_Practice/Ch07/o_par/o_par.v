// Ch07  o_par.v
// 奇同位元產生電路 (使用 for 敘述或精簡邏輯運算子)

module o_par (D, O_parity1, O_parity2);
input  [3:0] D;			// 四位元輸入
output O_parity1, O_parity2;	// 一位元輸出
reg    O_parity1;		// 宣告為暫存器資料
integer i; 			// 宣告為整數資料

// 使用 for 敘述
always@ (D)
  begin
    O_parity1 = D[0];
    for (i = 1; i <= 3; i = i+1)
      O_parity1  = O_parity1  ~^ D[i];
  end

// 使用精簡邏輯運算子
assign O_parity2  = ~^ D;

endmodule 