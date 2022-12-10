`include "full_adder_one.v"

module full_adder_one_test ();

reg a, b, ci;

wire co, s;

full_adder_one UUT (a, b, ci, co, s);

initial begin

  $display("| a | b | ci | co | s|");
  #100; {a, b, ci} = 3'b000;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b001;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b010;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b011;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b100;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b101;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b110;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);
  #100; {a, b, ci} = 3'b111;
  $monitor("| %b | %b | %b | %b | %b |", a, b, ci, co, s);

end

initial begin
  #900;
  $finish;
end

endmodule // full_adder_one_test
