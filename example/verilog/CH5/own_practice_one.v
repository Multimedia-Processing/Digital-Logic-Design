module own_practice_one (P, Q, R, S, T, U, V, W, X, Y, Z);

input [4:0]P;
input [4:0]Q;
output [6:0]R;
output [3:0]S;
output [5:0]T;
output [4:0]U;
output [4:0]V;
output [5:0]W;
output [4:0]X;
output Y;
output Z;

assign R = (P * 3);
assign S = (Q >> 1);
assign T = 4'b1010 + P;
assign U = ~(P & Q);
assign V = {P[1:0], P[4:2]};
assign W = {P[2:0], Q[4:2]};
assign X = (P > 10) ? P:Q;
assign Y = (Q >= 10)? ((Q <= 20)? 0'b1:0'b0):0'b0;
assign Z = (P ~^ P);

endmodule // own_practice_one
