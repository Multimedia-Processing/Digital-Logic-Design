`include "counter_9.v"

module counter_9_test ();
  reg clock, reset;
  integer number;
  wire [3:0] q;

  parameter PERIOD = 20;
  parameter real DUTY_CYCLE = 0.5;
  parameter OFFSET = 0;

  counter_9 UUT (clock, reset, q);

  initial begin
    reset = 1'b0;
    #5;
    $display("| clock | reset |  q   |");
    for (number = 0; number < 100; number = number + 1) begin
      $monitor("|   %b   |   %b   | %b |", clock, reset, q);
      #10;
    end
    $finish;
  end

  initial begin
    #OFFSET;
    forever
      begin
        clock = 1'b0;
        #(PERIOD - (PERIOD * DUTY_CYCLE));
        clock = 1'b1;
        #(PERIOD * DUTY_CYCLE);
      end
  end

endmodule // counter_9_test
