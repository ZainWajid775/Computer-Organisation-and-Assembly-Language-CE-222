`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2025 11:03:34 AM
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
    reg [1:0] a , b;
    reg [1:0] op;
    wire [2:0] y;
    
alu uut (.a(a) , .b(b) , .op(op) , .y(y));
initial begin
    a = 01 ; b = 00 ; op = 00; #10
    a = 01 ; b = 00 ; op = 01; #10
    a = 01 ; b = 00 ; op = 10; #10
    a = 01 ; b = 00 ; op = 11; #10
    a = 11 ; b = 00 ; op = 11; #10

$finish;
end
endmodule
