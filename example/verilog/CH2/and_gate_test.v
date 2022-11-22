`timescale 1ns / 1ps

module and_gate_test();

reg a = 1'b0;
reg b = 1'b0;
wire c;

and_gate UTT(a, b, c);

initial begin
    a = 1'b0;
    b = 1'b0;

    #100;
    a = 1'b0;
    b = 1'b1;

    #100;
    a = 1'b1;
    b = 1'b0;

    #100;
    a = 1'b1;
    b = 1'b1;

end

initial begin
    #400;
    $stop;
end

endmodule