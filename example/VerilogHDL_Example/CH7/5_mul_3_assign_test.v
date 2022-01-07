`timescale 1ns / 1ps
`include "mul_5x4_assign.v"

module mul_5x4_assign_test ();
reg signed [3:0] a, b, c, d;
wire signed [4:0] s1, s2;
integer i;

mul_5x4_assign UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = 0; i < 16; i = i + 2)
    begin
      a = i * -1;
      b = 8 - i;
      #10;
    end
end

initial begin
  for (i = 0; i < 16; i = i + 2)
    begin
      c = i * -1;
      d = 8 - i;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // mul_5x4_assign_test
