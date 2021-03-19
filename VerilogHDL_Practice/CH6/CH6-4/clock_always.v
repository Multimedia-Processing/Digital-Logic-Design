module clock_always (clk);
output clk;
reg clk = 0;

always #5 clk =! clk;

endmodule // clock_always
