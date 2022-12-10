`timescale 1ns / 1ps

module block_test ();
reg D, Clk = 0;
wire [3:0] X, Y;

block UUT (.D(D), .Clk(Clk), .X(X), .Y(Y));

initial begin
  #80 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;
  #270 D = 1; #150 D = 0;

end

initial begin
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;
  #100 Clk = 1; #100 Clk = 0;

end

initial begin
  #6400;
    $finish;