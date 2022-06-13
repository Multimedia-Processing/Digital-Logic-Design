module detector_f628 (clock, clear, in, out, q);
  input clock, clear, in;
  output [15:0] out;
  output q;
  reg q;
  reg [15:0] out;

  always @ (posedge clock) begin
    if (clock) begin
      out = 3'd0;
    end else begin
      out[15] = out[14];
      out[14] = out[13];
      out[13] = out[12];
      out[12] = out[11];
      out[11] = out[10];
      out[10] = out[9];
      out[9] = out[8];
      out[8] = out[7];
      out[7] = out[6];
      out[6] = out[5];
      out[5] = out[3];
      out[3] = out[2];
      out[2] = out[1];
      out[1] = out[0];
      out[0] = in;
    end
  end

  always @ (out) begin
    if (out == 16'hf628) begin
      q = 1;
    end else begin
      q = 0;
    end
  end

endmodule // detector_f628
