module mid (A, B, C, Z);
  input [3:0] A, B, C;
  output [3:0] Z;
  reg [3:0] Z;

always @ (A or B or C) begin
  if (A > B & B < C | A < B & B < C) begin
    Z = B;
  end else if (A > C & C > B | A < C & C < B) begin
    Z = C;
  end else if (C > A & A > B | C < A & A < B) begin
    Z = A;
  end else if (C == A & B == A) begin
    Z = A;
  end

end

endmodule // mid
