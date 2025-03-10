`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2025 01:40:13 PM
// Design Name: 
// Module Name: mux_tb
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


module mux8x1_tb;

reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;                      
wire y,and0,and1,and2,and3,and4,and5,and6,and7,n_s0,n_s1,n_s2;                               


mux8x1 uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7),
            .s0(s0), .s1(s1), .s2(s2), .y(y) , .and0(and0) , .and1(and1) , .and2(and2),
            .and3(and3) , .and4(and4) , .and5(and5) , .and6(and6) , .and7(and7) ,
            .n_s0(n_s0) , .n_s1(n_s1) , .n_s2(n_s2));

initial begin
$monitor("Time = %0t | s2 = %b s1 = %b s0 = %b | y = %b", $time, s2, s1, s0, y);


i0 = 0; i1 = 1; i2 = 0; i3 = 1; 
i4 = 0; i5 = 1; i6 = 0; i7 = 1;

s2 = 0; s1 = 0; s0 = 0; #10
s2 = 0; s1 = 0; s0 = 1; #10;
s2 = 0; s1 = 1; s0 = 0; #10;
s2 = 0; s1 = 1; s0 = 1; #10;
s2 = 1; s1 = 0; s0 = 0; #10;
s2 = 1; s1 = 0; s0 = 1; #10;
s2 = 1; s1 = 1; s0 = 0; #10;
s2 = 1; s1 = 1; s0 = 1; #10;

$finish;
end

endmodule


