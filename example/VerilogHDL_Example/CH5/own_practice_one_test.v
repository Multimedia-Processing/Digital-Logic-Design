module own_practice_one_test ();

reg [4:0] P, Q;
wire [6:0]R;
wire [3:0]S;
wire [5:0]T;
wire [4:0]U;
wire [4:0]V;
wire [5:0]W;
wire [4:0]X;
wire Y;
wire Z;

own_practice_one UUT (.P(P), .Q(Q), .R(R), .S(S), .T(T), .U(U), .V(V), .W(W), .X(X), .Y(Y), .Z(Z));

initial begin
  P = 5'b00000; Q = 5'b00000;
  #100; P = 5'b11000; Q = 5'b10100;
  #100; P = 5'b10010; Q = 5'b00000;
  #100; P = 5'b00010; Q = 5'b10010;
  #100; P = 5'b11100; Q = 5'b01000;
  #100; P = 5'b01110; Q = 5'b01010;
  #100; P = 5'b10000; Q = 5'b10010;
  #100; P = 5'b10100; Q = 5'b00000;
  #100; P = 5'b00110; Q = 5'b00110;
  #100; P = 5'b11110; Q = 5'b11110;

end

initial begin
  #1000;
    $finish;

end

endmodule // own_practice_one_test
