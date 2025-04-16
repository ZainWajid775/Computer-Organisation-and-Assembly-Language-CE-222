`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 10:35:06 AM
// Design Name: 
// Module Name: register_file
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


module register_file(
    input [4:0] read_reg_1,
    input [4:0] read_reg_2,
    input [4:0] write_reg,
    output reg [31:0] read_data_1,
    output reg [31:0] read_data_2,
    input [31:0] write_data,
    input RegWrite,
    input clock,
    input reset 
);

reg[31:0] register[31:0];

integer i = 0;

always@(posedge reset)
begin
    register[0] = 32'h00;
    register[1] = 32'h01;
    register[2] = 32'h02;
    register[3] = 32'h03;
    register[4] = 32'h04;
    register[5] = 32'h05;
    register[6] = 32'h06;
    register[7] = 32'h07;
    register[8] = 32'h08;
    register[9] = 32'h09;
    register[10] = 32'h10;
    register[11] = 32'h11;
    register[12] = 32'h12;
    register[13] = 32'h13;
    register[14] = 32'h14;
    register[15] = 32'h15;
    register[16] = 32'h16;
    register[17] = 32'h17;
    register[18] = 32'h18;
    register[19] = 32'h19;
    register[20] = 32'h20;
    register[21] = 32'h21;
    register[22] = 32'h22;
    register[23] = 32'h23;
    register[24] = 32'h24;
    register[25] = 32'h25;
    register[26] = 32'h26;
    register[27] = 32'h27;
    register[28] = 32'h28;
    register[29] = 32'h29;
    register[30] = 32'h30;
    register[31] = 32'h31;
end

always@(posedge clock)
begin
    if(RegWrite == 1) begin
        register[write_reg] = write_data; 
    end
end

always@(negedge clock)
begin
    read_data_1 = register[read_reg_1];
    read_data_2 = register[read_reg_2];
end


endmodule
