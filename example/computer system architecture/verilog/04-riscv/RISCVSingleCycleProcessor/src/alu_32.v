module alu_32( input  [31:0] A_in, 
			   input  [31:0] B_in, 
			   input  [3:0] ALU_Sel, 
			   output [31:0] ALU_Out, 
			   output reg Carry_Out, 
			   output Zero, 
			   output reg Overflow = 1'b0 );
			   
	reg [31:0] ALU_Result; 
	reg [32:0] temp; 
	reg [32:0] twos_com;
	
	assign ALU_Out = ALU_Result;
	assign Zero    = ( ALU_Result == 0 );
	
	always @(*) begin 
		Overflow  = 1'b0;
		Carry_Out = 1'b0;
		
		case(ALU_Sel)
			4'b0000: //and
				ALU_Result = A_in & B_in;
			
			4'b0001: //or
				ALU_Result = A_in | B_in;
			
			4'b0010: begin 
				ALU_Result = $signed(A_in) + $signed(B_in);
				temp = { 1'b0 , A_in } + { 1'b0 , B_in };
				Carry_Out = temp[32];
				if ( (A_in[31] & B_in[31] & ~ALU_Out[31]) |
					 (~A_in[31] & ~B_in[31] & ALU_Out[31] ))
					 Overflow = 1'b1;
				else 
					Overflow = 1'b0;
			end 
			
			4'b0110: begin //Signed Subtraction with Overflow checking
				ALU_Result = $signed(A_in) - $signed(B_in); 
				twos_com   = ~(B_in) + 1'b1;
				
				if( (A_in[31] & twos_com[31] & ~ALU_Out[31]) |
					(~A_in[31] & ~twos_com[31] & ALU_Out[31]) )
					Overflow = 1'b1;
				else 
					Overflow = 1'b0; 
			
			end
			
			4'b0111: //Signed less than or equal comparison
				ALU_Result = ($signed(A_in) < $signed(B_in))?32'd1:32'd0;
			
			4'b1100: //nor
				ALU_Result = ~(A_in | B_in);
			
			4'b1111: //Comparison
				ALU_Result = ( A_in == B_in )?32'd1:32'd0;
			
			default: ALU_Result = A_in + B_in;
		endcase
	end
endmodule	
			