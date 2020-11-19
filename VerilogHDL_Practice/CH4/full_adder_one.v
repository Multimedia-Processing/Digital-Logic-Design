module full_adder_one (A, B, Ci, Co, S);

input A, B, Ci;
output Co, S;

and (AB, A, B);
and (ACi, A, Ci);
and (BCi, B, Ci);
or (Co, AB, ACi, BCi);
xor (S, A, B, Ci);

endmodule // full_adder_one
