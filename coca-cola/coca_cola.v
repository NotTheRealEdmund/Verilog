`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 04:13:13 PM
// Design Name: 
// Module Name: coca_cola
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


// Show the phrase "COCA-COLA" scrolling from right to left on seven-segment display as if on a vending machine
module coca_cola(
    input clk,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire slow_clk;
    
    slow_clk_gen dut1 (clk, slow_clk);
    seven_seg_display dut2 (clk, slow_clk, an, seg);
    
endmodule
