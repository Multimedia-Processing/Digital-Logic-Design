module half_subtr_test ();
  reg [3:0] a, b;
  wire [4:0] sum;
  integer number1, number2;

  half_subtr UUT (a, b, sum);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
              a = number1;
              b = number2;
              #10;
          end
      end
    $finish;
  end

endmodule // half_subtr_test
