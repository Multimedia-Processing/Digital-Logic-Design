`include "siso_shift_register.v"

module siso_shift_register_test ();
  reg clock, clear, in;
  wire out;
  integer number1, number2;

  siso_shift_register UUT (clock, clear, in, out);

  initial begin
    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #10;
    clear = 1'b0;

    #5;
    $display("| clock | clear | in | out |");

    for (number1 = 0; number1 < 2; number1 = number1 + 1) begin
      for (number2 = 0; number2 < 64; number2 = number2 + 1) begin
        clear = number1;
        in  = number2;
        $monitor("|   %b   |   %b   | %b  |  %b  |", clock, clear, in, out);
        #20;
      end
    end
    $finish;
  end
  always begin
    #10;
    clock = ~clock;
  end

endmodule // siso_shift_register_test
