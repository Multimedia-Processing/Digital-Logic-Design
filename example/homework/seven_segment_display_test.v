`include "seven_segment_display.v"

module seven_segment_display_test ();
  reg [3:0] data;
  wire [7:0] display;
  integer number;

  seven_segment_display UUT (data, display);

  initial begin
    $display("| data | display  |");
    for (number = 0; number < 16; number = number + 1)
      begin
        data = number;
        $monitor("| %b | %b |", data, display);
        #10;
      end
    $finish;
  end

endmodule // seven_segment_display_test
