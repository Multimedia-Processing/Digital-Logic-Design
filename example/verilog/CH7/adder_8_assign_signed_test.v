`timescale 1ns / 1ps
`include "adder_8_assign_signed.v"

module adder_8_assign_signed_test ();
reg [7:0] a, b;
wire [8:0] s;
integer i;

adder_8_assign_signed UUT (.a(a), .b(b), .s(s));

initial begin
  for (i = 0; i < 256; i = i + 32)
    begin
      a = i;
      b = 256 - i;
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // adder_8_assign_signed_test
