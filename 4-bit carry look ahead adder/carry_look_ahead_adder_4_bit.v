`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2020 16:03:18
// Design Name: 
// Module Name: carry_look_ahead_adder_4_bit
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


module carry_look_ahead_adder_4_bit(A, B, cin, S, cout);
    	input [3:0] A, B;
	input cin;
	output [3:0] S;
	output cout;

	// p stands for propagate, g stands for generate, both are used to produce cout
	wire p0, p1, p2, p3, g0, g1, g2, g3, c1, c2, c3, c4;

	assign p0 = (A[0] ^ B[0]);
	assign p1 = (A[1] ^ B[1]);
	assign p2 = (A[2] ^ B[2]);
	assign p3 = (A[3] ^ B[3]);

	assign g0 = (A[0] & B[0]);
	assign g1 = (A[1] & B[1]);
	assign g2 = (A[2] & B[2]);
	assign g3 = (A[3] & B[3]);

	assign c1 = g0 | (p0 & cin);
	assign c2 = g1 | (p1 & g0) | (p1 & p0 & cin);
	assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin);
	assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & cin);

	assign S[0] = p0 ^ cin;
	assign S[1] = p1 ^ c1;
	assign S[2] = p2 ^ c2;
	assign S[3] = p3 ^ c3;

	assign cout = c4;
	
endmodule
// Extra: To create 16-bit adder using 4-bit CLAs
// Create overall propagate and generate signals for the 4-bit blocks
// You can have: 
// wire pout, gout;
// assign pout = p3 & p2 & p1 & p0;
// assign gout = g3 | (p3 & (g2 | (p2 & (g1 | (p1 & g0)))));
