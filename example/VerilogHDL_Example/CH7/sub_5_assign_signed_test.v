`timescale 1ns / 1ps
`include "sub_5_assign_signed.v"

module sub_5_assign_signed_test ();
reg signed [4:0] a, b;
wire signed [5:0] s1, s2;
integer i;

sub_5_assign_signed UUT (.a(a), .b(b), .s1(s));

initial begin
  for (i = -8; i < 8; i = i + 1)
    begin
      d = i[4:0];
      #10;
    end
end

initial begin
  for (i = 8; i < -8; i = i - 1)
    begin
      c = i[4:0];
      #10;
    end
end

initial begin
  #320;
  $finish;
end

endmodule // sub_5_assign_signed_test
