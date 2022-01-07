// Ch07 comp_2.v
// 比較器 (比較運算子的複合使用)

module comp_2 (A, Y1, Y2, Y3);
input  [3:0] A;		// A 四位元輸入
output Y1,Y2,Y3;	// 一位元輸出
reg    Y1,Y2,Y3;	// 宣告為暫存器資料

// 使用巢狀 if
always@ (A)
  if (A > 5) 
    if (A < 10)   Y1 = 1;
    else          Y1 = 0;
  else            Y1 = 0;

// && 運算子的複合使用
always@ (A)
  if (A > 5 && A < 10)   Y2 = 1;
  else                   Y2 = 0;

// || 運算子的複合使用
always@ (A)
  if (A <= 5 || A >= 10)   Y3 = 0;
  else                     Y3 = 1;
  
endmodule
