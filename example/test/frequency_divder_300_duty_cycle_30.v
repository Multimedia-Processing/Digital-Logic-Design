module frequency_divder_300_duty_cycle_30 (clock, reset, out);
  input clock, reset;
  output out;

  reg out;
  reg [8:0] diver;

  // 32 除頻器
  always @ (posedge clock) begin
    if (~reset || diver == 300) begin
      diver = 0;
    end else begin
      diver = diver + 1;
    end
  end

  // 形成對稱方波
  always @ (diver) begin
    if (diver < 90) begin
      out = 1;
    end else begin
      out = 0;
    end
  end

endmodule // frequency_divder_300_duty_cycle_30
