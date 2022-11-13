module full_adder_gate (a, b, ci, s, co);
  
  input a, b, ci;
  output s, co;
  wire Xab, Acixab, Aab;

  xor(Xab, a, b);
  xor(s, Xab, ci);
  and(Acixab, Xab, ci);
  and(Aab, a, b);
  or(co, Acixab, Aab);


endmodule // full_adder