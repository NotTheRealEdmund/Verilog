`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 21:03:36
// Design Name: 
// Module Name: ripple_carry_adder_4_bit
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


// Top module, 4-bit full adder
module ripple_carry_adder_4_bit(A, B, cin, S, cout);
   // Input output port declarations
   input [3:0] A, B;
   input cin;
   output [3:0] S;
   output cout;

   // Intermediate variables
   wire c1, c2, c3;

   // Instantiate four 1-bit full adders
   full_adder_1_bit f0 (A[0], B[0], cin, S[0], c1);
   full_adder_1_bit f1 (A[1], B[1], c1, S[1], c2);
   full_adder_1_bit f2 (A[2], B[2], c2, S[2], c3);
   full_adder_1_bit f3 (A[3], B[3], c3, S[3], cout);
endmodule

// 1-bit full adder
module full_adder_1_bit(A, B, cin, S, cout);
   input A, B, cin;
   output S, cout;
   assign S = (A ^ B) ^ cin;
   assign cout = (A & B) | (B & cin) | (A & cin);
endmodule