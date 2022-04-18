`include "adder_subtr_8_bits.v"

module adder_subtr_8_bits_test ();
  reg signed [7:0] a, b;
  reg m;
  wire signed [7:0] sum;
  wire co;
  integer number1, number2, number3;

  adder_subtr_8_bits UUT (a, b, m, sum, co);

  initial begin
    for (number1 = 0; number1 < 256; number1 = number1 + 17)
      begin
        for (number2 = 0; number2 < 256; number2 = number2 + 20)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                m = number3;
                $monitor("| %d | %d | %b | %d | %b |", a, b, m, sum, co);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // adder_subtr_8_bits_test
