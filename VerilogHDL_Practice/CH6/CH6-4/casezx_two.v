module casezx_two (d, oz);
  input [3:0] d;
  output [1:0] oz;
  reg [1:0] oz;

always @ ( d ) begin
  casez (d)
    4'b1???: oz = 3;
    4'b01??: oz = 2;
    4'b001?: oz = 1;
    default: oz = 0;
  endcase
end

endmodule // casezx_two
