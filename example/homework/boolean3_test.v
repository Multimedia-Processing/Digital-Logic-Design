// f = a + b'cd' + a'bc'd

module boolean3_test ();

  reg [3:0] a;
  wire out, out1;
  f2 f1(out, a[3], a[2], a[1], a[0]);
  f2_not f2(out1, a[3], a[2], a[1], a[0]);

  initial begin
    a = 0;
    #80 $finish;
  end

  always begin
    #5; a = 0;
    #5; a = 1;
    #5; a = 2;
    #5; a = 3;
    #5; a = 4;
    #5; a = 5;
    #5; a = 6;
    #5; a = 7;
    #5; a = 8;
  end

endmodule // boolean3_test
