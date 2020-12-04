module op_test ();

reg [3:0] A, B;
reg Ci = 1'b0;
wire [3
:0] Co, S, X, Y, Z;

op UUT (.A(A), .B(B), .Ci(Ci), .Co(Co), .S(S), .X(X), .Y(Y), .Z(Z));

initial begin
  A = 4'b0000; B = 4'b0000; Ci = 1'b0;
  #100; A = 4'b1100; B = 4'b1010; Ci = 1'b1;
  #100; A = 4'b1001; B = 4'b0000; Ci = 1'b0;
  #100; A = 4'b0001; B = 4'b1001; Ci = 1'b1;
  #100; A = 4'b1110; B = 4'b0100; Ci = 1'b0;
  #100; A = 4'b0111; B = 4'b0101; Ci = 1'b1;
  #100; A = 4'b1000; B = 4'b1001; Ci = 1'b0;
  #100; A = 4'b1010; B = 4'b0000; Ci = 1'b1;
  #100; A = 4'b0011; B = 4'b0011; Ci = 1'b0;
  #100; A = 4'b1111; B = 4'b1111; Ci = 1'b1;

end

initial begin
  #1000;
    $finish;

end

endmodule // op_test
