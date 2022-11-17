`timescale 1ns / 1ps

module wire_and_or_test ();

reg A = 1'b0;
reg B = 1'b0;
wire C, D, E;

wire_and_or UUT(.A(A), .B(B), .C(C), .D(D), .E(E));

initial begin
  A = 1'b0;
  B = 1'b0;

  #100;
  A = 1'b0;
  B = 1'b1;

  #100;
  A = 1'b1;
  B = 1'b0;

  #100;
  A = 1'b1;
  B = 1'b1;

end

initial begin
  #400;
  $stop;
end

endmodule // wire_and_or_test
