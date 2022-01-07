// Ch04 mux4_1.v
// 4 對 1 多工器 (閘層敘述)

module mux4_1 (A, B, C, D, S1, S0, Y);
input  A,B,C,D,S1,S0;   // 一位元輸入
output Y;               // 一位元輸出  

bufif1 (CD,  D, S0);
bufif0 (CD,  C, S0);
bufif1 (AB,  B, S0);
bufif0 (AB,  A, S0);
bufif1 ( Y, CD, S1);
bufif0 ( Y, AB, S1);

endmodule
