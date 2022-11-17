`timescale 1ns / 1ps

module full_adder_case_test ();

reg a,b,ci;

wire s, co;

full_adder_case UUT (a, b, ci, s, co);

initial begin
  {a, b, ci} = 3'b000;
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
