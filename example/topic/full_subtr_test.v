`timescale 1ns / 1ps
`include "full_subtr.v"

module full_subtr_test ();
  reg a, b, ci;
  wire sub, borrow;
  integer number1, number2, number3;

  full_subtr UUT (a, b, ci, sub, borrow);

  initial begin
    for (number1 = 0; number1 < 2; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 2; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                ci = number3;
                $monitor("| %b | %b | %b | %b | %b |", a, b, ci, sub, borrow);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // full_subtr_test
