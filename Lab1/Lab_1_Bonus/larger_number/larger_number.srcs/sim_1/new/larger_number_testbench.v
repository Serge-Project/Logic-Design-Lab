`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/02 21:34:17
// Design Name: 
// Module Name: larger_number_testbench
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


module larger_number_testbench();

reg [2:0] a1,b1;
wire [2:0] y1;

larger_number t1(.a(a1),.b(b1),.y(y1));

integer i,j;
initial
begin
for (i=0;i<8;i=i+1) 
      begin   
         a1=i; 
          for (j=0;j<8;j=j+1)
             begin
               b1=j;
               #10;
             end;     
      end   
end
endmodule
