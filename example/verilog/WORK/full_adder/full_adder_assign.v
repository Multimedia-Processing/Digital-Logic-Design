module full_adder_assign (a, b, ci, s, co);

  input a, b, ci;
  output s, co;

  assign {co,s} = a + b + ci;

endmodule // full_add_one
