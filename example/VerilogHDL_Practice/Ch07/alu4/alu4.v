// Ch07 alu4.v
// 四位元算術邏輯單元運算

module alu4 (S, A, B, Alu1, Alu2);
input  [2:0] S;			// S 三位元輸入
input  [3:0] A, B;		// A, B 四位元輸入
output [4:0] Alu1,Alu2;		// 四位元輸出
reg    [4:0] Alu1,Alu2;		// 宣告為暫存器資料

// 使用 if 敘述
always@ (S or A or B)
  if      (S == 3'b000)
    Alu1 = A + B; 		// 加 
  else if (S == 3'b001)
    Alu1 = A - B;		// 減
  else if (S == 3'b010)
    Alu1 = A & B;		// 及
  else if (S == 3'b100)
    Alu1 = A | B;		// 或
  else
    Alu1 = 0;			// 其他

// 使用 case 敘述
always@ (S or A or B)
  case (S)
    0 :       Alu2 = A + B; 	// 加 
    1 :       Alu2 = A - B;	// 減
    2 :       Alu2 = A & B;	// 及
    4 :	      Alu2 = A | B;	// 或
    default : Alu2 = 0;		// 其他
  endcase

endmodule
