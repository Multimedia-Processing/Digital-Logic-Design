module voter_if_master_test ();
  reg [3:0] i;
  reg m = 0;
  wire [2:0] o;
  integer conut;

  voter_if_master UUT (.i(i), .m(m), .o(o));

  initial begin
    for (conut = 0; conut < 16; conut = conut + 1)
      begin
        i = conut[3:0];
        m = 0;
        #10;
        m = 1;
        #10;
      end
    $finish;
  end

endmodule // voter_if_master_test
