// Ch06 casezx.v
// 一位元半加法器 (casez 與 casex 敘述)

module casezx(A, Y, Z);
input  [2:0] A;   	// A 三位元輸入
output [1:0] Y, Z;	// Y 和 Z 二位元輸出
reg    [1:0] Y, Z;	// 宣告 Y 和 Z 為暫存器資料

always@ (A)
  begin
// 使用 casez 敘述 
    casez (A)
      3'b1??  : Y = 0;  // 最高優先權，100、101、110、111
      3'b0z1  : Y = 1;  // 第二優先權，001、011
      3'b000  : Y = 2;  // 第三優先權，000
      default : Y = 3;  // 最低優先權，010
    endcase

// 使用 casex 敘述 
    casex (A)
      3'bx1x  : Z = 0;  // 最高優先權，010、011、110、111
      3'b00?  : Z = 1;  // 第二優先權，000、001
      default : Z = 2;  // 最低優先權，100、101
    endcase
  end

endmodule

