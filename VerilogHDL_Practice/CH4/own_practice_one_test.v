`timescale 1ns / 1ps

module own_practice_one_test ();

reg S = 1'b0;
reg A = 1'b1;
reg B = 1'b0;
wire Y;


own_practice_one UUT (.A(A), .B(B), .S(S), .Y(Y));

initial begin
  #100;
  S = 1'b0;
  A = 1'b0;
  B = 1'b1;

  #100;
  S = 1'b1;
  A = 1'b1;
  B = 1'b0;

  #100;
  S = 1'b1;
  A = 1'b0;
  B = 1'b1;

end

initial begin
  #400;
    $stop;
end

endmodule // own_practice_one_test
