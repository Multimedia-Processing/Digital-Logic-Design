`timescale 1ns / 1ps

module and_gate_test ();

reg a;
reg b;
wire c;

and_gate UUT(a, b, c);

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

endmodule // wire_and_or_test
