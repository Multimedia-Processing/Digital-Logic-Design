module dp_tb_top();
	
	reg clk, rst;
	
	always begin 
		#10;
		clk = ~clk;
	end
	
	initial begin 
		clk = 0;
		@(posedge clk);
		rst = 1;
		@(posedge clk);
		rst = 0;
	end
	
	wire        reg_write ;
	wire        mem2reg   ;
	wire        alu_src   ;
	wire        mem_write ;
	wire        mem_read  ;
	wire [3:0]  alu_cc    ;
	wire [6:0]  opcode    ;
	wire [6:0]  funct7    ;
	wire [2:0]  funct3    ; 
	wire [31:0] alu_result;
	
	data_path dp_inst(
		.clk(clk),
		.reset(rst),
		.reg_write(reg_write),
		.mem2reg(mem2reg),
		.alu_src(alu_src),
		.mem_write ( mem_write ),
		.mem_read ( mem_read ) ,
		.alu_cc ( alu_cc ) ,
		.opcode ( opcode ) ,
		.funct7 ( funct7 ) ,
		.funct3 ( funct3 ) ,
		. alu_result ( alu_result )
	);
	
	wire [6:0] R_TYPE, LW, SW, RTypeI;
	
	assign R_TYPE = 7'b0110011;
	assign LW     = 7'b0000011;
	assign SW     = 7'b0100011;
	assign RTypeI = 7'b0010011;
	
	assign alu_src = ( opcode == LW || opcode == SW || opcode == RTypeI );
	assign mem2reg = ( opcode == LW );
	assign reg_write = ( opcode == R_TYPE || opcode == LW || opcode == RTypeI );
	assign mem_read = ( opcode == LW );
	assign mem_write = ( opcode == SW );
	
	assign alu_cc = (( opcode == R_TYPE || opcode == RTypeI )
					&& ( funct7 == 7'b0000000 ) && ( funct3 == 3'b000 )) ? 4'b0010 :
					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct7 == 7'b0100000 )) ? 4'b0110 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct7 == 7'b0000000 ) && ( funct3 == 3'b100 )) ? 4'b1100 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct7 == 7'b0000000 ) && ( funct3 == 3'b110 )) ? 4'b0001 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct7 == 7'b0000000 ) && ( funct3 == 3'b111 )) ? 4'b0000 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct7 == 7'b0000000 ) && ( funct3 == 3'b010 )) ? 4'b0111 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct3 == 3'b100 )) ? 4'b1100 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct3 == 3'b110 )) ? 4'b0001 :
 					(( opcode == R_TYPE || opcode == RTypeI )
 					&& ( funct3 == 3'b010 )) ? 4'b0111 :
 					(( opcode == LW || opcode == SW)
 					&& ( funct3 == 3'b010 ))? 4'b0010 : 0;

	
	initial begin
		#420;
		$finish;
	end
endmodule

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	