`include "detector_5_bits.v"

module detector_5_bits_test ();
  reg clock, clear, in;
  reg [4:0] data;
  wire [4:0] out;
  integer number;

  detector_5_bits UUT (clock, clear, in, out, q);

  initial begin
    $display("| clock | clear | in | out | q |");

    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #5;
    clear = 1'b0;

    #20;

    data = 5'b10111;
    for (number = 5; number >= 1; number = number - 1) begin
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

endmodule // detector_5_bits_test
