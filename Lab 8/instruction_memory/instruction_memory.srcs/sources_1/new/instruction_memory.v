`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 11:56:06 AM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [4:0] pc,
    input reset,
    output [31:0] ins_code
    );
    
    reg [7:0] Memory [31:0];
    
    assign ins_code = {Memory[pc+3],Memory[pc+2],Memory[pc+1],Memory[pc]};
    
    always@(reset)
    begin
        if(reset == 1)
        begin
        Memory[3] = 8'h00;
        Memory[2] = 8'h94;
        Memory[1] = 8'h03;
        Memory[0] = 8'h33;

        Memory[7] = 8'h40;
        Memory[6] = 8'h94;
        Memory[5] = 8'h03;
        Memory[4] = 8'h33;
        
        Memory[11] = 8'h02;
        Memory[10] = 8'h94;
        Memory[9] = 8'h03;
        Memory[8] = 8'h33;
        
        Memory[15] = 8'h40;
        Memory[14] = 8'h94;
        Memory[13] = 8'h03;
        Memory[12] = 8'h33;
        end
        
    end   
endmodule
