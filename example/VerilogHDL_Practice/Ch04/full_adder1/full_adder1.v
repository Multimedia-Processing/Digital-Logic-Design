// Ch04 full_adder1.v
// 一位元全加法器 (閘層敘述)

module full_add1(A, B, Ci, Co, S);
input  A, B, Ci;   // A, B, Ci 一位元輸入
output Co, S;      // S 和, Co 進位

and (AB, A, B);
and (ACi, A, Ci);
and (BCi, B, Ci);
or  (Co, AB, ACi, BCi);
xor (S, A, B, Ci);

endmodule
