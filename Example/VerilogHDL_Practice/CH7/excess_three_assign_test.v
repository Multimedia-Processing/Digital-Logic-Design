`timescale 1ns / 1ps

module excess_three_assign_test ();

reg [2:0] i;
wire [2:0] o;
integer conut;

excess_three_assign UUT (.i(i), .o(o));

initial begin
  for (conut = 0; conut < 8; conut = conut + 1)
    begin
      i = conut[2:0];
      #10;
    end
end

initial begin
  #80;
  $finish;
end

endmodule // excess_three_assign_test
