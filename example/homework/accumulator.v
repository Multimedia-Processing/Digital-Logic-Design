module accumulator (clock, clear, in, out);
input clock, clear;
input [3:0] in;
output [3:0] out;
reg [3:0] register;

always @ (posedge clock) begin
  if (clear) begin
    register = 4'd0;
  end else begin
    register += in;
  end
end

assign out = register;

endmodule // accumulator
