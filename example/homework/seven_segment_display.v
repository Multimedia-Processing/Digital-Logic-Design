module seven_segment_display (data, display);
input [3:0] data;
output [6:0] display;
reg [6:0] display;


always @ (data) begin
  if (data == 4'b0000) begin
    display = 7'b1111110;
  end else if (data == 4'b0001) begin
    display = 7'b0110000;
  end else if (data == 4'b0010) begin
    display = 7'b1101101;
  end else if (data == 4'b0011) begin
    display = 7'b1111001;
  end else if (data == 4'b0100) begin
    display = 7'b0110011;
  end else if (data == 4'b0101) begin
    display = 7'b1011011;
  end else if (data == 4'b0110) begin
    display = 7'b1011111;
  end else if (data == 4'b0111) begin
    display = 7'b1110010;
  end else if (data == 4'b1000) begin
    display = 7'b1111111;
  end else if (data == 4'b1001) begin
    display = 7'b1111011;
  end else if (data == 4'b1010) begin
    display = 7'b1110111;
  end else if (data == 4'b1011) begin
    display = 7'b0011111;
  end else if (data == 4'b1100) begin
    display = 7'b1001110;
  end else if (data == 4'b1101) begin
    display = 7'b0111101;
  end else if (data == 4'b1110) begin
    display = 7'b1001111;
  end else begin
    display = 7'b1000111;
  end
end

endmodule // seven_segment_display
