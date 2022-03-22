`timescale 1ns / 1ps
`include "mul_5x3_assign.v"

module mul_5x3_assign_test ();
reg signed [4:0] a, c;
reg signed [2:0] b, d;
wire signed [7:0] s1, s2;
integer number1, number2, number3, number4;

mul_5x3_assign UUT (a, b, c, d, s1, s2);

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

endmodule // mul_5x3_assign_test
