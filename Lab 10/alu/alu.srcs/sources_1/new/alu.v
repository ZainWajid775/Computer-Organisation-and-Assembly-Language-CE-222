`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 11:46:17 AM
// Design Name: 
// Module Name: alu
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


module alu(opcode , zero_flag , result , rs1  ,rs2);
    input wire [2:0] opcode;
    input wire [31:0] rs1;
    input wire [31:0] rs2;
    output reg zero_flag;
    output reg [31:0] result;
    
    always@(*)
    begin
    case(opcode)
        3'b000:  assign result = rs2 & rs1;
        3'b001:  assign result = rs2 | rs1;
        3'b010:  assign result = rs2 + rs1;
        3'b011:  assign result = rs2 - rs1;
        3'b100:  assign result = rs2 == rs1;
        default : assign result = 1;
    endcase
    
    if(result == 0)
    begin
    zero_flag = 1;
    end
    else
    begin
    zero_flag = 0;
    end
    
    end
endmodule
