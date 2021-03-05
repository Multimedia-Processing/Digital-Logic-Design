`timescale 1ns / 1ps

module for_one_test ();
reg clk, d;
wire [3:0] q1, q2;
integer i, ii;


for_one UUT (.clk(clk), .d(d), .q1(q1), .q2(q2));

initial begin
  for (i = 0; i < 16; i = i + 1)
    begin
      clk = 0; #10;
      clk = 1; #10;
    end
end

initial begin
  for (ii = 0; ii < 4; ii = ii + 1)
    begin
      d = 0; #5;
      d = 1; #20;
      d = 0; #15;
    end
  #5;
  for (ii = 0; ii < 2; ii = ii + 1)
    begin
      d = 1; #40;
      d = 0; #40;
    end
end

initial begin
  #320;
  $finish;
end

endmodule // for_one_test
