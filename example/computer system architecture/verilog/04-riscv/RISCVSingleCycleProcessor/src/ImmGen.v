`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    03/30/2020
// Module Name:    ImmGen
// Project Name:   This Immidiate Generator will generate the immidiate value
//                 based on the intruction code.
//////////////////////////////////////////////////////////////////////////////////

module ImmGen( InstCode, ImmOut  );

    // Initialize input, output, register
    input [31:0] InstCode;
    output [31:0] ImmOut;
    
    reg [31:0] ImmOut;
    
    // always occur on InstCode
    always@(InstCode) begin
        // Case statement that will generate the immidiate value based on the intruction code
        case(InstCode[6:0])
            // Immidiate 
            7'b0000011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:20]};
            // Immidiate addition
            7'b0010011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:20]};
            // Immidiate 
            7'b0100011 : ImmOut = {InstCode[31] ? {20{1'b1}} : 20'b0, InstCode[31:25], InstCode[11:7]};
            // Immidiate
            7'b0010111 : ImmOut = {InstCode[31:12], 12'b0};
            default : ImmOut = 32'b0;
        endcase
    end 
    
endmodule
