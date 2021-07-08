`timescale 1ns / 1ps

module clock_always_test ();
wire clk;


clock_always UUT (.clk(clk));

initial begin
  #320;
  $finish;
end

endmodule // clock_always_test
