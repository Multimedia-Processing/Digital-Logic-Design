module full_adder_assign_gate (a, b, ci, s, co);
  
  input a, b, ci;
  output s, co;
  wire Xab, Acixab, Aab;

  assign Xab = a^b;
  assign s = Xab^ci;
  assign Acixab = Xab + ci;
  assign Aab = a + b;
  assign co = Acixab & Aab;



endmodule // full_adder