`include "down_counter.v"

module down_counter_test ();
  reg clock, reset;
  integer number;
  wire [5:0] q;

  parameter PERIOD = 20;
  parameter real DUTY_CYCLE = 0.5;
  parameter OFFSET = 0;

  down_counter UUT (clock, reset, q);

  initial begin
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    $display("| clock | reset |  q |");
    for (number = 0; number < 100; number = number + 1) begin
      $monitor("|   %b   |   %b   | %d |", clock, reset, q);
      #10;
    end
    $finish;
  end

  always begin
    #10;
    clock = ~clock;
  end

endmodule // down_counter_test
