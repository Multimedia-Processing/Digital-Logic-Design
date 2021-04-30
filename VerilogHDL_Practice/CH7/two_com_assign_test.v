`timescale 1ns / 1ps

module two_com_assign_test ();

reg [3:0]i = 4'b0000;
wire [3:0]o;
integer x;

two_com_assign UUT (.i(i), .o(o));

initial begin
  for (x = 0; x < 16; x = x + 1)
    begin
      i = x;
      #10;
    end

end

initial begin
  #160;
  $finish;
end

endmodule // two_com_assign_test
