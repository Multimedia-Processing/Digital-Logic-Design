`timescale 1ns / 1ps

module casezx_one_test ();
reg d3, d2, d1, d0;
wire q1, q0;

casezx_one UUT (.d3(d3), .d2(d2), .d1(d1), .d0(d0), .q1(q1), .q0(q0));

initial begin
  d3 = 0; d2 = 0; d1 = 0; d0 = 0;
  #100 d3 = 1; d2 = 0; d1 = 0; d0 = 0;
  #100 d3 = 0; d2 = 1; d1 = 0; d0 = 0;
  #100 d3 = 0; d2 = 0; d1 = 1; d0 = 0;
  #100 d3 = 0; d2 = 0; d1 = 0; d0 = 1;
  #100 d3 = 1; d2 = 1; d1 = 1; d0 = 1;

  // 測試don't care
  #100 d3 = 1; d2 = 0; d1 = 0; d0 = 0;
  #100 d3 = 1; d2 = 0; d1 = 1; d0 = 0;
  #100 d3 = 0; d2 = 0; d1 = 1; d0 = 0;
  #100 d3 = 0; d2 = 1; d1 = 1; d0 = 1;
end

initial begin
  #1000;
    $finish;

end

endmodule // casezx_one_test.v
