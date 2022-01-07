// Ch07 dec38_case.v
// 3 對 8 解碼器 (使用 case 查表)

module dec38_case (Q, D);
input  [2:0] Q;		// Q 為三位元輸入
output [7:0] D;		// D 為八位元輸出
reg    [7:0] D;		// D 宣告為暫存器資料

// 使用 case 敘述
always@ (Q)
  case(Q)
    3'b000 :  D = 8'b00000001;
    3'b001 :  D = 8'b00000010;
    3'b010 :  D = 8'b00000100;
    3'b011 :  D = 8'b00001000;
    3'b100 :  D = 8'b00010000; 
    3'b101 :  D = 8'b00100000;
    3'b110 :  D = 8'b01000000;
    default:  D = 8'b10000000;
  endcase

endmodule 
