module block (D, Clk, X, Y);
  input D, Clk;
  output [3:0] X, Y;
  reg [3:0] X, Y;

always @ (posedge Clk) begin
  X[0] = D;
  X[1] = X[0];
  X[2] = X[1];
  X[3] = X[2];

  Y[0] <= D;
  Y[1] <= Y[0];
  Y[2] <= Y[1];
  Y[3] <= Y[2];

end

endmodule // block
