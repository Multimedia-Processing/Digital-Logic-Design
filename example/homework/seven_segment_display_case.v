module seven_segment_display_case (data, display);
input [3:0] data;
output [7:0] display;
reg [7:0] display;


always @ (data) begin
  case (data)
    data == 4'b0000: display = 7'b1111110;
    data == 4'b0001: display = 7'b0110000;
    data == 4'b0010: display = 7'b1101101;
    data == 4'b0011: display = 7'b1111001;
    data == 4'b0100: display = 7'b0110011;
    data == 4'b0101: display = 7'b1011011;
    data == 4'b0110: display = 7'b1011111;
    data == 4'b0111: display = 7'b1110010;
    data == 4'b1000: display = 7'b1111111;
    data == 4'b1001: display = 7'b1111011;
    data == 4'b1010: display = 7'b1110111;
    data == 4'b1011: display = 7'b0011111;
    data == 4'b1100: display = 7'b1001110;
    data == 4'b1101: display = 7'b0111101;
    data == 4'b1110: display = 7'b1001111;
    default: display = 7'b1000111;
  endcase
end

endmodule // seven_segment_display