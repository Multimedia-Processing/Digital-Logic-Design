// Ch07 enc83_case.v
// 8 對 3 編碼器 (使用 case 查表)

module enc83_case (D, Q);
input  [7:0] D;		// D 為八位元輸入
output [2:0] Q;		// Q 為三位元輸出
reg    [2:0] Q;		// Q 宣告為暫存器資料

// 使用 case 敘述
always@ (D)
  case (D)
    8'b00000001 :  Q = 3'b000;
    8'b00000010 :  Q = 3'b001;
    8'b00000100 :  Q = 3'b010;
    8'b00001000 :  Q = 3'b011;
    8'b00010000 :  Q = 3'b100; 
    8'b00100000 :  Q = 3'b101;
    8'b01000000 :  Q = 3'b110;
    8'b10000000 :  Q = 3'b111;
    default     :  Q = 3'b000;
  endcase

endmodule 
