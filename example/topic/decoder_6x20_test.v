`include "decoder_6x20.v"

module decoder_6x20_test ();
  reg clock, reset;
  reg [5:0] coder;
  integer number;
  wire [19:0] decoder;

  decoder_6x20 UUT (clock, reset, coder, decoder);

  initial begin
    $display("| clock | reset | coder | decoder |");
    clock = 1'b1;
    reset = 1'b1;

    #10;
    reset = 1'b0;

    #5;
    for (number = 0; number < 65; number = number + 1) begin
      coder = number;
      #20;
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
    $monitor("|   %b   |   %b   | %d | %b |", clock, reset, coder, decoder);
    #5;
    clock = ~clock;
  end

endmodule // decoder_6x20_test
