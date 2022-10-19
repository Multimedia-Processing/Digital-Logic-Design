`include "decoder_6x20.v"

module decoder_6x20_test ();
  reg [5:0] coder;
  integer number;
  wire [19:0] decoder;

  decoder_6x20 UUT (coder, decoder);

  initial begin
    $display("| coder | decoder |");

    #15;
    for (number = 0; number < 65; number = number + 1) begin
      coder = number;
      #20;
    end
    $finish;
  end

  always begin
    #5;
    $monitor("| %d | %b |", coder, decoder);
    #5;
  end

endmodule // decoder_6x20_test
