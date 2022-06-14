`include "siso_shift_register.v"

module siso_shift_register_test ();
  reg clock, clear, in;
  wire out;
  integer number;

  siso_shift_register UUT (clock, clear, in, out);

  initial begin
    $display("| clock | clear | in | out |");
    in = 1'b0;
    clock = 1'b1;
    clear = 1'b1;

    #5;
    clear = 1'b0;

    #10;

    for (number = 0; number < 5; number = number + 1) begin
      in  = 1;
      #20;
    end
    #20;
    clear = 1'b1;
    #20;
    clear = 1'b0;
    for (number = 0; number < 8; number = number + 1) begin
      in  = number;
      #20;
    end
    #20;
    $finish;
  end
  always begin
    #5;
    $monitor("|   %b   |   %b   | %b  |  %b  |", clock, clear, in, out);

    #5;
    clock = ~clock;
  end

endmodule // siso_shift_register_test
