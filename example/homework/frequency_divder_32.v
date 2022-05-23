// 32除頻器

module frequency_divder_32 (clock, reset, out);
  input clock, reset;
  output out;

  reg out;
  reg [4:0];

  parameter count = 16;

  always @ (posedge clock) begin
    if (~reset) begin
      a = 0;
    end else begin
      if (a < count - 1) begin
        a += 1;
      end else begin
        a = 0;
      end
    end

  end


  always @ (posedge clock) begin
    if (~reset) begin
      out = 1'b0;
    end else begin
      out = out;
    end
  end

endmodule // frequency_divder_32
