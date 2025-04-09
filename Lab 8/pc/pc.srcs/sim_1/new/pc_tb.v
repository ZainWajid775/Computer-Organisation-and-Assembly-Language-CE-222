`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2025 11:02:04 AM
// Design Name: 
// Module Name: pc_tb
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


module pc_tb();
    reg clock;
    reg reset;
    wire [31:0] count;
  
pc uut(.clock(clock) , .reset(reset) , .count(count));

initial
begin
    clock = 0 ; reset = 1; #10;
    // Reset initially high to clear garbage value
    reset = 0 ; #200;
    // Then reset set to low
$finish;
end
// Clock is outside begin to keep running 
always #5 clock = ~clock;

endmodule
