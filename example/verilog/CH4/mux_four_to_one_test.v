`timescale 1ns / 1ps


module mux_four_to_one_test ();

reg S1 = 1'b0;
reg S0 = 1'b0;
reg A = 1'b0;
reg B = 1'b0;
reg C = 1'b0;
reg D = 1'b0;
wire Y;


mux_four_to_one UUT (.A(A), .B(B), .C(C), .D(D), .S1(S1), .S0(S0), .Y(Y));

initial begin
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; S0 =1'b1; A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;

  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
  #1; S0 =1'b0; S1 =1'b1;A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;

  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
  #1; S0 =1'b1; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;

  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
  #1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
  #1; S0 =1'b0; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;

end

initial begin
  #30;
    $stop;
end

endmodule // mux_four_to_one_test
