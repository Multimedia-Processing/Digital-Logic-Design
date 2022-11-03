`timescale 1ns / 1ps

module TEST ();

reg a;
reg b;
wire AND_GATE_O,OR_GATE_O,XOR_GATE_O,XNOR_GATE_O,NAND_GATE_O,NOR_GATE_O,NOT_GATE_A_O,NOT_GATE_B_O,BUF_GATE_A_O,BUF_GATE_B_O;

AND_GATE UUT(AND_GATE_O, a, b);
OR_GATE  UUT(OR_GATE_O, a, b);
XOR_GATE UUT(XOR_GATE_O, a, b);
XNOR_GATE UUT(XNOR_GATE_O, a, b);
NAND_GATE UUT(NAND_GATE_O, a, b);
NOR_GATE UUT(NOR_GATE_O, a, b);
NOT_GATE UUT(NOT_GATE_A_O, a);
NOT_GATE UUT(NOT_GATE_B_O, b);
BUF_GATE UUT(BUF_GATE_A_O, a);
BUF_GATE UUT(BUF_GATE_B_O, b);

initial begin
  a = 1'b0;
  b = 1'b0;

  #100;
  a = 1'b0;
  b = 1'b1;

  #100;
  a = 1'b1;
  b = 1'b0;

  #100;
  a = 1'b1;
  b = 1'b1;

end

initial begin
  #400;
  $stop;
end

endmodule 
