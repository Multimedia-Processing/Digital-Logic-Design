module compare (A, B, AgB, AeB, AlB);
input A, B;
output AgB, AeB, AlB;
reg AgB, AeB, AlB;

always @ (A or B) begin
  if (A < B) begin
    AgB = 0; AeB = 0; AlB = 1;

  end else if (A === B) begin
    AgB = 0; AeB = 1; AlB = 0;

  end else begin
    AgB = 1; AeB = 0; AlB = 0;

  end
end

endmodule // compare
