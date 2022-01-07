// Ch07 dec38_if.v
// 3 對 8 解碼器 (使用 if 敘述)

module dec38_if (Q, D);
input  [2:0] Q;		// Q 為三位元輸入
output [7:0] D;		// D 為八位元輸出
reg    [7:0] D;		// 宣告為暫存器資料

// 使用 if 敘述
always@ (Q)
  begin
    if (Q == 3'b000) D[0] = 1;    else D[0] = 0;
    if (Q == 3'b001) D[1] = 1;    else D[1] = 0;
    if (Q == 3'b010) D[2] = 1;    else D[2] = 0;
    if (Q == 3'b011) D[3] = 1;    else D[3] = 0;
    if (Q == 3'b100) D[4] = 1;    else D[4] = 0;
    if (Q == 3'b101) D[5] = 1;    else D[5] = 0;
    if (Q == 3'b110) D[6] = 1;    else D[6] = 0;
    if (Q == 3'b111) D[7] = 1;    else D[7] = 0;
  end
endmodule 
