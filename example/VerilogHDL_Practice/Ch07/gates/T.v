
`timescale 1ns/1ps

module T;
    reg I1 = 1'b0;
    reg I0 = 1'b0;
    wire Not_0;
    wire Not_1;
    wire And_0;
    wire And_1;
    wire Nand_0;
    wire Nand_1;
    wire Or_0;
    wire Or_1;
    wire Nor_0;
    wire Nor_1;
    wire Xor_0;
    wire Xor_1;
    wire Xnor_0;
    wire Xnor_1;


    gates UUT (
        .I1(I1),
        .I0(I0),
        .Not_0(Not_0),
        .Not_1(Not_1),
        .And_0(And_0),
        .And_1(And_1),
        .Nand_0(Nand_0),
        .Nand_1(Nand_1),
        .Or_0(Or_0),
        .Or_1(Or_1),
        .Nor_0(Nor_0),
        .Nor_1(Nor_1),
        .Xor_0(Xor_0),
        .Xor_1(Xor_1),
        .Xnor_0(Xnor_0),
        .Xnor_1(Xnor_1));

    initial
    begin
      #500 // Final time:  500 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        I0 = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        I1 = 1'b1;
        I0 = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        I0 = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1000ns
        #700;
        I1 = 1'b0;
    end

endmodule

