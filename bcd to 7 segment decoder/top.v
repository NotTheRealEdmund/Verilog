`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2021 06:02:23 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    //input [15:0] sw,
    output [3:0] an,
    output [6:0] seg
    );
    
    reg [15:0] data = 16'b1111101011001110;  // Every 4 bits will be displayed in one of the seven segments as a value from 0-F
                                             // For alphabets, there can be A, b, C, d, E, F
                                             // For example this will display FACE
                                             // You can also take in logic from flip switches
                                             // Uncomment line 25, comment line 37, uncomment line 38
                                             // Remember to include/uncomment the switches in the constraints file
    
    binary_to_seven_segment dut1 (clk, data, an, seg);
    //binary_to_seven_segment dut1 (clk, sw, an, seg);
    
endmodule
