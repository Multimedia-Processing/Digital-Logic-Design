`include "frequency_divder_32.v"

module frequency_divder_32_test ();
  reg clock;
  reg reset;
  wire out;

  integer number;

  frequency_divder_32 UUT (clock, reset, out);

  initial begin
    clock = 1'b1;
    reset = 1'b0;
    #5;

    reset = 1'b1;

  end

  always begin
    #10;
    clock = ~clock;
  end

  initial begin
    #100000;
    $finish;
  end

endmodule // frequency_divder_32_test
