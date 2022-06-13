`include "frequency_divder_300_duty_cycle_30.v"

module frequency_divder_300_duty_cycle_30_test ();
  reg clock;
  reg reset;
  wire out;

  frequency_divder_300_duty_cycle_30 UUT (clock, reset, out);

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
    #100000;
    $finish;
  end

endmodule // frequency_divder_300_duty_cycle_30_test
