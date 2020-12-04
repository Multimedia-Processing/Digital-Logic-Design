`timescale 1ns / 1ps

module vector_test ();

reg [3:0] A;
reg [4:0] B;
wire [2:0] W;
wire [4:0] X;
wire [2:0] Y;
wire [4:0] Z;


vector UUT (.A(A), .B(B), .W(W), .X(X), .Y(Y), .Z(Z));

initial begin
  A = 4'b1111; B = 5'b11110;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;
  #100 ;A = A >> 1; B = B >> 1;

end

initial begin
  #800;
    $finish;

end

endmodule // vector_test
