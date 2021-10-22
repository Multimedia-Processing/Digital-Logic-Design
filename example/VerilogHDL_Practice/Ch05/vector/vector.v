// Ch05 vector.v
// 向量資料之存取 (資料流層敘述)

module vector (A, B, W, X, Y, Z);
input  [3:0] A;       		// A 四位元輸入
input  [4:0] B;        		// B 五位元輸入
output [2:0] W;       		// W 三位元輸出 
output [4:0] X;   		// X 五位元輸出 
output [2:0] Y;   		// Y 三位元輸出 
output [4:0] Z;   		// Z 五位元輸出 

assign W = A;			// A[3] 被略去
assign X = A; 			// X[4] 補 0 
assign Y = B[3:1];		// 部分存取	Y2  Y1  Y0
				//              B3  B2  B1
assign Z = {A[2:0],B[3:2]};	// 重組		Z4  Z3  Z2  Z1  Z0
				//              A2  A1  A0  B3  B2
endmodule
