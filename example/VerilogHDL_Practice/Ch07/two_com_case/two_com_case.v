// Ch07 two_com_case.v
// 2's 補數 (使用 case 查表)

module two_com_case (I, O);
input  [3:0] I;		// I 四位元輸入
output [3:0] O;		// O 四位元輸出
reg    [3:0] O;		// 宣告 O 為暫存器資料

// 使用 case 敘述 
always@ (I)
  case (I)
    4'b0000 :  O = 4'b0000;
    4'b0001 :  O = 4'b1111;
    4'b0010 :  O = 4'b1110;
    4'b0011 :  O = 4'b1101;
    4'b0100 :  O = 4'b1100; 
    4'b0101 :  O = 4'b1011;
    4'b0110 :  O = 4'b1010;
    4'b0111 :  O = 4'b1001;
    4'b1000 :  O = 4'b1000;
    4'b1001 :  O = 4'b0111;
    4'b1010 :  O = 4'b0110;
    4'b1011 :  O = 4'b0101;
    4'b1100 :  O = 4'b0100; 
    4'b1101 :  O = 4'b0011;
    4'b1110 :  O = 4'b0010;
    default :  O = 4'b0001;
  endcase

endmodule
