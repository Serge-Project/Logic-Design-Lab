`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/27 14:56:27
// Design Name: 
// Module Name: lab_1_2
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

module ripple_carry_adder_subtractor(S, C, V, A, B, OP);
   output [3:0] S;   // The 4-bit sum/difference.
   output 	C;   // The 1-bit carry/borrow status.
   output 	V;   // The 1-bit overflow status.
   input [3:0] 	A;   // The 4-bit augend/minuend.
   input [3:0] 	B;   // The 4-bit addend/subtrahend.
   input OP;  // The operation: 0 => Add, 1=>Subtract.
   
   wire 	C0; // The carry out bit of fa0, the carry in bit of fa1.
   wire 	C1; // The carry out bit of fa1, the carry in bit of fa2.
   wire 	C2; // The carry out bit of fa2, the carry in bit of fa3.
   wire 	C3; // The carry out bit of fa2, used to generate final carry/borrrow.
   
   wire 	B0; // The xor'd result of B[0] and OP
   wire 	B1; // The xor'd result of B[1] and OP
   wire 	B2; // The xor'd result of B[2] and OP
   wire 	B3; // The xor'd result of B[3] and OP
   
   xor(B0, B[0], OP);
   xor(B1, B[1], OP);
   xor(B2, B[2], OP);
   xor(B3, B[3], OP);
   xor(C, C3, OP);     // Carry = C3 for addition, Carry = not(C3) for subtraction.
   xor(V, C3, C2);    // If the two most significant carry output bits differ, then we have an overflow.
   
   full_adder fa0(S[0], C0, A[0], B0, OP);    // Least significant bit.
   full_adder fa1(S[1], C1, A[1], B1, C0);
   full_adder fa2(S[2], C2, A[2], B2, C1);
   full_adder fa3(S[3], C3, A[3], B3, C2);    // Most significant bit.
endmodule // ripple_carry_adder_subtractor

module full_adder(S, Cout, A, B, Cin);
   output S;
   output Cout;
   input  A;
   input  B;
   input  Cin;
   
   wire   w1;
   wire   w2;
   wire   w3;
   wire   w4;
   
   xor(w1, A, B);
   xor(S, Cin, w1);
   and(w2, A, B);   
   and(w3, A, Cin);
   and(w4, B, Cin);   
   or(Cout, w2, w3, w4);
endmodule // full_adder





