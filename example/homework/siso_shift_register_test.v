`include "siso_shift_register.v"

module siso_shift_register_test ();
  reg clock;
  reg clear;
  reg in;
  wire out;

  siso_shift_register UUT (clock, clear, in, out);

  initial begin
    $display("| data | display  |");
    for (number = 0; number < 16; number = number + 1)
      begin
        data = number;
        $monitor("| %b | %b |", data, display);
        #10;
      end
    $finish;
  end

endmodule // siso_shift_register_test
