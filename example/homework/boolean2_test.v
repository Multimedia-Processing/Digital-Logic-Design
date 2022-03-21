// f = a'b'c' + abc'

module boolean2_test ();

  reg [3:0] a;
  wire out, out1;
  f2 f1(out, a[3], a[2], a[1], a[0]);
  f2_not f2(out1, a[3], a[2], a[1], a[0]);

  initial begin
    a = 0;
    #80 $finish;
  end

  always begin
    #5;
    a = a + 1;
  end

endmodule // boolean2_test
