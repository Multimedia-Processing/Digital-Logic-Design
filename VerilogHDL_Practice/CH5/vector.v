module vector (A, B, W, X, Y, Z);

input [3:0]A;
input [4:0]B;
output [2:0]W;
output [4:0]X;
output [2:0]Y;
output [4:0]Z;

assign W = (A);
assign X = (A);
assign Y = B[3:1];


assign Z = {A[2:0], B[3:2]};

endmodule // vector
