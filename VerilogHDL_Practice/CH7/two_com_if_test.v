`timescale 1ns / 1ps

module two_com_if_test ();

reg [3:0]I = 4'b0000;
wire [3:0]O;
integer i;

two_com_if UUT (.i(I), .o(O));

initial begin
  for (i = 0; i < 16; i = i + 1)
    begin
      I = i[3:0];
      #10;
    end

end

initial begin
  #160;
  $finish;
end

endmodule // two_com_case_test
