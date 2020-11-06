`timescale 1ns / 1ps

module full_adder_one_test ();

reg A = 1'b0;
reg B = 1'b0;
reg Ci = 1'b0;
wire Co, S;

full_adder_one UUT (.A(A), .B(B), .Ci(Ci), .Co(Co), .S(S));

initial begin
  A = 1'b0; B = 1'b0; Ci = 1'b0;
  #100; A = 1'b0; B = 1'b0; Ci = 1'b1;
  #100; A = 1'b0; B = 1'b1; Ci = 1'b0;
  #100; A = 1'b0; B = 1'b1; Ci = 1'b1;
  #100; A = 1'b1; B = 1'b0; Ci = 1'b0;
  #100; A = 1'b1; B = 1'b0; Ci = 1'b1;
  #100; A = 1'b1; B = 1'b1; Ci = 1'b0;
  #100; A = 1'b1; B = 1'b1; Ci = 1'b1;

end

initial begin
  #800;
    $stop;
end

endmodule // full_adder_one_test
