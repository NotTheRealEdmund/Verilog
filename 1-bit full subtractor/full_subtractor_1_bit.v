`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 01:06:39 AM
// Design Name: 
// Module Name: full_subtractor_1_bit
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


module full_subtractor_1_bit(
    input A, B, borrow_in,
	output diff, borrow_out
    );
    
    wire middle_diff;
    wire middle_borrow;
    wire final_borrow;
    
    // Note that the half subtractors are not the same, even in logic
    first_half_subtractor dut1 (A, B, middle_diff, middle_borrow);
    second_half_subtractor dut2 (borrow_in, middle_diff, diff, final_borrow);
    
    assign borrow_out = final_borrow | middle_borrow;
    
endmodule
