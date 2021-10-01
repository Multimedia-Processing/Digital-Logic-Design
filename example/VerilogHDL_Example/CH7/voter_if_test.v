module voter_if_test ();
  reg [3:0] i;
  wire [2:0] o;
  integer conut;

  voter_if UUT (.i(i), .o(o));

  initial begin
    for (conut = 0; conut < 16; conut = conut + 1)
      begin
        i = conut[3:0];
        #10;
      end
    $finish;
  end

endmodule // voter_if_test
