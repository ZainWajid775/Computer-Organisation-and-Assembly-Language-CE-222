`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 02:30:19 PM
// Design Name: 
// Module Name: demux
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


module demux(i,y0,y1,y2,y3,s0,s1,n_s0,n_s1);
input i,s0,s1;
output y0,y1,y2,y3,n_s0,n_s1;

not(n_s0,s0);
not(n_s1,s1);

and(y0,i,n_s0,n_s1);
and(y1,i,s0,n_s1);
and(y2,i,n_s0,s1);
and(y3,i,s0,s1);

endmodule
