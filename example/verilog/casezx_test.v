`timescale 1ns / 1ps

module casezx_test ();
  reg [2:0]a;
  wire [1:0] y, z;

casezx UUT (.a(a), .y(y), .z(z));

initial begin
  a = 0;
  #100 a = 1;
  #100 a = 2;
  #100 a = 3;
  #100 a = 4;
  #100 a = 5;
  #100 a = 6;
  #100 a = 7;
end

initial begin
  #900;
    $finish;

end

endmodule // casezx_test
