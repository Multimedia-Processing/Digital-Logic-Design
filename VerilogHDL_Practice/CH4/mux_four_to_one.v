module mux_four_to_one (A, B, C, D, S1, S0, Y);

input A, B, C, D, S1, S0;
output Y;
wire CD, AB;

bufif1 (CD, D, S0);
bufif0 (CD, C, S0);
bufif1 (AB, B, S0);
bufif0 (AB, A, S0);
bufif1 (Y, CD, S1);
bufif0 (Y, AB, S1);

endmodule // mux_four_to_one
