`include "detector_f628.v"

module detector_f628_test ();
  reg clock, clear, in;
  reg [15:0] data;
  wire [15:0] out;
  integer number1, number2;

  detector_f628 UUT (clock, clear, in, out, q);

  initial begin
    $display("| clock | clear | in | out | q |");

    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #5;
    clear = 1'b0;

    #10;

    for (number1 = 0; number1 < 65536; number1 = number1 + 16384) begin
      data = number1;
      for (number2 = 0; number2 < 16; number2 = number2 + 1) begin
        in = data[number2];
        #10;
      end
    end
    clear = 1'b1;
    #10;
    clear = 1'b0;
    #10;
    for (number1 = 0; number1 < 65536; number1 = number1 + 16384) begin
      data = number1;
      for (number2 = 0; number2 < 16; number2 = number2 + 1) begin
        in = data[number2];
        #10;
      end
    end
    $finish;
  end
  always begin
    #5;
    $monitor("|   %b   |   %b   | %b  |  %b  | %b |", clock, clear, in, out, q);

    #5;
    clock = ~clock;
  end

endmodule // detector_f628_test
