// Ch09 mux4_1.v
// 四位元 4 對 1 多工器

// 父層電路模組
module mux4_1 (D0,D1,D2,D3,S,Y);
input  [3:0] D0,D1,D2,D3;	// 四位元輸入
input  [1:0] S;			// 二位元輸入
output [3:0] Y;			// 四位元輸出
reg    [3:0] W1,W2,Y;		// 宣告為暫存器資料
 
always@ (D0 or D1 or D2 or D3 or S)
  begin
    W1 = mux(D1,D0,S[0]);
    W2 = mux(D3,D2,S[0]);
    Y  = mux(W2,W1,S[1]);
  end
//-----------------------------------------------
// 設計函數 (四位元 2 對 1 多工器)
function [3:0] mux;
input [3:0] A,B;	// 四位元輸入
input S;		// 一位元輸入	
  mux = S ? A : B;
endfunction

endmodule
