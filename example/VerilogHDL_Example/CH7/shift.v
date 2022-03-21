module shift (d, mul1, mul2, mul3, div1, div2, div3);
  input [3:0] d;
  output [3:0] mul1, mul2, mul3, div1, div2, div3;

  parameter b1 = 1;
  parameter b2 = 2;
  parameter b3 = 3;

  assign mul1 = d << b1;
  assign mul2 = d << b2;
  assign mul3 = d << b3;
  assign div1 = (d >> b1);
  assign div2 = (d >> b2);
  assign div3 = (d >> b3);

endmodule // shift
