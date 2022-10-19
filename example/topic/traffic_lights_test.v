`include "traffic_lights.v"

module traffic_lights_test ();
  reg clock, reset;
  integer number;
  wire [13:0] row_display, column_display;
  wire [2:0] row_traffic_lights, column_traffic_lights;

  traffic_lights UUT (clock, reset, row_traffic_lights, column_traffic_lights,
    row_display, column_display);

  initial begin
    $display("| count | clock | reset | row traffic lights | column traffic lights | row display | column display");
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    for (number = 0; number < 256; number = number + 1) begin
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
    $monitor("| %d |   %b   |   %b   | %b | %b | %b | %b |",
      number, clock, reset, row_traffic_lights, column_traffic_lights,
      row_display, column_display);
    #5;
    clock = ~clock;
  end

endmodule // traffic_lights_test
