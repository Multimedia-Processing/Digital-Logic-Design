module shift_test ();

  reg [3:0] d;
  wire [3:0] mul1, mul2, mul3, div1, div2, div3;
  integer number1, number2, number3, number4;

  shift UUT (d, mul1, mul2, mul3, div1, div2, div3);

  initial begin
    for (number1 = -8; number1 < 8; number1 = number1 + 1)
      begin
        for (number2 = -4; number2 < 4; number2 = number2 + 1)
          begin
            for (number3 = -8; number3 < 8; number3 = number3 + 1)
              begin
                for (number4 = -4; number4 < 4; number4 = number4 + 1)
                  begin

                    a = number1;
                    b = number2;
                    c = number3;
                    d = number4;
                    #10;
                  end
              end
          end
      end
  end

endmodule // shift_test
