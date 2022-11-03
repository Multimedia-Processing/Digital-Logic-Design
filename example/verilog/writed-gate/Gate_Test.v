`timescale 1ns / 1ps

module Gate_TEST();

reg a;
reg b;
wire AND_o, OR_o, XOR_o, XNOR_o, NAND_o, NOR_o, NOT_a_o, NOT_b_o, BUF_a_o, BUF_b_o;

and_gate UUT(a, b, AND_o);
or_gate UUT(a, b, OR_o);
xor_gate UUT(a, b, XOR_o);
xnor_gate UUT(a, b, XNOR_o);
nand_gate UUT(a, b, NAND_o);
nor_gate UUT(a, b, NOR_o);
not_gate UUT(a, NOT_a_o);
not_gate UUT(b, NOT_b_o);
buf_gate UUT(a, BUF_a_o);
buf_gate UUT(b, BUF_b_o);


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
