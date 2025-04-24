`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 11:57:54 AM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
    reg [2:0] opcode;
    reg [31:0] rs1;
    reg [31:0] rs2;
    wire zero_flag;
    wire [31:0] result;
    
alu uut(.opcode(opcode) , .rs1(rs1) , .rs2(rs2) , .zero_flag(zero_flag) , .result(result));

initial begin
    rs1 = 0; rs2 = 0; opcode = 0;#10;
    rs1 = 32'hBBBBBBBB; rs2 = 32'hAAAAAAAA; opcode = 1;#10;
    opcode = 2; #10;
    opcode = 3; #10;
    opcode = 4; #10;
    
    
$finish;
end
endmodule
