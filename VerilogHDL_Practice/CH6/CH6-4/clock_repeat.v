module clock_repeat (clk);
output clk;
reg clk;

initial begin
  clk = 0;
  repeat(16)
    begin
      #5 clk = ~clk;
    end
end

endmodule // clock_repeat
