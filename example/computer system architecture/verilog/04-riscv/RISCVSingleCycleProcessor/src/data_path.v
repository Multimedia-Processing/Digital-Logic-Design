`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    04/11/2020
// Module Name:    data_path
// Project Name:   This data_path will be executing the instuction code and will
//                 read and store the data into the data memory. 
//////////////////////////////////////////////////////////////////////////////////

module data_path #( 
    parameter PC_W = 8,         // Program Counter
    parameter IMS_W = 32,       // Instruction Width
    parameter RG_ADDRESS = 5,   // Register File Address
    parameter DATA_W = 32,      // Data Write Data
    parameter DM_ADDRESS = 9,   // Data Memory Address
    parameter ALU_CC_W = 4      // ALU Control Code Width
  )(
    // Initialize input, output signals
    input                clk,       // CLK in Datapath module
    input                reset,     // Reset in Datapath module
    input                reg_write, // RegWrite in Datapath module
    input                mem2reg,   // MemtoReg in Datapath module
    input                alu_src,   // ALUSrc in Datapath module
    input                mem_write, // MemWrite in Datapath module
    input                mem_read,  // MemRead in Datapath module
    input [ALU_CC_W-1:0] alu_cc,    // ALUCC in Datapath module
    output         [6:0] opcode,    // Opcode in Datapath
    output         [6:0] funct7,    // Funct7 in Datapath module
    output         [2:0] funct3,    // Funct3 in Datapath module
    output  wire [DATA_W-1:0] alu_result // ALU_Result in Datapath module
    );
    
    // Initialize wires
    wire             carry_out, zero, overflow;
    wire  [PC_W-1:0] n_pc_count, pc_count;
    wire [IMS_W-1:0] instr_code, wrt_data, alu_in1, alu_in2, rg_data, 
                     immit_value, mem_data;
    
    // The PC counter
    FlipFlop ff1( .clk(clk), 
                  .reset(reset), 
                  .d(n_pc_count), 
                  .q(pc_count));
    
    // Increment the pc counter          
    assign n_pc_count = pc_count + 8'h4;
    
    // The 64x32 Instruction Memory
    InstMem im1( .addr(pc_count),
                 .instruction(instr_code));
    
    // The 32x32 Register File
    RegFile rg1( .clk(clk),
                 .reset(reset),
                 .rg_wrt_en(reg_write),
                 .rg_rd_addr1(instr_code[19:19-RG_ADDRESS+1]),
                 .rg_rd_addr2(instr_code[24:24-RG_ADDRESS+1]),
                 .rg_wrt_addr(instr_code[11:11-RG_ADDRESS+1]),
                 .rg_wrt_data(wrt_data),
                 .rg_rd_data1(alu_in1),
                 .rg_rd_data2(rg_data) );
    
    // A mux to decide if the data from Register File or Immidiate value
    // will be the second input for the ALU             
    MUX21 mux1( .D1(rg_data),
                .D2(immit_value),
                .S(alu_src),
                .Y(alu_in2) );
    
    // Generate the Immidiate value
    ImmGen ig1( .InstCode(instr_code),
                .ImmOut(immit_value) );
       
    // RISC_V processor working on its ALU operation         
    alu_32 a1( .A_in(alu_in1),
               .B_in(alu_in2),
               .ALU_Sel(alu_cc),
               .ALU_Out(alu_result),
               .Carry_Out(carry_out),
               .Zero(zero),
               .Overflow(overflow) );
    
    // The 128x32 Data Memory           
    DataMem dm1( .MemWrite(mem_write),
                 .MemRead(mem_read),
                 .addr(alu_result[DM_ADDRESS-1:0]),
                 .write_data(rg_data),
                 .read_data(mem_data) );
    
    // A 2 to 1 mux that will decide whether the data from memory
    // or ALU will be written to the Register File             
    MUX21 mux2( .D1(alu_result),
                .D2(mem_data),
                .S(mem2reg),
                .Y(wrt_data) );
                
    // Assigning the outputs of the Datapath to part of the instruction code           
    assign opcode = instr_code[6:0];
    assign funct7 = instr_code[31:25];
    assign funct3 = instr_code[14:12];
    
endmodule
