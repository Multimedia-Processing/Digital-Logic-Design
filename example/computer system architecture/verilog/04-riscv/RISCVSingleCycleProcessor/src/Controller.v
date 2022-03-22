`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    04/25/2020
// Module Name:    Controller
// Project Name:   This controller will determine the signals for the alu_src,
//                 memtoreg, regwrite, memread, memwrite, and alu_op based on 
//                 the opcode generated from the datapath
//////////////////////////////////////////////////////////////////////////////////

module Controller( Opcode, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, ALUOp );

    // define the input and output signals
    input [6:0] Opcode;
    output ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite;
    output [1:0] ALUOp;
    
    // define registers
    reg ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite;
    reg [1:0] ALUOp;
    
    // Define the Controller modules behavior
    always@(*)
        case(Opcode)         // Setting all signals based on the OPcode
            7'b0000011 : begin                  // Opcode for Load Word
                         MemtoReg = 1'b1;
                         MemWrite = 1'b0;
                         MemRead = 1'b1;
                         ALUSrc = 1'b1;
                         RegWrite = 1'b1;
                         ALUOp = 2'b01;
                         end
            7'b0100011 : begin                  // Opode for Store Word
                         MemtoReg = 1'b0;
                         MemWrite = 1'b1;
                         MemRead = 1'b0;
                         ALUSrc = 1'b1;
                         RegWrite = 1'b0;
                         ALUOp = 2'b01;
                         end 
            7'b0010011 : begin                  // Opcode for I-type Operation
                         MemtoReg = 1'b0;
                         MemWrite = 1'b0;
                         MemRead = 1'b0;
                         ALUSrc = 1'b1;
                         RegWrite = 1'b1;
                         ALUOp = 2'b00;
                         end
            7'b0110011 :begin                   // Opcode for R-type Operation
                         MemtoReg = 1'b0;
                         MemWrite = 1'b0;
                         MemRead = 1'b0;
                         ALUSrc = 1'b0;
                         RegWrite = 1'b1;
                         ALUOp = 2'b10;
                         end
            default    :begin                   // Set all signals to 0
                         MemtoReg = 1'b0;
                         MemWrite = 1'b0;
                         MemRead = 1'b0;
                         ALUSrc = 1'b0;
                         RegWrite = 1'b0;
                         ALUOp = 2'b00;
                         end
                         
        endcase
    
endmodule
