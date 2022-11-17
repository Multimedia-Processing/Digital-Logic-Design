`timescale 1ns / 1ps
`include "full_adder_one.v"

module full_adder_one_test ();

reg a = 1'b0;
reg b = 1'b0;
reg ci = 1'b0;

wire co, s;

full_adder_one UUT (a, b, ci, co, s);

initial begin
  #100; {a, b, ci} = 3'b001;
  #100; {a, b, ci} = 3'b010;
  #100; {a, b, ci} = 3'b011;
  #100; {a, b, ci} = 3'b100;
  #100; {a, b, ci} = 3'b101;
  #100; {a, b, ci} = 3'b110;
  #100; {a, b, ci} = 3'b111;

end

initial begin
  #900;
  $stop;
end

endmodule // full_add_one_test
