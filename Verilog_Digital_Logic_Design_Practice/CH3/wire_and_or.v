module wire_and_or (A, B, C, D, E);

input A, B;
output C, D, E;
wire A_NOT;

wand D;
wor E;

//wire
assign A_NOT = ~A;
assign C = A_NOT & B;  // C = ~AB

// wire-and
assign D = A;
assign D = B;

// wire-or
assign E = A;
assign E = B;

endmodule // wire_and_or
