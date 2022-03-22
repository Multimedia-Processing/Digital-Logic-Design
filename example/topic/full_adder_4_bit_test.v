module full_adder_4_bit_test ();
  reg [3:0] a, b, ci;
  wire [4:0] sum;
  integer number1, number2;

  full_adder_4_bit UUT (a, b, ci, sum);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                ci = number3;
                #10;
              end
          end
      end
    $finish;
  end

endmodule // full_adder_4_bit_test
