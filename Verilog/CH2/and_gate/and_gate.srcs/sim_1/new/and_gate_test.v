`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/10/15 15:57:27
// Design Name:
// Module Name: and_gate_test
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module and_gate_test;
reg A = 1'b0;
reg B = 1'b0;
wire O;

and_gate UUT(.A(A), .B(B), .O(O));

initial
  begin
    #100;
      B = 1'b1;
    #100;
      A = 1'b1;
    #100;
      B = 1'b0;

  end

initial
  begin
    #400
      $stop;
  end

endmodule
