`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 20:44:36
// Design Name: 
// Module Name: full_adder_1_bit
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


// 1-bit full adder
module full_adder_1_bit(A, B, cin, S, cout);
	input A, B, cin;
   	output S, cout;
   	assign S = (A ^ B) ^ cin;
   	assign cout = (A & B) | (B & cin) | (A & cin);
endmodule