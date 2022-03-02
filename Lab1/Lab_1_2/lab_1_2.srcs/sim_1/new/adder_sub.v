`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/27 18:41:21
// Design Name: 
// Module Name: adder_sub
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


module addig_sim();

reg [3:0]A, B;
reg OP;
wire [3:0]S;
wire C;
wire V;
integer i, j;

ripple_carry_adder_subtractor U0(.S(S),.C(C),.V(V),.A(A),.B(B),.OP(OP));

initial begin
    OP = 0;
    for (i=0, A=4'd0000; i<5'd16; i=i+1) begin       
        for (j=0, B = 4'd0000; j<5'd15; j=j+1) begin
            #2  B = B + 4'd0001;
        end
        #2  A = A + 4'd0001;
    end
    #2 OP = 1;
    A = 4'd0000;
     for (i=0; i<5'd16; i=i+1) begin
           for (j=0, B = 4'd0000; j<5'd15; j=j+1) begin
               #2  B = B + 4'd0001;
           end
           #2  A = A + 4'd0001; 
       end
    #2 $finish;
end

endmodule
