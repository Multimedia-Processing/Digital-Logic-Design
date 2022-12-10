`include "block.v"
`timescale 1ns / 1ps

module block_test ();
reg D, clock = 0;
wire [3:0] X, Y;

block UUT (.D(D), .clock(clock), .X(X), .Y(Y));

initial begin
  clock = 1'b1;
  $display("| D | clock | X | Y |");
  #80 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);
  #270 D = 1; #150 D = 0;
  $monitor("| %b | %b | %b | %b |", D, clock, X, Y);

end

initial begin
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;
  #100 clock = 1; #100 clock = 0;


end

/*
always begin
  #100;
  clock = ~clock;
end
*/

initial begin
  #6400;
    $finish;
end

endmodule // block_test
