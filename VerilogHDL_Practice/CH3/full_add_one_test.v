module full_add_one_test ();
`timescale 1ns / 1ps

reg A = 0'b0;
reg B = 0'b0;
reg Ci = 0'b0;

wire Co, S;

full_add_one UUT (.A(A), .B(B), .Ci(Ci), .Co(Co), .S(S));

initial begin
  #100; A = 0'b0; B = 0'b0; Ci = 0'b1;
  #100; A = 0'b0; B = 0'b1; Ci = 0'b0;
  #100; A = 0'b0; B = 0'b1; Ci = 0'b1;
  #100; A = 0'b1; B = 0'b0; Ci = 0'b0;
  #100; A = 0'b1; B = 0'b0; Ci = 0'b1;
  #100; A = 0'b1; B = 0'b1; Ci = 0'b0;
  #100; A = 0'b1; B = 0'b1; Ci = 0'b1;

end

initial begin
  #900;
  $stop;

end

endmodule // full_add_one_test
