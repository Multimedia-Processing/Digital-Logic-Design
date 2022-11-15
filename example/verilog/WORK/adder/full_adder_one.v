module full_adder_one (a, b, ci, out);

  input [3:0]a, b;
  input ci;
  output [4:0]out;

  assign out = a + b + ci;

endmodule // full_add_one
