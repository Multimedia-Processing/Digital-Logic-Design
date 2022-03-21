module full_adder_one (a, b, ci, co, s);

  input a, b, ci;
  output co, s;
  wire ab, aci, bci;

  and (ab, a, b);
  and (aci, a, ci);
  and (bci, b, ci);
  or (co, ab, aci, bci);
  xor (s, a, b, ci);

endmodule // full_add_one
