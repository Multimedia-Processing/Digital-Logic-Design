`include "accumulator.v"

module accumulator_test ();
  reg clock, clear;
  reg [3:0] in;
  wire [3:0] out;
  integer number;

  accumulator UUT (clock, clear, in, out);

  initial begin
    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #5;

    clear = 1'b0;

    #10;

    $display("| clock | clear |  in  | out  |");

    for (number = 0; number < 2; number = number + 1) begin
      in  = 1;
      $monitor("|   %b   |   %b   | %b | %b |", clock, clear, in, out);
      #20;
    end
    #20;
    clear = 1'b1;
    #20;
    clear = 1'b0;
    for (number = 0; number < 8; number = number + 2) begin
      in  = number;
      $monitor("|   %b   |   %b   | %b | %b |", clock, clear, in, out);
      #20;
    end
    $finish;
  end
  always begin
    #10;
    clock = ~clock;
  end

endmodule // accumulator_test
