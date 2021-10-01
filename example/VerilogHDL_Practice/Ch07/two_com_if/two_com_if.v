// Ch07 two_com_if.v
// 2's 補數 (使用 if 查表)

module two_com_if (I, O);
input  [3:0] I;		// I 四位元輸入
output [3:0] O;		// O 四位元輸出
reg    [3:0] O;		// 宣告 O 為暫存器資料

// 使用 if 敘述
always@ (I)
  if      (I == 4'b0000)   O = 4'b0000; 	// 二進制方式
  else if (I == 4'b0001)   O = 4'b1111;
  else if (I == 4'b0010)   O = 4'b1110;
  else if (I == 4'b0011)   O = 4'b1101;
  else if (I == 4'b0100)   O = 4'b1100; 
  else if (I == 4'b0101)   O = 4'b1011;
  else if (I == 4'b0110)   O = 4'b1010;
  else if (I == 4'b0111)   O = 4'b1001;
  else if (I == 4'b1000)   O = 4'b1000;
  else if (I == 4'b1001)   O = 4'b0111;
  else if (I == 4'b1010)   O = 4'b0110;
  else if (I == 4'b1011)   O = 4'b0101;
  else if (I == 4'b1100)   O = 4'b0100; 
  else if (I == 4'b1101)   O = 4'b0011;
  else if (I == 4'he)      O = 4'h2; 		// 十六進制方式
  else                     O = 4'b0001;

endmodule
