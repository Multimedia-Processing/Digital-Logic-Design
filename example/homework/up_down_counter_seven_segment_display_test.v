`include "up_down_counter_seven_segment_display.v"

module up_down_counter_seven_segment_display_test ();
  reg clock, reset;
  integer number;
  wire [6:0] display;

  up_down_counter_seven_segment_display UUT (clock, reset, display);

  initial begin
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    $display("| clock | reset | display |");
    for (number = 0; number < 50; number = number + 1) begin
      $monitor("|   %b   |   %b   | %b |", clock, reset, display);
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

endmodule // up_down_counter_seven_segment_display_test
