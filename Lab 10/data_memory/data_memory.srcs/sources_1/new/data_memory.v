`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 10:30:26 AM
// Design Name: 
// Module Name: data_memory
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


module data_memory(clock , mem_write , address , read_data , write_data);
    input wire clock;
    input wire mem_write;
    input wire [31:0] address;
    output reg [31:0] read_data;
    input wire [31:0] write_data;  
    
    reg [7:0] memory [1023:0];
    
    always@(posedge clock)
    if(mem_write)
    begin
    memory[address] = write_data[7:0];
    memory[address + 1] = write_data[15:8];
    memory[address + 2] = write_data[23:16];
    memory[address + 3] = write_data[31:24];    
    end
    else
    begin
    read_data[7:0] = memory[address];
    read_data[15:8] = memory[address + 1];
    read_data[23:16] = memory[address + 2];
    read_data[31:24] = memory[address + 3];
    end
    
    initial begin
    memory[0] = 8'haa;
    memory[1] = 8'hbb;
    memory[2] = 8'hcc;
    memory[3] = 8'hdd;

    end


    
    /*always@(posedge clock)
    if (mem_write) 
    begin
        memory[address] = write_data;
    end
    else 
    begin
        read_data = memory[address];
    end*/
    
endmodule
