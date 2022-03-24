`include "subtr_4_bit.v"

module subtr_4_bit_test ();
  reg [3:0] a, b;
  reg bi;
  wire [3:0] sub;
  wire bo;
  integer number1, number2, number3;

  subtr_4_bit UUT (a, b, bi, sub, bo);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                bi = number3;
                $monitor("| %b | %b | %b | %b | %b |", a, b, bi, sub, bo);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // subtr_4_bit_test
