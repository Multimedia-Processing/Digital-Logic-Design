`timescale 1ns / 1ps

module full_adder_one_test ();

reg a,b,ci;

wire [1:0] out;

full_adder_one UUT (a, b, ci, out);

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
