// Ch07 dec38_for_while.v
// 3 對 8 解碼器 (使用 for 與 while 敘述)

module dec38_for_while (Q, D1, D2);
parameter I_length = 3;
parameter O_length = 8;
input  [I_length-1:0] Q;	// Q 為 I_length 位元輸入
output [O_length-1:0] D1,D2;	// D1, D2 為 O_length 位元輸出
reg    [O_length-1:0] D1,D2;	// 宣告 D1, D2 為暫存器資料
integer i,j;

//使用 for 敘述
always@ (Q)
  for (i=0; i<=O_length-1; i=i+1)
    if (Q == i)   D1[i] = 1;
    else          D1[i] = 0;

// 使用 while 敘述
always@ (Q)
  begin
    j = 0;
    while (j <= O_length-1)
      begin
        if(Q == j)   D2[j] = 1;
        else       D2[j] = 0;
        j = j + 1;
      end
  end

endmodule 
