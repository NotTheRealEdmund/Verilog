`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2020 21:19:36
// Design Name: 
// Module Name: seven_segment
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


// Count one 7-segment from 0 to 9 repeatedly
module seven_segment(
    input clk,
    output reg [6:0] seg,
	output [3:0] an
    );
	
    reg [26:0] fast_count;
    reg [3:0] counter;
    
    assign an = 4'b1110;        // always only show the right most 7-segment 
    
    always @(posedge clk) begin
        fast_count <= fast_count + 1;
        
        if (fast_count == 26'h3FFFFFF)
			counter <= counter + 1;

        if (counter > 9)
			counter <= 0;
	
        case (counter)
            0 : seg <= 7'b1000000;
            1 : seg <= 7'b1111001;
            2 : seg <= 7'b0100100;
            3 : seg <= 7'b0110000;
            4 : seg <= 7'b0011001;
            5 : seg <= 7'b0010010;
            6 : seg <= 7'b0000010;
            7 : seg <= 7'b1111000;
            8 : seg <= 7'b0000000;
            9 : seg <= 7'b0010000;
            default : seg <= 7'b1111111;
        endcase
    end
       
endmodule
