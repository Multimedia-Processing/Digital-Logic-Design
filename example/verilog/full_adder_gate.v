module full_adder_gate (a, b, ci, s, co);
  
  input a, b, ci;
  output s, co;
  wire  ab, aci, bci;

  
  xor(s, a, b, ci);
  and(ab, a, b);
  and(aci, a, ci);
  and(bci, b, ci);
  or(co, ab, aci, bci);

endmodule // full_adder