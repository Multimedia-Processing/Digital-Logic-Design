`include "shift.v"

module shift_test ();

  reg [3:0] d;
  wire [3:0] mul1, mul2, mul3, div1, div2, div3;
  integer number;

  shift UUT (d, mul1, mul2, mul3, div1, div2, div3);

  initial begin
    for (number = 0; number < 16; number = number + 4)
      begin

        d = number;
        $monitor("| %b | %b | %b | %b | %b | %b | %b |", d, mul1, mul2, mul3, div1, div2, div3);

        #10;
    end
  end

endmodule // shift_test
