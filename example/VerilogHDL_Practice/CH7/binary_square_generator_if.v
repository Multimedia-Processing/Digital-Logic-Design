module binary_square_generator_if (i, o);

input [1:0] i;
output [3:0] o;
reg [3:0] o;

always @ (i) begin
  if (i == 2'b00) begin
    o = 4'b0000;

  end else if (i == 2'b01) begin
    o = 4'b0001;

  end else if (i == 2'b10) begin
    o = 4'b0100;

  end else if (i == 2'b11) begin
    o = 4'b1001;

  end

end


endmodule // binary_square_generator_if
