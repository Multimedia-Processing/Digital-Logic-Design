`timescale 1ns / 1ps

module max_test ();
reg [3:0] A, B ,C;
wire [3:0] X;

max UUT (.A(A), .B(B), .C(C), .X(X));

initial begin
  #100 A = 4'b0011; B = 4'b0001; C = 4'b0010;
  #100 A = 4'b0001; B = 4'b0101; C = 4'b0100;
  #100 A = 4'b1110; B = 4'b1001; C = 4'b1111;
  #100 A = 4'b0001; B = 4'b0001; C = 4'b0001;
end

initial begin
  #500;
    $finish;
end

endmodule // max_test
