module half_addr_test ();
  reg a, b;
  wire sum, carry;
  integer number1, number2;

  half_addr UUT (a, b, sum, carry);

  initial begin
    for (number1 = 0; number1 < 4; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 4; number2 = number2 + 1)
          begin
            a = number1;
            b = number2;
            #10;
          end
      end
    $finish;
  end

endmodule // half_addr_test
