`timescale 1ns / 1ps

module casezx_two_test ();
reg [3:0] d;
wire [1:0] oz;

casezx_two UUT (.d(d), .oz(oz));

initial begin
  d = 0;
  #10 d = 1;
  #10 d = 2;
  #10 d = 3;
  #10 d = 4;
  #10 d = 5;
  #10 d = 6;
  #10 d = 7;
  #10 d = 8;
  #10 d = 9;
  #10 d = 10;
  #10 d = 11;
  #10 d = 12;
  #10 d = 13;
  #10 d = 14;
  #10 d = 15;
  #10 d = 16;
end

initial begin
  #180;
    $finish;

end

endmodule // casezx_one_test.v
