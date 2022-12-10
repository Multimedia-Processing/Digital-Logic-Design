`include "counter_down_64.v"

module counter_down_64_test ();
  reg clock, reset;
  integer number;
  wire [5:0] q;

  counter_down_64 UUT (clock, reset, q);

  initial begin
    $display("| clock | reset |  q |");
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    for (number = 0; number < 65; number = number + 1) begin
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
    #5;
    $monitor("|   %b   |   %b   | %d |", clock, reset, q);

    #5;
    clock = ~clock;
  end

endmodule // counter_down_64_test
