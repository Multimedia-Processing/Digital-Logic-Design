`timescale 1ns / 1ps
`include "full.v"

module full_test ();

reg a;
reg b;
reg ci;

wire out;

full UTT(a, b, ci)

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
endmodule