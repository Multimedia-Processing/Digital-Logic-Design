module siso_shift_register (clock, clear, in, out);
input clock, clear, in;
output out;
reg [3:0] register;

always @ (posedge clock) begin
  if (clear) begin
    register = 4'd0;
  end else begin
    register[3] = register[2];
    register[2] = register[1];
    register[1] = register[0];
    register[0] = in;
  end
end

assign out = register[3];

endmodule // siso_shift_register
