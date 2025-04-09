`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 12:09:47 PM
// Design Name: 
// Module Name: instruction_memory_tb
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


module instruction_memory_tb();
    reg [4:0] pc;
    reg reset;
    wire [31:0] ins_code;
    
    instruction_memory uut(.pc(pc) , .reset(reset) , .ins_code(ins_code));
    
    initial begin
    reset = 0 ; #10;
    reset = 1 ;  
    pc = 0; #10;
    pc = 4; #10;
    pc = 8; #10;
    pc = 12; #10;
    
    $finish;
    end
    
    
    
endmodule
