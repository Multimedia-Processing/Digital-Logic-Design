module full_add_one (A, B, Ci, Co, S);

input A, B, Ci;
output Co, S;
wire AB, ACi, BCi;

and (AB, A, B);
and (ACi, A, Ci);
and (BCi, B, Ci);
or (Co, AB, ACi, BCi);
xor (S, A, B, Ci);

endmodule // full_add_one
