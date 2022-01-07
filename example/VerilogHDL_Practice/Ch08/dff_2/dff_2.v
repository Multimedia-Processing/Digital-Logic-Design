module dff_2 (Clk,D,Din,Clr,Pre,Load,Q);
input  Clk,D,Din,Clr,Pre,Load;	// 一位元輸入
output Q;			// 一位元輸出 
reg    Q;			// 宣告為暫存器資料

// 上緣觸發時脈,   上緣非同步清除
// 下緣非同步預置, 下緣同步載入
always@ (posedge Clk or posedge Clr or negedge Pre) 
  if (Clr)         Q = 0;	// 最高優先權
  else if (!Pre)   Q = 1; 	// 第二優先權
  else if (!Load)  Q = Din; 	// 第三優先權
  else             Q = D;

endmodule
