`include "counter.v"

module counter_test ();
  reg clock, reset;
  integer number;
  wire [3:0] q;

  counter UUT (clock, reset, q);

  initial begin
    $display("| clock | reset |  q |");
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    for (number = 0; number < 50; number = number + 1) begin
      $monitor("|   %b   |   %b   | %d |", clock, reset, q);
      #10;
    end
    $finish;
  end

  initial begin
    #250;
    reset = 1'b1;
    #20;
    reset = 1'b0;

  end

  always begin
    #10;
    clock = ~clock;
  end

endmodule // counter_test
