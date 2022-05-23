`include "binary_to_bcd.v"

module binary_to_bcd_test ();
  reg [6:0] binary;
  wire [7:0] bcd;
  integer number;

  binary_to_bcd UUT (binary, bcd);

  initial begin
    $display("| binary | bcd |");
    for (number = 0; number < 128; number = number + 1)
      begin
        binary = number;
        $monitor("| %d | %H |", binary, bcd);
        #10;
      end
    $finish;
  end

endmodule // binary_to_bcd_test
