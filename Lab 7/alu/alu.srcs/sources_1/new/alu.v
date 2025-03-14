`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 10:48:54 AM
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


module alu(a,b,op,y);
    input [1:0] a , b;
    input [1:0] op;
    output reg[2:0] y;
    
    always@(*)
    begin
    case(op)
        2'b00 : y = a+b;
        2'b01 : y = a-b;
        2'b10 : y = a&b;
        2'b11 : y = a|b;
        default : y = 0;
    endcase
    end
endmodule
