module adder_one_if (a, b, ci, co, sum);
input a, b, ci;
output co, sum;
reg co, sum;


always @ ( a or b or ci ) begin
  if ({a, b, ci} == 0) begin
    {co, sum} = 2'b00;
  end else if ({a, b, ci} == 1) begin
    {co, sum} = 2'b01;
  end else if ({a, b, ci} == 2) begin
    {co, sum} = 2'b01;
  end else if ({a, b, ci} == 3) begin
    {co, sum} = 2'b11;
  end else if ({a, b, ci} == 4) begin
    {co, sum} = 2'b01;
  end else if ({a, b, ci} == 5) begin
    {co, sum} = 2'b10;
  end else if ({a, b, ci} == 6) begin
    {co, sum} = 2'b10;
  end else begin
    {co, sum} = 2'b11;
  end

end

endmodule // adder_one_if
