`include "sel_4x1.v"

module sel_4x1_test ();
  reg a, b, c, d, sel0, sel1;
  wire out;
  integer number1, number2;

  sel_4x1 UUT (a, b, c, d, sel0, sel1, out);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 4; number2 = number2 + 1)
          begin
            {a, b, c, d} = number1;
            {sel0, sel1} = number2;
            $monitor("| %b | %b | %b | %b | %b | %b | %b |",
              a, b, c, d, sel0, sel1, out);
            #10;
          end
      end
    $finish;
  end

endmodule // sel_4x1_test
