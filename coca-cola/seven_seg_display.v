`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2021 05:35:13 PM
// Design Name: 
// Module Name: seven_seg_display
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


module seven_seg_display(
    input clk,
    input slow_clk,
    output reg [3:0] an,
    output reg [6:0] seg
    );
    
    reg [100:0] counter;
    reg [17:0] fast_counter;
    
    always @(posedge clk)
    begin
    
        fast_counter <= fast_counter + 1;
        
        if (slow_clk)
        begin
            counter <= counter + 1;
        end
        
        case (counter % 13)
            4'b0: begin // XXXC
                an <= 4'b1110;
                seg <= 7'b1000110;  // C
                end
                
            4'b0001: begin // XXCO
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b1111;  // X
                    end
                    2'b01:
                    begin
                        an <= 4'b1111;  // X
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000110;  // C
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b1000000;  // O
                    end
                endcase
                end
                
            4'b0010: begin // XCOC
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b1111;  // X
                    end
                    2'b01:
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000110;  // C
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000000;  // O
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b1000110;  // C
                    end
                endcase
                end
                
            4'b0011: begin // COCA
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000110;  // C
                    end
                    2'b01:
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000000;  // O
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000110;  // C
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b0001000;  // A
                    end
                endcase
                end
                
            4'b0100: begin // OCA-
                case (fast_counter[17:16])
                    2'b00:
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000000;  // O
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000110;  // C
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b0001000;  // A
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b0111111;  // -
                    end
                endcase
                end
                
            4'b0101: begin // CA-C
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000110;  // C
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b0001000;  // A
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b0111111;  // -
                    end
                    2'b11:
                    begin
                        an <= 4'b1110;
                        seg <= 7'b1000110;  // C
                    end
                endcase
                end
                
            4'b0110: begin // A-CO
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b0001000;  // A
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b0111111;  // -
                    end
                    2'b10:
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000110;  // C
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b1000000;  // O
                    end
                endcase
                end
                
            4'b0111: begin // -COL
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b0111111;  // -
                    end
                    2'b01:
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000110;  // C
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000000;  // O
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b1000111;  // L
                    end
                endcase
                end
                
            4'b1000: begin // COLA
                case (fast_counter[17:16])
                    2'b00:
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000110;  // C
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000000;  // O
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b1000111;  // L
                    end
                    2'b11: 
                    begin
                        an <= 4'b1110;
                        seg <= 7'b0001000;  // A
                    end
                endcase
                end
                
            4'b1001: begin // OLAX
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000000;  // O
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b1000111;  // L
                    end
                    2'b10: 
                    begin
                        an <= 4'b1101;
                        seg <= 7'b0001000;  // A
                    end
                    2'b11:
                    begin
                        an <= 4'b1111;  // X
                    end
                endcase
                end
                
            4'b1010: begin // LAXX
                case (fast_counter[17:16])
                    2'b00: 
                    begin
                        an <= 4'b0111;
                        seg <= 7'b1000111;  // L
                    end
                    2'b01: 
                    begin
                        an <= 4'b1011;
                        seg <= 7'b0001000;  // A
                    end
                    2'b10:
                    begin
                        an <= 4'b1111;  // X
                    end
                    2'b11:
                    begin
                        an <= 4'b1111;  // X
                    end
                endcase
                end
                
            4'b1011: begin // AXXX
                an <= 4'b0111;
                seg <= 7'b0001000;  // A
                end
                
            4'b1100: begin // XXXX
                an <= 4'b1111;  // X
                counter <= 4'b0;
                end
                
        endcase

    end

endmodule
