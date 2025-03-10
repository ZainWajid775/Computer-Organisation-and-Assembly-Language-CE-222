`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 01:38:11 PM
// Design Name: 
// Module Name: mux
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


module mux8x1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y,n_s0,n_s1,n_s2,and0,and1,and2,and3,and4,and5,and6,and7);

input i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2;                    
output y,n_s0,n_s1,n_s2,and0,and1,and2,and3,and4,and5,and6,and7;

assign n_s0 = !s0;
assign n_s1 = !s1;
assign n_s2 = !s2;

assign and0 = n_s2&n_s1&n_s0&i0;
assign and1 = n_s2&n_s1&s0&i1;
assign and2 = n_s2&s1&n_s0&i2;
assign and3 = n_s2&s1&s0&i3;
assign and4 = s2&n_s1&n_s0&i4;
assign and5 = s2&n_s1&s0&i5;
assign and6 = s2&s1&n_s0&i6;
assign and7 = s2&s1&s0&i7;

assign y = and0|and1|and2|and3|and4|and5|and6|and7;

endmodule

    
