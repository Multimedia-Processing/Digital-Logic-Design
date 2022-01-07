module shift (d, x1, x2, x3, y1, y2, y3);
  input [3:0] d;
  output [3:0] mul1, mul2, mul3, div1, div2, div3;

  parameter b1 = 1;
  parameter b2 = 2;
  parameter b3 = 3;

  assign mul1 = d << b1;
  assign mul2 = d << b2;
  assign mul3 = d << b3;


endmodule // shift
