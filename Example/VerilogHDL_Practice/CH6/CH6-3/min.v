module min (A, B, C, Y);
  input [3:0] A, B, C;
  output [3:0] Y;
  reg [3:0] Y;

always @ (A or B or C) begin
  if (A > B & C > B) begin
    Y = B;
  end else if (A > C & B > C) begin
    Y = C;
  end else if (C > A & B > A) begin
    Y = A;
  end else if (C == A & B == A) begin
    Y = A;
  end

end

endmodule // min
