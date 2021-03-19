`timescale 1ns / 1ps

module clock_forever_test ();
wire clk;


clock_forever UUT (.clk(clk));

initial begin
  #320;
  $finish;
end

endmodule // clock_forever_test
