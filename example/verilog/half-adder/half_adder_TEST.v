`timescale 1ns / 1ps
`include "half_adder.v"

module half_adder_TEST();

reg a, b, ci;
wire half_adder_o ;

half_adder UUT(a, b, ci, out);

initial begin
a = 1'b0;
b = 1'b0;

#100;
a = 1'b0;
b = 1'b1;

#100;
a = 1'b1;
b = 1'b0;
  
#100;
a = 1'b1;
b = 1'b1;

end

initial begin
#400;
$stop;
end

endmodule