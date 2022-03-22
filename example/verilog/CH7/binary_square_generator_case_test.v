`timescale 1ns / 1ps

module binary_square_generator_case_test ();

reg [1:0] I;
wire [3:0] O;
integer i;

binary_square_generator_case UUT (.i(I), .o(O));

initial begin
  for (i = 0; i < 4; i = i + 1)
    begin
      I = i[1:0];
      #10;
    end

end

initial begin
  #40;
  $finish;
end

endmodule // binary_square_generator_case_test
