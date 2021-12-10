`timescale 1ns / 1ps
`include "sub_5_assign.v"

module sub_5_assign_test ();
reg signed [4:0] a, b
reg c, d;
wire signed [5:0] s1, s2;
integer i;

sub_5_assign UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = 0; i < 16; i = i + 1)
    begin
      a = i * (-1 ** i);
      b = (i - 1) * (-1 ** (i - 1));
      #10;
    end
end

initial begin
  for (i = 0; i < 16; i = i + 1)
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

endmodule // sub_5_assign_test
