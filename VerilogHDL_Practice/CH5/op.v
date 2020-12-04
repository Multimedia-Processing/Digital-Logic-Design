module op (A, B, Ci, Co, S, X, Y, Z);
input [3:0] A, B;
input Ci;
output Co;
output [3:0] S, X, Y, Z;

assign {Co, S} = (A + B + Ci);
assign X = {A[2:0], A[3]};
assign Y = (B ~^ 4'b1010);
assign Z = (~A) & B;

endmodule // op
