module frequency_divder_32_duty_cycle_50 (clock, reset, out);
  input clock, reset;
  output out;

  reg out;
  reg [4:0] diver;

  // 32 除頻器
  always @ (posedge clock) begin
    if (~reset || diver == 32) begin
      diver = 0;
    end else begin
      diver += 1;
    end
  end

  // 形成對稱方波
  always @ (diver) begin
    if (diver < 16) begin
      out = 0;
    end else begin
      out = 1;
    end
  end

endmodule // frequency_divder_32_duty_cycle_50