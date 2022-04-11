`include "sel_2x1.v"

module sel_2x1_test ();
  reg a, b, sel;
  wire out;
  integer number1, number2;

  sel_2x1 UUT (a, b, sel, out);

  initial begin
    $display("| a | b | sel | out |");
    for (number1 = 0; number1 < 4; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 2; number2 = number2 + 1)
          begin
            {a, b} = number1;
            {sel} = number2;
            $monitor("| %b | %b |  %b  |  %b  |", a, b, sel, out);
            #10;
          end
      end
    $finish;
  end

endmodule // sel_2x1_test
