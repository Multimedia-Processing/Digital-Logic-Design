`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    03/30/2020
// Module Name:    MUX21
// Project Name:   This 2-to-1 Mux will decide which data will be pass through
//////////////////////////////////////////////////////////////////////////////////

module MUX21(D1, D2, S, Y );

    // Initialize input and output
    input         S;
    input  [31:0] D1, D2;
    output [31:0] Y;
    
    // If S is active then Y will get D2 else Y will get D1
    assign Y = S ? D2:D1;
    
endmodule
