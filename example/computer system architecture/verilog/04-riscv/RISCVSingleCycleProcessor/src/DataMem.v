`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    04/11/2020
// Module Name:    DataMem
// Project Name:   This 128x32 Data Memory will store data from RISC-V processor
//                 or load data to the RISC-v processor.
//////////////////////////////////////////////////////////////////////////////////

module DataMem( MemRead, MemWrite, addr, write_data, read_data );

    // Initiliaze input, output, register, wire, integer
    input         MemRead, MemWrite;
    input  [ 8:0] addr;
    input  [31:0] write_data;
    output [31:0] read_data;
    
    reg  [31:0] memory [127:0];
    wire [31:0] read_data;
    integer i;
    
    // To initialize all 128 registers to zero
    initial begin
        for(i=0; i<128; i=i+1)begin
            memory[i] = 32'b0;
        end
    end
    
    // For any changes to occur if MemWrite is active then the desired memory register 
    // will get the data of write_data
    always@(*) begin            
        if(MemWrite)
            memory[addr] <= write_data;
    end
    
    // If MemRead signal is active then read_data will read the desired memory register
    // else read_data will get a zero
    assign read_data = MemRead ? memory[addr] : 32'b0;
         
endmodule
