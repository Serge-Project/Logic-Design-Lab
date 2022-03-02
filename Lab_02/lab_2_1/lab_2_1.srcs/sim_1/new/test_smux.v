`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/22 19:14:21
// Design Name: 
// Module Name: test_smux
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


module test_smux();
wire W;
wire X;
wire Y;
wire Z;
reg A, B, C, D;

smux UO(.a(A), .b(B), .c(C), .d(D), .w(W), .x(X), .y(Y), .z(Z));

initial
begin 

A=0;B=0;C=0;D=0;
#10 A=0;B=0;C=0;D=1;
#10 A=0;B=0;C=1;D=0;
#10 A=0;B=0;C=1;D=1;
#10 A=0;B=1;C=0;D=0;
#10 A=0;B=1;C=0;D=1;
#10 A=0;B=1;C=1;D=0;
#10 A=0;B=1;C=1;D=1;
#10 A=1;B=0;C=0;D=0;
#10 A=1;B=0;C=0;D=1;
#10 A=1;B=0;C=1;D=0;
#10 A=1;B=0;C=1;D=1;
#10 A=1;B=1;C=0;D=0;
#10 A=1;B=1;C=0;D=1;
#10 A=1;B=1;C=1;D=0;
#10 A=1;B=1;C=1;D=1;
#10 A=0;B=0;C=0;D=0;

end

endmodule
