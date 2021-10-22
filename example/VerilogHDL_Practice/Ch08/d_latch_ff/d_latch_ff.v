// Ch08 d_latch_ff.v
// D 型栓鎖器與正反器

module d_latch_ff(Clk, D, Q_l, Q_ff);
input  Clk;		// 一位元輸入
input  [3:0] D;		// 四位元輸入
output [3:0] Q_l,Q_ff;	// 四位元輸出 
reg    [3:0] Q_l,Q_ff;	// 宣告為暫存器資料

// D 型栓鎖器, 高準位觸發
always@ (Clk or D)	// 當 Clk 或 D 信號改變時，執行以下敘述
  if (Clk)   Q_l = D;	// 當 Clk 為高準位時，D 的值存入 Q_l 中

// D 型正反器, 上緣觸發
always@ (posedge Clk)	// 當 Clk 上緣觸發時，執行以下敘述	
  Q_ff = D;		// D 的值存入 Q_ff 中

endmodule

