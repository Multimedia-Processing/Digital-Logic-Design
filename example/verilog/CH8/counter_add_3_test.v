`include "counter_add_3.v"

module counter_add_3_test ();
  reg clock, reset;
  integer number;
  wire [5:0] q;

  counter_add_3 UUT (clock, reset, q);

  initial begin
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    $display("| clock | reset |  q |");
    for (number = 0; number < 102; number = number + 1) begin
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

endmodule // counter_add_3_test
