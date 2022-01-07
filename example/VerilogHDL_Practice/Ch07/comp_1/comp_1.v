// Ch07 comp_1.v
// 比較器

module comp_1 (A,B,AgB1,AgB2,AgB3,AgB4,AeB1,AeB2,AeB3,AeB4,
               AlB1,AlB2,AlB3,AlB4);
input  [3:0] A,B;					// A,B 四位元輸入
output AgB1,AgB2,AgB3,AgB4,AeB1,AeB2,AeB3,AeB4,
       AlB1,AlB2,AlB3,AlB4;				// 一位元輸出
reg    AgB1,AgB2,AgB3,AeB1,AeB2,AeB3,AlB1,AlB2,AlB3;	// 宣告為暫存器資料

// 使用巢狀 if, 比較運算子
always@ (A or B)
  if (A > B)
    begin   AgB1 = 1;  AeB1 = 0;  AlB1 = 0;  end
  else if (A == B)
    begin   AgB1 = 0;  AeB1 = 1;  AlB1 = 0;  end
  else
    begin   AgB1 = 0;  AeB1 = 0;  AlB1 = 1;  end

// 也可以寫成三個獨立的 if 敘述
always@ (A or B)
  begin
    if (A > B)   AgB2 = 1;
    else         AgB2 = 0;
    if (A == B)  AeB2 = 1;
    else         AeB2 = 0;
    if (A < B)   AlB2 = 1;
    else         AlB2 = 0;
  end

// 直接使用布林運算結果
always@ (A or B)
  begin
    AgB3 = (A >  B);
    AeB3 = (A == B);
    AlB3 = (A <  B);
  end

// 使用條件運算子
assign AgB4 = (A > B)  ? 1 : 0;
assign AeB4 = (A == B) ? 1 : 0;
assign AlB4 = (A < B)  ? 1 : 0;

endmodule
