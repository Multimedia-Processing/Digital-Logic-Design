module fulladder_gate (a, b, c_in, c_out, sum);

  input a, b, c_in;
  output c_out, sum;
  wire ab, ac_in, bc_in;

  and (ab, a, b);
  and (ac_in, a, c_in);
  and (bc_in, b, c_in);
  or (c_out, ab, ac_in, bc_in);
  xor (sum, a, b, c_in);

endmodule