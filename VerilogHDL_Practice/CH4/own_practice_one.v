module own_practice_one (A, B, S, Y);

input A, B, S;
output Y;
wire S_bar, AS_bar, SB;

not (S_bar, S);
and (AS_bar, A, S_bar);
and (SB, S, B);
or (Y, AS_bar, SB);

endmodule // own_practice_one
