`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 05:24:10 PM
// Design Name: 
// Module Name: slow_clk_gen
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


module slow_clk_gen(
    input clk,
    output slow_clk
    );
    
    reg [23:0] counter;
    
    always @(posedge clk) 
    begin
        counter <= counter + 1;
    end
    
    assign slow_clk = (counter == 24'b1) ? ~slow_clk : slow_clk;
    
endmodule
