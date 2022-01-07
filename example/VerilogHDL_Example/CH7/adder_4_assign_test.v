`timescale 1ns / 1ps
`include "adder_4_assign.v"

module adder_4_assign_test ();
reg [3:0] a, b;
reg [3:0] sum;
reg ci, co;
integer i;

adder_4_assign UUT (.co(co), .sum(sum), .a(a), .b(b), .ci(ci));

initial begin
  ci = 0;
  for (i = 0; i < 8; i = i + 2)
    begin
      a = i;
      b = 16 - i;
      ci = ~ci;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_4_assign_test
