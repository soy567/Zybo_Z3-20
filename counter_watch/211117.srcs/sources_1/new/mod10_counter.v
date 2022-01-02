`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/17 13:20:15
// Design Name: 
// Module Name: mod10_counter
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


module mod10_counter(
    input sys_clk, reset,
    output reg [3:0] count, 
    output reg [6:0] seg_data
    );
    
    reg clk_1hz;
    reg [25:0] clk_cnt;
    
    always @(posedge sys_clk, posedge reset) begin
        if (reset) begin
            clk_cnt <= 0; clk_1hz <= 0;
        end
        // else if (clk_cnt == 62499999) begin // real 1hz
        else if (clk_cnt == 31249999) begin // 2hz
       //  else if (clk_cnt == 2) begin // simulation
            clk_1hz <= ~clk_1hz;
            clk_cnt <= 0;
        end
        else clk_cnt <= clk_cnt + 1;
    end
    
    always @(posedge clk_1hz, posedge reset) begin
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