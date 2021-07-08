`timescale 1ns / 1ps

module own_practice_two_test ();

reg I0 = 1'b0;
reg I1 = 1'b0;
reg I2 = 1'b0;
reg I3 = 1'b0;
wire O0, O1, O2, O3;

own_practice_two UUT (
  .I0(I0), .I1(I1), .I2(I2), .I3(I3), .O0(O0), .O1(O1), .O2(O2), .O3(O3));

initial begin
  I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0;
  #100; I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0;
  #100; I0 = 1'b0; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0;
  #100; I0 = 1'b1; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0;
  #100; I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0;
  #100; I0 = 1'b1; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0;
  #100; I0 = 1'b0; I1 = 1'b1; I2 = 1'b1; I3 = 1'b0;
  #100; I0 = 1'b1; I1 = 1'b1; I2 = 1'b1; I3 = 1'b0;
  #100; I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b1;

end

initial begin
  #900;
    $finish;

end

endmodule // own_practice_two_test
