module excess_three_case (i, o);
  input [2:0] i;
  output [2:0] o;
  reg [2:0] o;


always @ (i) begin
  case (i)
    3'b000: o = 3'b011;
    3'b001: o = 3'b100;
    3'b010: o = 3'b101;
    3'b011: o = 3'b110;
    3'b100: o = 3'b111;
    3'b101: o = 3'b000;
    3'b110: o = 3'b001;
    default: o = 3'b010;
  endcase
end

endmodule // excess_three_case
