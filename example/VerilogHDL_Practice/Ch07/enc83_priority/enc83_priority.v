// Ch07 enc83_priority.v
// 優先權 8 對 3 編碼器 (使用 if 敘述與 casez 查表)

module enc83_priority (D, Q1, Q2);
input  [7:0] D;		// D 為八位元輸入
output [2:0] Q1,Q2;	// Q 為三位元輸出
reg    [2:0] Q1,Q2;	// Q 宣告為暫存器資料

// 使用 if 敘述
always@ (D)
  if      (D[0] == 1) Q1 = 3'b000;
  else if (D[1] == 1) Q1 = 3'b001;
  else if (D[2] == 1) Q1 = 3'b010;
  else if (D[3] == 1) Q1 = 3'b011;
  else if (D[4] == 1) Q1 = 3'b100;
  else if (D[5] == 1) Q1 = 3'b101;
  else if (D[6] == 1) Q1 = 3'b110;
  else                Q1 = 3'b111;
 

// 使用 casez 敘述
always@ (D)
  casez (D)
    8'b???????1 :  Q2 = 3'b000;
    8'b??????10 :  Q2 = 3'b001;
    8'b?????100 :  Q2 = 3'b010;
    8'b????1000 :  Q2 = 3'b011;
    8'b???10000 :  Q2 = 3'b100; 
    8'b??100000 :  Q2 = 3'b101;
    8'b?1000000 :  Q2 = 3'b110;
    default     :  Q2 = 3'b111;
  endcase

endmodule 
