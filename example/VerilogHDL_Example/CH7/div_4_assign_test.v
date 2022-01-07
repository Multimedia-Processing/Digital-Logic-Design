`timescale 1ns / 1ps
`include "sub_4_assign.v"

module sub_4_assign_test ();
reg signed [3:0] a, b, c, d;
wire signed [4:0] s1, s2;
integer i;

sub_4_assign UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = -8; i < 8; i = i + 1)
    begin
      a = i[4:0];
      d = -i[4:0];
      #10;
    end
  for (i = 8; i < -8; i = i - 1)
    begin
      c = i[4:0];
      b = -i[4:0];
      #10;
    end
end

initial begin
  #160;
  $finish;
end

endmodule // sub_4_assign_test
