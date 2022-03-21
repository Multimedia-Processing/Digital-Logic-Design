module full_adder_test ();
  reg a, b, ci;
  wire sum, carry;
  integer number1, number2, number3;

  full_addr UUT (a, b, ci, sum, carry);

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
                #10;
              end
          end
      end
    $finish;
  end

endmodule // full_addr_test
