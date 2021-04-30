`timescale 1ns / 1ps

module gates_test ();

reg I0, I1;
wire NOT_0, NOT_1, AND_0, AND_1, NAND_0, NAND_1, OR_0, OR_1, NOR_0, NOR_1;
wire XOR_0, XOR_1, XNOR_0, XNOR_1;
integer i;

gates UUT (.I1(I1), .I0(I0), .NOT_0(NOT_0), .NOT_1(NOT_1), .AND_0(AND_0), .AND_1(AND_1), .NAND_0(NAND_0), .NAND_1(NAND_1), .OR_0(OR_0), .OR_1(OR_1), .NOR_0(NOR_0), .NOR_1(NOR_1), .XOR_0(XOR_0), .XOR_1(XOR_1), .XNOR_0(XNOR_0), .XNOR_1(XNOR_1));

initial begin
  for (i = 0; i < 4; i = i + 1)
    begin
      {I1, I0} = i[1:0];
      #10;
    end
end

initial begin
  #40;
  $finish;
end

endmodule // gates_test
