`timescale 1ns / 1ps

module full_adder_case_test ();
reg A, B, Ci;
wire Co, S;

full_adder_case UUT (.A(A), .B(B), .Ci(Ci), .Co(Co), .S(S));

initial begin
  #100 A = 1'b0; B = 1'b0; Ci = 1'b0;
  #100 A = 1'b0; B = 1'b0; Ci = 1'b1;
  #100 A = 1'b0; B = 1'b1; Ci = 1'b0;
  #100 A = 1'b0; B = 1'b1; Ci = 1'b1;
  #100 A = 1'b1; B = 1'b0; Ci = 1'b0;
  #100 A = 1'b1; B = 1'b0; Ci = 1'b1;
  #100 A = 1'b1; B = 1'b1; Ci = 1'b0;
  #100 A = 1'b1; B = 1'b1; Ci = 1'b1;

end

initial begin
  #1100;
    $finish;

end

endmodule // full_adder_case_test
