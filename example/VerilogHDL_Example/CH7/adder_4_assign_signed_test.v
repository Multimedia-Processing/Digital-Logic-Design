`timescale 1ns / 1ps
`include "adder_4_assign_signed.v"

module adder_4_assign_signed_test ();
reg [3:0] a, b, c, d;
reg [4:0] s1, s2;
integer i;

adder_4_assign_signed UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = 0; i < 8; i = i + 2)
    begin
      a = i;
      b = 16 - i;
      #10;
    end

  for (i = 0; i < 8; i = i + 2)
    begin
      c = i;
      d = 16 - i;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_4_assign_signed_test
