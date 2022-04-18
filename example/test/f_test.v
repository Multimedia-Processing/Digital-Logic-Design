`include "f.v"

module f_test ();
  reg a, b, c, d;
  wire out;
  integer number;

  f UUT (a, b, c, d, out);

  initial begin
    for (number = 0; number < 16; number = number + 1)
      begin
        {a, b, c, d} = number[3:0];
        $monitor("| %b | %b | %b | %b | %b |", a, b, c, d, out);
        #10;
      end
    $finish;
  end

endmodule // f_test
