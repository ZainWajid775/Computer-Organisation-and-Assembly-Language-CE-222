`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 10:43:55 AM
// Design Name: 
// Module Name: pc
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


module pc(count,clock,reset);
    input wire clock;
    input wire reset;
    output reg [31:0] count;
      
    always@(posedge clock)
    if(reset) begin
    count <= 0;
    end 
    else begin
    count <= count + 4;
    end
    
endmodule
