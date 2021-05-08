`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2021 06:03:10 PM
// Design Name: 
// Module Name: binary_to_seven_segment
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


module binary_to_seven_segment(
    input clk,
    input [15:0] data,
    output reg [3:0] an,
    output reg [6:0] seg
    );
    
    reg [3:0] cathode_display;
    reg [17:0] fast_counter;
    
    always @(posedge clk) begin
        fast_counter <= fast_counter + 1;
         
        // Split up the 16-bit data into 4 bits to each 7-segment unit                         
        case (fast_counter[17:16])
            2'b00: begin
                cathode_display = data[3:0];
                an <= 4'b1110;
                end
            2'b01: begin
                cathode_display = data[7:4];
                an <= 4'b1101;
                end
            2'b10: begin
                cathode_display = data[11:8];
                an <= 4'b1011;
                end
            2'b11: begin
                cathode_display = data[15:12];
                an <= 4'b0111;
                end
        endcase
    
        // Depending on every 4 bits of the data, change the value displayed
        case (cathode_display)
            4'h0: seg = 7'b1000000;
            4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100;
            4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001;
            4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010;
            4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000;
            4'h9: seg = 7'b0010000;
            4'hA: seg = 7'b0001000;
            4'hB: seg = 7'b0000011;
            4'hC: seg = 7'b1000110;
            4'hD: seg = 7'b0100001;
            4'hE: seg = 7'b0000110;
            4'hF: seg = 7'b0001110;
        endcase
    end
endmodule
