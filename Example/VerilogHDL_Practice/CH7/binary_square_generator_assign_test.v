`timescale 1ns / 1ps

module binary_square_generator_assign_test ();

reg i1;
reg i0;
wire o0, o1, o2, o3;
integer i;

binary_square_generator_assign UUT (.i0(i0), .i1(i1), .o0(o0), .o1(o1), .o2(o2), .o3(o3));

initial begin
  for (i = 0; i < 4; i = i + 1)
    begin
      {i1, i0} = i[1:0];
      #10;
    end

end

initial begin
  #40;
  $finish;
end

endmodule // binary_square_generator_assign_test
