module frequency_divder_bcd (clock, reset, out);
  input clock, reset;
  output out;

  reg out;
  reg [3:0] diver;

  // 10 除頻器
  always @ (posedge clock) begin
    if (~reset || diver == 9) begin
      diver = 0;
    end else begin
      diver = diver + 1;
    end
  end

  // 形成對稱方波
  always @ (diver) begin
    if (diver < 5) begin
      out = 1;
    end else begin
      out = 0;
    end
  end

endmodule // frequency_divder_bcd
