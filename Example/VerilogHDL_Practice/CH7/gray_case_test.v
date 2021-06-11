module gray_case_test ();
  reg [3:0] i;
  wire [3:0] o;
  integer conut;

  gray_case UUT (.i(i), .o(o));

  initial begin
    for (conut = 0; conut < 16; conut = conut + 1)
      begin
        i = conut[3:0];
        #10;
      end
    $finish;
  end

endmodule // gray_case_test
