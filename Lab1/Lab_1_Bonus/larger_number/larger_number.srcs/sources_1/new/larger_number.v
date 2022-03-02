`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/02 21:32:11
// Design Name: 
// Module Name: larger_number
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


module larger_number(a,b,y);
input signed [2:0] a,b;
output reg [2:0] y;

assign gt=(a>b)?1:0;
always@*
if (gt)
 y=a;
else
 y=b;

endmodule
