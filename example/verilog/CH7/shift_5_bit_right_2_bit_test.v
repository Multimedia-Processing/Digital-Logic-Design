`include "shift_c_5_bit_right_2_bit.v"

module shift_c_5_bit_right_2_bit_test ();

  reg [4:0] d;
  wire [4:0] mul;
  integer number;

  shift_c_5_bit_right_2_bit UUT (d, mul);

  initial begin
    for (number = 0; number < 32; number = number + 1)
      begin
        d = number;
        $monitor("| %b | %b |", d, mul);
        #10;
      end
    $finish;
  end

endmodule // shift_c_5_bit_right_2_bit_test
