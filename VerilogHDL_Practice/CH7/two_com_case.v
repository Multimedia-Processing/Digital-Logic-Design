module two_com_case (i, o);

input [3:0]i;
output [3:0]o;
reg [3:0]o;

always @ (i) begin
  case (i)
    4'b0000: o = 4'b0000;
    4'b0001: o = 4'b1111;
    4'b0010: o = 4'b1110;
    4'b0011: o = 4'b1101;
    4'b0100: o = 4'b1100;
    4'b0101: o = 4'b1011;
    4'b0110: o = 4'b1010;
    4'b0111: o = 4'b1001;
    4'b1000: o = 4'b1000;
    4'b1001: o = 4'b0111;
    4'b1010: o = 4'b0110;
    4'b1011: o = 4'b0101;
    4'b1100: o = 4'b0100;
    4'b1101: o = 4'b0011;
    4'b1110: o = 4'h2;
    default: o = 4'b0001;
  endcase

end


endmodule // two_com_case
