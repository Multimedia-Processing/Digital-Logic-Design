`timescale 1ns / 1ps

module full_adder_4_bit_test ();
  reg [3:0] A, B;
  reg Ci;
  wire [3:0] S;
  wire Co;
  integer number1, number2, number3;

  full_adder_4_bit UUT (A, B, Ci, S, Co);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                A = number1;
                B = number2;
                Ci = number3;
                $monitor("| %d | %d | %b | %d | %b |", A, B, Ci, S, Co);
                #10;
              end
          end
      end
    $finish;
  end

endmodule