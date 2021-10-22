// Ch09 eq.v
// 比較是否相等

// 設計自訂邏輯閘
primitive cmp (Y,A,B);
input  A,B;	// 一位元輸入	
output Y;	// 一位元輸出
table		// 宣告真值表
// A B : Y
   0 0 : 1;
   0 1 : 0;
   1 0 : 0;
   1 1 : 1;
   x ? : x;
   ? x : x;
endtable
endprimitive
//------------------------------------------
// 父層電路模組
module eq (D1,D2,Eq);
input  [1:0] D1,D2;	// 二位元輸入
output Eq;		// 一位元輸出
wire   W1,W2;		// 宣告為連線資料
 
cmp  cmp0  (W1,D1[0],D2[0]);
cmp  cmp1  (W2,D1[1],D2[1]);
and  and1  (Eq,W1,W2);
 
endmodule
