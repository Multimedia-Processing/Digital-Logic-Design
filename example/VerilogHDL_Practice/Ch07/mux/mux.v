// Ch07 mux.v
// 4 對 1 多工器

module mux (A, B, C, D, S, Y1, Y2, Y3);
input  [3:0] A, B, C, D;	// 四位元輸入
input  [1:0] S;			// 二位元輸入
output [3:0] Y1, Y2, Y3;	// 四位元輸出
reg    [3:0] Y2, Y3;		// 宣告為暫存器資料

// 使用條件運算子
assign Y1 = (S >= 2) ? ((S==3) ? D : C) : ((S == 1) ? B : A) ;

// 使用 if 敘述
always@ (A or B or C or D or S)
  if      (S == 2'b00)  Y2 = A;
  else if (S == 2'b01)  Y2 = B;
  else if (S == 2'b10)  Y2 = C;
  else                  Y2 = D;

// 使用 case 敘述
always@ (A or B or C or D or S)
  case (S)
    0 :       Y3 = A;
    1 :       Y3 = B;
    2 :       Y3 = C;
    default:  Y3 = D;
  endcase

endmodule
