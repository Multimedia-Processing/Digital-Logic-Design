module casezx (a, y, z);
  input [2:0]a;
  output [1:0]y, z;
  reg [1:0]y, z;

always @ (a) begin
  casez (a)
    3'b1??: y = 0;
    3'b0z1: y = 1;
    3'b000: y = 2;
    default: y = 3;
  endcase

  casex (a)
    3'bx1x: z = 0;
    3'b00?: z = 1;
    default: z = 2;
  endcase
end

endmodule // casezx
