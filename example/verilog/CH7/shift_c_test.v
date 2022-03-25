`include "shift_c.v"

module shift_c_test ();

  reg [3:0] d;
  wire [3:0] mul1, mul2, div1, div2;
  integer number;

  shift_c UUT (d, mul1, mul2, div1, div2);

  initial begin
    for (number = 0; number < 16; number = number + 1)
      begin

        d = number;
        $monitor("| %b | %b | %b | %b | %b |", d, mul1, mul2, div1, div2);

        #10;
    end
  end

endmodule // shift_c_test
