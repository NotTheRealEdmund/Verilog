`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 12:59:18 PM
// Design Name: 
// Module Name: test_full_adder_1_bit
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


module test_full_adder_1_bit(
    
    );
    
    // Inputs (must be reg)
    reg A;
    reg B;
    reg cin;
    
    // Outputs (must be wire, used as input for the next module)
    wire S;
    wire cout;
    
    // Instantiate Device Under Test (DUT, name must be the same as the design source it is simulating)
  full_adder_1_bit dut (A, B, cin, S, cout);
    
    // Stimuli
    initial begin
        A = 0; B = 0; cin = 0; #10;
        A = 0; B = 0; cin = 1; #10;
        A = 0; B = 1; cin = 0; #10;
        A = 0; B = 1; cin = 1; #10;
        A = 1; B = 0; cin = 0; #10;
        A = 1; B = 0; cin = 1; #10;
        A = 1; B = 1; cin = 0; #10;
        A = 1; B = 1; cin = 1; #10;
    end
    
endmodule
