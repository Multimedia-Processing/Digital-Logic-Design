`timescale 1ns / 1ps

module half_adder_case_test ();
reg A, B;
wire Co, S;

half_adder_case UUT (.A(A), .B(B), .Co(Co), .S(S));

initial begin
  #100 A = 1'b0; B = 1'b0;
  #100 A = 1'b0; B = 1'b1;
  #100 A = 1'b1; B = 1'b0;
  #100 A = 1'b1; B = 1'b1;
  #100 A = 1'b1; B = 1'b1;

end

initial begin
  #500;
    $finish;

end

endmodule // half_adder_case_test
