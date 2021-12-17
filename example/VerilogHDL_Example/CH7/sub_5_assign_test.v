`timescale 1ns / 1ps
`include "sub_5_assign.v"

module sub_5_assign_test ();
reg [4:0] a, b;
wire [5:0] s;
integer i;

sub_5_assign UUT (.a(a), .b(b), .s(s));

initial begin
  for (i = 0; i < 32; i = i + 1)
    begin
      a = i[4:0] + i[4:0];
      b = i[4:0];
      #10;
    end
end

initial begin
  #320;
  $finish;
end

endmodule // sub_5_assign_test
