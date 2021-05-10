`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:20:36 PM
// Design Name: 
// Module Name: first_half_subtractor
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


module first_half_subtractor(
    input A, B,
	output diff, borrow_out
    );
    
    assign diff = A ^ B;
    assign borrow_out = ~A & B;
    
endmodule
