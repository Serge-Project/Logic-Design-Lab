`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/22 18:46:19
// Design Name: 
// Module Name: smux
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

module smux(
    input a,
    input b, 
    input c,
    input d,
    output w,
    output x,
    output y, 
    output z
    );
    
    assign w = a;
    assign x = (~a&b) | (a&~b);
    assign y =  (~b&c) | (b&~c);
    assign z =  (~c&d) | (c&~d);
    
endmodule