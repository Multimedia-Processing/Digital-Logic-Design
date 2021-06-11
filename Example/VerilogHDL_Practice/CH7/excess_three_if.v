module excess_three_if (i, o);
input [2:0] i;
output [2:0] o;
reg [2:0] o;

always @ (i) begin
  if (i == 3'b000) begin
    o = 3'b011;
  end else if (i == 3'b001) begin
    o = 3'b100;
  end else if (i == 3'b010) begin
    o = 3'b101;
  end else if (i == 3'b011) begin
    o = 3'b110;
  end else if (i == 3'b100) begin
    o = 3'b111;
  end else if (i == 3'b101) begin
    o = 3'b000;
  end else if (i == 3'b110) begin
    o = 3'b001;
  end else begin
    o = 3'b010;
  end
end

endmodule // excess_three_assign
