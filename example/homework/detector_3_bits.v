module detector_3_bits (clock, clear, in, out, q);
  input clock, clear, in;
  output [2:0] out;
  output q;
  reg q;
  reg [2:0] out;

  always @ (posedge clock) begin
    if (clear) begin
      out = 3'd0;
    end else begin
      out[2] = out[1];
      out[1] = out[0];
      out[0] = in;
    end
  end

  always @ (out) begin
    if (out == 3'b101) begin
      q = 1;
    end else begin
      q = 0;
    end
  end

endmodule // detector_3_bits
