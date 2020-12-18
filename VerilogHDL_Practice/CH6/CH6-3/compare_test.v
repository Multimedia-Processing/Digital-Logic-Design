`timescale 1ns / 1ps

module compare_test ();
reg A, B = 0;
wire AgB, AeB, AlB;

compare UUT (.A(A), .B(B), .AgB(AgB), .AeB(AeB), .AlB(AlB));

initial begin
  #100 A = 1;
  #100 A = 0;
  #100 A = 1;
end

initial begin
  #200 B = 1;
end

initial begin
  #500;
    $finish;
end

endmodule // compare_test
