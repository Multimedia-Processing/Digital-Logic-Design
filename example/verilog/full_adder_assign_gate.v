module full_adder_assign_gate (a, b, ci, s, co);
  input a, b, ci;
  output s, co;
  wire ab, xab, xabci;

  assign xab = a ^ b;
  assign s = xab ^ ci;
  assign xabci = xab + ci;
  assign ab = a + b;
  assign co = xabci & ab;

endmodule
