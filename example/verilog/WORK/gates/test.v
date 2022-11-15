`timescale 1ns / 1ps

module test();

reg A;
reg B;
wire and_o,or_o,xor_o,xnor_o,nand_o,nor_o,not_A_o,not_B_o,buf_A_o,buf_B_o;

and_gate UUT(A,B,and_o);
or_gate UUT(A,B,or_o);
xor_gate UUT(A,B,xor_o);
xnor_gate UUT(A,B,xnor_o);
nand_gate UUT(A,B,nand_o);
nor_gate UUT(A,B,nor_o);
not_gate UUT(A,not_A_o);
not_gate UUT(B,not_B_o);
buf_gate UUT(A,buf_A_o);
buf_gate UUT(B,buf_B_o);

initial begin
  A = 1'b0;
  B = 1'b0;

  #100;
  A = 1'b0;
  B = 1'b1;

  #100;
  A = 1'b1;
  B = 1'b0;

  #100;
  A = 1'b1;
  B = 1'b1;

end

initial begin
  #400;
  $stop;
end

endmodule 