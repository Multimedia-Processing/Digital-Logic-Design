// Ch06 compare.v
// 巢狀 if 敘述之使用 (行為敘述)

module compare (A, B, AgB, AeB, AlB);
input   A, B; 		 	// A, B 一位元輸入
output  AgB, AeB, AlB; 		// AgB, AeB, AlB 一位元輸出 
reg     AgB, AeB, AlB;		// 宣告 AgB, AeB, AlB 為暫存器資料 

always@ (A or B)
  if (A < B)
      begin
        AgB = 0;  AeB = 0;  AlB = 1;
      end
  else if (A == B)
      begin
        AgB = 0;  AeB = 1;  AlB = 0;
      end
  else
      begin
        AgB = 1;  AeB = 0;  AlB = 0;
      end

endmodule

