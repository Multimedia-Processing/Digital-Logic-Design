`timescale 1ns / 1ps

module fulladder_test ();

reg a;
reg b;
reg c_in;

wire c_out, sum;

fulladder_if UUT (a, b, c_in, c_out, sum);

initial begin
  #100; {a, b, c_in} = 3'b001;
  #100; {a, b, c_in} = 3'b010;
  #100; {a, b, c_in} = 3'b011;
  #100; {a, b, c_in} = 3'b100;
  #100; {a, b, c_in} = 3'b101;
  #100; {a, b, c_in} = 3'b110;
  #100; {a, b, c_in} = 3'b111;

end

initial begin
  #900;
  $stop;
end

endmodule