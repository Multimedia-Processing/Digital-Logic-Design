`timescale 1ns / 1ps

//tests the RISC-V processor by comparing the test bench result to the
//processor's output. A correct processor outupt, gives a point.
//The testbench must give a total of 20 points to verify the processor.

module tb_processor( );

    // inputs
    reg clk; 
    reg rst; 

    // outputs
    wire [31:0] tb_Result; 

    processor processor_isnt(
        .clk(clk),
        .reset(rst),
        .Result(tb_Result)
    );

    always begin 
    #10; 
    clk = ~clk; 
    end

    initial begin
    clk  = 0; 
    @(posedge clk); 
        rst = 1; 
    @(posedge clk); 
        rst  = 0; 
    end

    integer point = 0; 

    always @ (*)
    begin 

        #20; 
        if (tb_Result == 32'h00000000) // and
        begin 
            point = point + 1; 
        end

        #20; 
        if (tb_Result == 32'h00000001) // addi
        begin 
            point = point + 1; 
        end

        #20
        if (tb_Result == 32'h00000002) // addi
        begin 
            point = point + 1; 
        end

        #20; 
        if (tb_Result == 32'h00000004) // addi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000005) // addi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000007) // addi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000008) // addi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h0000000b) // addi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000003) // add
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'hfffffffe) // sub
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000000) // add
        begin 
            point = point + 1; 
        end 
        
        #20; 
        if (tb_Result == 32'h00000005) // or
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h00000001) // SLT
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'hfffffff4) // NOR
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'h000004D2) // andi
        begin 
            point = point + 1; 
        end 

        #20; 
        if (tb_Result == 32'hfffff8D7) // ori
        begin 
            point = point + 1; 
        end
        
        #20; 
        if (tb_Result == 32'h00000001) // SLT
        begin 
            point = point + 1; 
        end
        
        #20; 
        if (tb_Result == 32'hfffffb2c) // nori
        begin 
            point = point + 1; 
        end
        
        #20; 
        if (tb_Result == 32'h00000030) // sw
        begin 
            point = point + 1; 
        end
        
        #20; 
        if (tb_Result == 32'h00000030) // lw
        begin 
            point = point + 1; 
        end

        $display("%s%d", "The number of correct test caese is:" , point); 

    end

    initial begin 
    #430;
    $finish; 
    
    end


endmodule
