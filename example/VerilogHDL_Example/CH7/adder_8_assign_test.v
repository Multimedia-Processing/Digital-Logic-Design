`timescale 1ns / 1ps
`include "adder_8_assign.v"

module adder_8_assign_test ();
reg [3:0] a, b;
wire [4:0] s1, s2;
integer i;

adder_8_assign UUT (.a(a), .b(b), .s(s));

initial begin
  for (i = 0; i < 8; i = i + 2)
    begin
      a = i;
      b = 16 - i;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_8_assign_test
