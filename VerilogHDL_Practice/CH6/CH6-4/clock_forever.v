module clock_forever (clk);
output clk;
reg clk;

initial begin
  clk = 0;
  forever
    begin
      #5 clk = ~clk;
    end
end

endmodule // clock_forever
