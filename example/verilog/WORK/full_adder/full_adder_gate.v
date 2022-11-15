module full_adder_gate (a, b, ci, s, co);
  input a, b, ci;
  output s, co;
  wire ab, xab, xabci;

  xor(xab,a,b);
  xor(s,xab,ci);
  and(xabci,xab,ci);
  and(ab,a,b);
  or(co,xabci,ab);

endmodule
