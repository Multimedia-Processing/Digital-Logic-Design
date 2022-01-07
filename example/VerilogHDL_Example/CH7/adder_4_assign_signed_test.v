`timescale 1ns / 1ps
`include "adder_4_assign_signed.v"

module adder_4_assign_signed_test ();
reg signed [3:0] a, b, c, d;
wire signed [4:0] s1, s2;
integer i;

adder_4_assign_signed UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = 0; i < 8; i = i + 1)
    begin
      a = i * (-1 ** i);
      b = (i - 1) * (-1 ** (i - 1));
      #10;
    end
end

initial begin
  for (i = 0; i < 8; i = i + 1)
    begin
      c = i * (-1 ** i);
      d = (i - 1) * (-1 ** (i - 1));
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_4_assign_signed_test
