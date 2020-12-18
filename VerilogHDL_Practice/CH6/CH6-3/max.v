module max (A, B, C, X);
  input [3:0] A, B, C;
  output [3:0] X;
  reg [3:0] X;

always @ (A or B or C) begin
  if (A < B & C < B) begin
    X = B;
  end else if (A < C & B < C) begin
    X = C;
  end else if (C < A & B < A) begin
    X = A;
  end else if (C == A & B == A) begin
    X = A;
  end

end

endmodule // max
