`timescale 1ns / 1ps
`include "excess_three_case.v"

module excess_three_case_test ();

reg [2:0] i;
wire [2:0] o;
integer conut;

excess_three_case UUT (.i(i), .o(o));

initial begin
  for (conut = 0; conut < 8; conut = conut + 1)
    begin
      i = conut[2:0];
      $monitor("%4dns monitor: conut=%d i=%b o=%b", $stime, conut, i, o);

      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // excess_three_case_test
