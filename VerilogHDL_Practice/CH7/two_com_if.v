module two_com_if (i, o);

input [3:0]i;
output [3:0]o;
reg [3:0]o;

always @ (i) begin
  if (i == 4'b0000) begin
    o = 4'b0000;

  end else if (i == 4'b0001) begin
    o = 4'b1111;

  end else if (i == 4'b0010) begin
    o = 4'b1110;

  end else if (i == 4'b0011) begin
    o = 4'b1101;

  end else if (i == 4'b0100) begin
    o = 4'b1100;

  end else if (i == 4'b0101) begin
    o = 4'b1011;

  end else if (i == 4'b0110) begin
    o = 4'b1010;

  end else if (i == 4'b0111) begin
    o = 4'b1001;

  end else if (i == 4'b1000) begin
    o = 4'b1000;

  end else if (i == 4'b1001) begin
    o = 4'b0111;

  end else if (i == 4'b1010) begin
    o = 4'b0110;

  end else if (i == 4'b1011) begin
    o = 4'b0101;

  end else if (i == 4'b1100) begin
    o = 4'b0100;

  end else if (i == 4'b1101) begin
    o = 4'b0011;

  end else if (i == 4'b1110) begin
    o = 4'h2;

  end else if (i == 4'b1111) begin
    o = 4'b0001;

  end

end


endmodule // two_com_if
