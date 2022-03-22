`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    04/25/2020
// Module Name:    processor
// Project Name:   This processor links the datapath with the controller and 
//                 ALU Controller. 
//////////////////////////////////////////////////////////////////////////////////

module processor( clk, reset, Result  );

    input clk, reset;
    output [31:0] Result;
    
    wire reg_write, mem2reg, alu_src, mem_write, mem_read;
    wire [3:0] alu_cc;
    wire [6:0] opcode, funct7;
    wire [2:0] funct3;
    wire [1:0] alu_op;
    
    data_path dp1(  .clk(clk),
                    .reset(reset),
                    .reg_write(reg_write),
                    .mem2reg(mem2reg),
                    .alu_src(alu_src),
                    .mem_write(mem_write),
                    .mem_read(mem_read),
                    .alu_cc(alu_cc),
                    .opcode(opcode),
                    .funct3(funct3),
                    .funct7(funct7),
                    .alu_result(Result) );
                    
     Controller c1( .Opcode(opcode),
                    .ALUSrc(alu_src),
                    .MemtoReg(mem2reg),
                    .MemWrite(mem_write),
                    .MemRead(mem_read),
                    .RegWrite(reg_write),
                    .ALUOp(alu_op) );
                    
     ALUController ac1( .ALUOp(alu_op),
                        .Funct3(funct3),
                        .Funct7(funct7),
                        .Operation(alu_cc) );
endmodule
