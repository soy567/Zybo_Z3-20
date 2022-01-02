`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 14:40:11
// Design Name: 
// Module Name: mod10_counter_led
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


module mod10_counter_led(
    input clk, 
    input reset,
    output reg [3:0] count, 
    output reg [6:0] seg_data
    );
    
    always @(posedge clk, posedge reset) begin
        if (reset) count <= 0;
        else
            if (count == 9) count <= 0;
            else count <= count + 1;
    end
    
    always @ (count) begin
        case (count)
            0: seg_data = 7'b000_0001;
            1: seg_data = 7'b100_1111;
            2: seg_data = 7'b001_0010;
            3: seg_data = 7'b000_0110;
            4: seg_data = 7'b100_1100;
            5: seg_data = 7'b010_0100;
            6: seg_data = 7'b010_0000;
            7: seg_data = 7'b000_1111;
            8: seg_data = 7'b000_0000;
            9: seg_data = 7'b000_0100;
            default: seg_data = 7'b111_1111;
        endcase
    end
    
endmodule
