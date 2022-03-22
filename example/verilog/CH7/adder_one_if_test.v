`timescale 1ns / 1ps

module adder_one_if_test ();
reg a, b, ci;
wire co, sum;
integer i;

adder_one_if UUT (.a(a), .b(b), .ci(ci), .co(co), .sum(sum));

initial begin
  for (i = 0; i < 8; i = i + 1)
    begin
      {a, b, ci} = i[2:0];
      #10;
    end
end

initial begin
  #80;
  $finish;
end


endmodule // adder_one_if_test
