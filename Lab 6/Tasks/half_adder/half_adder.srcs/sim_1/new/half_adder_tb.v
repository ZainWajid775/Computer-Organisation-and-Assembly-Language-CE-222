`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 11:47:08 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    reg a1,b1;
    wire sum1,carry1;
    
half_adder uut (.a(a1) , .b(b1) , .sum(sum1) , .carry(carry1));

initial
begin

$monitor("At time %0t : a1 = %b , b1 = %b , sum1 = %b , carry1 = %b" , $time,a1,b1,sum1,carry1);

a1 = 0; b1 = 0; #10;
a1 = 0; b1 = 1; #10;
a1 = 1; b1 = 0; #10;
a1 = 1; b1 = 1; #10;
$finish;
end
endmodule
