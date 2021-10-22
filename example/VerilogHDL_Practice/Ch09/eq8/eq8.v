// Ch09 eq8.v
// 比較是否相等

// 父層電路模組
module eq8 (D1,D2,Eq);
input  [7:0] D1,D2;		// 八位元輸入
output Eq;			// 一位元輸出
reg    W1,W2,Eq;		// 宣告為暫存器資料

always@ (D1 or D2)
  begin
    cmp4 (D1[7:4],D2[7:4],W1);	// 呼叫任務 cmp4
    cmp4 (D1[3:0],D2[3:0],W2);	// 呼叫任務 cmp4
    Eq = W1 & W2;
  end
//-----------------------------------------------
// 設計任務 (四位元比較器)
task cmp4;
input  [3:0] A,B;		// 四位元輸入	
output Y;			// 一位元輸出
reg    Y,W1,W2;			// 宣告為暫存器資料
  begin
    cmp2 (A[3:2],B[3:2],W1);	// 呼叫任務 cmp2
    cmp2 (A[1:0],B[1:0],W2);	// 呼叫任務 cmp2
    Y = W1 & W2;
  end
endtask
//-----------------------------------------------
// 設計任務 (二位元比較器)
task cmp2;
input [1:0] A,B;		// 二位元輸入	
output Y;			// 一位元輸出
  Y = cmp1(A[1],B[1]) & cmp1(A[0],B[0]);	// 呼叫函數 cmp1
endtask
//-----------------------------------------------
// 設計函數 (一位元比較器)
function cmp1;
input  A,B;			// 一位元輸入	
  if (A == B)	 cmp1 = 1;
  else     	 cmp1 = 0;
endfunction

endmodule
