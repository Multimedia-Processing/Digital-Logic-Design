`include "detector_3_bits.v"

module detector_3_bits_test ();
  reg clock, clear, in;
  reg [7:0] data;
  wire [2:0] out;
  integer number;

  detector_3_bits UUT (clock, clear, in, out, q);

  initial begin
    $display("| clock | clear | in |  out  | q |");

    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #5;
    clear = 1'b0;

    #20;

    data = 8'b10111101;
    for (number = 8; number >= 1; number = number - 1) begin
      in = data[number - 1];
      #20;
    end
    #20;
    clear = 1'b1;
    #20;
    clear = 1'b0;
    #20;
    $finish;
  end
  always begin
    #5;
    $monitor("|   %b   |   %b   | %b  |  %b  | %b |", clock, clear, in, out, q);

    #5;
    clock = ~clock;
  end

endmodule // detector_3_bits_test
