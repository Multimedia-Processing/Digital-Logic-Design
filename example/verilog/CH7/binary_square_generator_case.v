module binary_square_generator_case (i, o);

input [1:0] i;
output [3:0] o;
reg [3:0] o;

always @ (i) begin
  case (i)
    2'b00: o = 4'b0000;
    2'b01: o = 4'b0001;
    2'b10: o = 4'b0100;
    default: o = 4'b1001;
  endcase
end

endmodule // binary_square_generator_case
