`include "frequency_divder_32_duty_cycle_25.v"

module frequency_divder_32_duty_cycle_25_test ();
  reg clock;
  reg reset;
  wire out;

  frequency_divder_32_duty_cycle_25 UUT (clock, reset, out);

  initial begin
    clock = 1'b1;
    reset = 1'b0;
    #5;

    reset = 1'b1;

    $display("| clock | reset | out |");

  end

  always begin
    #5;
    $monitor("|   %b   |   %b   |  %b  |", clock, reset, out);

    #5;
    clock = ~clock;
  end

  initial begin
    #6500;
    $finish;
  end

endmodule // frequency_divder_32_duty_cycle_25_test
