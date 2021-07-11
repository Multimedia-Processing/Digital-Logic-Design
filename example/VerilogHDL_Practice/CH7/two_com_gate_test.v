`timescale 1ns / 1ps

module two_com_gate_test ();

reg [3:0]I = 4'b0000;
wire [3:0]O;
integer i;

two_com_gate UUT (.I(I), .O(O));

initial begin
  for (i = 0; i < 16; i = i + 1)
    begin
      I = i;
      #10;
    end

end

initial begin
  #320;
  $finish;
end

endmodule // two_com_gate_test
