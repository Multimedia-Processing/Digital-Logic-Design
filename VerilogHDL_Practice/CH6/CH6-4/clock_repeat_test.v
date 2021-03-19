`timescale 1ns / 1ps

module clock_repeat_test ();
wire clk;

clock_repeat UUT (.clk(clk));

initial begin
  #320;
  $finish;
end

endmodule // clock_repeat_test
