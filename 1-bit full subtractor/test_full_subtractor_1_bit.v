`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 12:56:18 PM
// Design Name: 
// Module Name: test_full_subtractor_1_bit
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


module test_full_subtractor_1_bit(
    
    );
    
    // Inputs (must be reg)
    reg A;
    reg B;
    reg borrow_in;
    
    // Outputs (must be wire, used as input for the next module)
    wire diff;
    wire borrow_out;
    
    // Instantiate Device Under Test (DUT, name must be the same as the design source it is simulating)
    full_subtractor_1_bit dut (A, B, borrow_in, diff, borrow_out);
    
    // Stimuli
    initial begin
        A = 0; B = 0; borrow_in = 0; #10;
        A = 0; B = 0; borrow_in = 1; #10;
        A = 0; B = 1; borrow_in = 0; #10;
        A = 0; B = 1; borrow_in = 1; #10;
        A = 1; B = 0; borrow_in = 0; #10;
        A = 1; B = 0; borrow_in = 1; #10;
        A = 1; B = 1; borrow_in = 0; #10;
        A = 1; B = 1; borrow_in = 1; #10;
    end
    
endmodule
