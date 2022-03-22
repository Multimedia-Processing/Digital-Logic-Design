module xor3(a, b, c, abc);
  input a, b, c;
  output abc;
  wire ab;
  xor(abc, a, b, c);

endmodule

module xor3test();
reg a, b, c;
wire abc;
integer conut;

xor3 g(a,b,c, abc);

initial begin
  {a, b, c} = 0;

  for (conut = 0; conut < 8; conut = conut + 1)
    begin
      {a, b, c} = conut[2:0];
      $monitor("%4dns monitor: a=%d b=%d c=%d a^b^c=%d", $stime, a, b, c, abc);
      #10;
    end
end

initial begin
  #80;
  $finish;
end
endmodule
