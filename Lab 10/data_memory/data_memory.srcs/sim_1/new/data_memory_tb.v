`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 10:43:21 AM
// Design Name: 
// Module Name: data_memory_tb
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


module data_memory_tb();
    reg clock;
    reg mem_write;
    reg [31:0] address;
    wire [31:0] read_data;
    reg [31:0] write_data;  
    
data_memory uut(.clock(clock) , .mem_write(mem_write) , .address(address) , .read_data(read_data) , .write_data(write_data));

initial begin
    mem_write = 0; clock = 0; #10;
    address = 0; #10;
    
    mem_write = 1; write_data = 32'hdeadbeef; address = 4; #10;
    address = 4; mem_write = 0; #10;
    
$finish;
end

always #5 clock = ~clock;
endmodule
