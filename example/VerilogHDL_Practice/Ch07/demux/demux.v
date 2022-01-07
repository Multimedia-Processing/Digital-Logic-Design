// Ch07 demux.v
// 解多工器

module demux (A1,A2,B1,B2,C1,C2,D1,D2,S,Y);
input  [3:0] Y;				// 四位元輸入
input  [1:0] S;				// 二位元輸入
output [3:0] A1,A2,B1,B2,C1,C2,D1,D2;	// 四位元輸出
reg    [3:0] A1,A2,B1,B2,C1,C2,D1,D2;	// 宣告為暫存器資料

// 使用 if 敘述
always@ (Y or S)
  if      (S == 2'b00)  A1 = Y;
  else if (S == 2'b01)  B1 = Y;
  else if (S == 2'b10)  C1 = Y;
  else                  D1 = Y;

// 使用 case 敘述
always@ (Y or S)
  case(S)
    0 :       A2 = Y;
    1 :       B2 = Y;
    2 :       C2 = Y;
    default:  D2 = Y;
  endcase

endmodule
