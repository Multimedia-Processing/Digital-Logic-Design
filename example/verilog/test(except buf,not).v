`timescale 1ns/1ps

module and_gate_test();

reg a;
reg b;
wire and_output,or_output,nor_output,xor_output,xnor_output,nand_output;

and_gate UUT(a, b, and_output);
or_gate UUT(a, b, or_output);
nor_gate UUT(a, b, nor_output);
xor_gate UUT(a, b, xor_output);
xnor_gate UUT(a, b, xnor_output);
nand_gate UUT(a, b, nand_output);
not_gate UUT(a, not_outputa);

initial begin
    a=1'b0;
    b=1'b0;

    #100;
    a=1'b0;
    b=1'b1;

    #100;
    a=1'b1;
    b=1'b0;

    #100;
    a=1'b1;
    b=1'b1;
end

initial begin
    #400;
    $stop;

end

endmodule
