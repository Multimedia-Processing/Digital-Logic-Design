// Ch09 dff.v
// D 型正反器

module dff (Ck, Clr, D, Q);
input  Ck, Clr, D;	// 一位元輸入
output Q;		// 一位元輸出
reg    Q;		// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除
always@ (posedge Ck) 
  if (Clr)
    Q = 0;
  else	
    Q = D;
 
endmodule

