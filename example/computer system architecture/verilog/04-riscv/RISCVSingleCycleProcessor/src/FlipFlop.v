`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    03/29/2020
// Module Name:    FlipFlop
// Project Name:   This FlipFlop will copy data from d into q and will output q.
//////////////////////////////////////////////////////////////////////////////////

module FlipFlop(clk, reset, d, q );

    // input, output, and register initialization
    input        clk, reset;
    input  [7:0] d;
    output [7:0] q;
    
    reg    [7:0] q;
    
    // On the posedge of the clk, if reset q will get 0 for a synchronous reset
    // else q will get the input of d.
    always@(posedge clk) begin
        if(reset)
            q <= 8'b0;
        else
            q <= d;
    end
    
endmodule
