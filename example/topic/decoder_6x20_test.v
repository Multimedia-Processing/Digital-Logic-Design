`include "decoder_6x20.v"

module decoder_6x20_test ();
  reg clock, reset;
  integer number;
  wire [6:0] display;

  decoder_6x20 UUT (clock, reset, coder, decoder);

  initial begin
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    $display("| clock | reset | display |");
    for (number = 0; number < 50; number = number + 1) begin
      $monitor("|   %b   |   %b   | %b | %b |", clock, reset, coder, decoder);
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

endmodule // decoder_6x20_test
