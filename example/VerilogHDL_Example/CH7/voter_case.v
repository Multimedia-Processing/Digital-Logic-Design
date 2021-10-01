module voter_case (i, o);
input [3:0] i;
output [3:1] o;
reg [3:1] o;

always @ ( i ) begin
  case(i)
    4'b0000: o = 3'b100;
    4'b0001: o = 3'b100;
    4'b0010: o = 3'b100;
    4'b0011: o = 3'b010;
    4'b0100: o = 3'b100;
    4'b0101: o = 3'b010;
    4'b0110: o = 3'b010;
    4'b0111: o = 3'b001;
    4'b1000: o = 3'b100;
    4'b1001: o = 3'b010;
    4'b1010: o = 3'b010;
    4'b1011: o = 3'b001;
    4'b1100: o = 3'b010;
    4'b1101: o = 3'b001;
    4'b1110: o = 3'b001;
    4'b1111: o = 3'b001;
  endcase
end
endmodule // voter_case
