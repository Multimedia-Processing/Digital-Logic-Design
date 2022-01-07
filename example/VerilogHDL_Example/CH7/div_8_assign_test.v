`timescale 1ns / 1ps
`include "sub_4_assign.v"

module sub_4_assign_test ();
reg signed [7:0] a, b, c, d;
wire signed [8:0] s1, s2;
integer i;

sub_4_assign UUT (.a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2));

initial begin
  for (i = -64; i < 64; i = i + 1)
    begin
      a = i[7:0];
      #10;
    end
end

initial begin
  for (i = 64; i < -64; i = i - 1)
    begin
      b = i;
      #10;
    end
end

initial begin
  #1280;
  $finish;
end

endmodule // sub_4_assign_test
