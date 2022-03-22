`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineers:      Allan Montalvo, Lenin Munoz, Omar Aquino Pineda
// 
// Create Date:    03/29/2020
// Module Name:    RegFile
// Project Name:   This 32x32 Register File will contain the data being being 
//                 store into these registers.
//////////////////////////////////////////////////////////////////////////////////

module RegFile(clk, reset, rg_wrt_en, rg_rd_addr1, rg_rd_addr2, 
                rg_wrt_addr, rg_wrt_data, rg_rd_data1, rg_rd_data2 );
                
    // Define input, output, and register
    input         clk, reset, rg_wrt_en;
    input  [ 4:0] rg_rd_addr1, rg_rd_addr2, rg_wrt_addr;
    input  [31:0] rg_wrt_data;
    output [31:0] rg_rd_data1, rg_rd_data2;
    
    reg [31:0] reg16 [31:0];
    
    integer i;
    
    // always block to reset the 32 registers to 0 and if write enable is 
    // active then will write the data into the register.
    always@(posedge clk, posedge reset) begin
        if(reset) begin
            for(i=0; i<32; i= i+1) 
                reg16[i] = 32'b0;
        end
        else
            if(rg_wrt_en)
                reg16[rg_wrt_addr] <= rg_wrt_data;
    end

    // Read the desire register
    assign rg_rd_data1 = reg16[rg_rd_addr1];
    assign rg_rd_data2 = reg16[rg_rd_addr2];
    
endmodule
