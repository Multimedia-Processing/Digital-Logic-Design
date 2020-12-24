`timescale 1ns / 1ps

module case_two_test ();
reg [2:0] N;
reg [3:0] A, B;
wire [3:0] X;

case_two UUT (.N(N), .A(A), .B(B), .X(X));

initial begin
  #100 A = 4'b1001; B = 4'b0110; N = 0;
  #100 A = 4'b1100; B = 4'b1010; N = 5;
  #100 A = 4'b1110; B = 4'b1100; N = 1;
  #100 A = 4'b0001; B = 4'b1010; N = 1;
  #100 A = 4'b1011; B = 4'b1100; N = 3;
  #100 A = 4'b1011; B = 4'b0110; N = 3;
  #100 A = 4'b1001; B = 4'b1000; N = 2;
  #100 A = 4'b1010; B = 4'b1110; N = 2;
  #100 A = 4'b1001; B = 4'b1111; N = 6;
  #100 A = 4'b1011; B = 4'b0100; N = 6;

end

initial begin
  #1100;
    $finish;

end

endmodule // case_two_test
