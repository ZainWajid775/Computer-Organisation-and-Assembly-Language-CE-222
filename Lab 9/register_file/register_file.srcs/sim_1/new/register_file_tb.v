`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 11:39:36 AM
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb();
    reg [4:0] read_reg_1;
    reg [4:0] read_reg_2;
    reg [4:0] write_reg;
    wire [31:0] read_data_1;
    wire [31:0] read_data_2;
    reg [31:0] write_data;
    reg RegWrite;
    reg clock;
    reg reset;
    
register_file uut ( .read_reg_1(read_reg_1) , .read_reg_2(read_reg_2) , .write_reg(write_reg) , .read_data_1(read_data_1) , .read_data_2(read_data_2) ,
                    .write_data(write_data) , .RegWrite(RegWrite) , .clock(clock) , .reset(reset));

initial
begin
    clock = 0; reset = 1; RegWrite = 0; #10;
    reset = 0; #10
    
    read_reg_1 = 0; read_reg_2 = 1; #10
    read_reg_1 = 2; read_reg_2 = 3; #10
    read_reg_1 = 4; read_reg_2 = 5; #10
    
    RegWrite = 1; write_reg = 1; write_data = 32'h99; #10;
    read_reg_1 = 1; read_reg_2 = 1; #10;

    
$finish;
end

always #5 clock = ~clock;

endmodule
