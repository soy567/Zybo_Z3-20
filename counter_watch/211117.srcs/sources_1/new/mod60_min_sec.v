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


module mod60_min_sec(
    input sys_clk, reset,
    output reg [3:0] seg_digit,
    output reg [6:0] seg_data
    );
    
    reg clk_1hz, clk_500hz;
    reg [16:0] cnt_digit;
    reg [25:0] clk_cnt;
    
    reg [3:0] num;
    reg [6:0] min;
    reg [6:0] sec;
    
    always @(posedge sys_clk, posedge reset) begin
        if (reset) begin
            clk_cnt <= 0; clk_1hz <= 0;
            cnt_digit <= 0; clk_500hz <= 0;
            num <= 0;
        end

        // else if (clk_cnt == 20000000) begin 
        else if (clk_cnt == 8) begin 
            clk_1hz <= ~clk_1hz;
            clk_cnt <= 0;
        end
        // else if(cnt_digit == 124999) begin
        else if(cnt_digit == 2) begin
            clk_500hz <= ~clk_500hz;
            cnt_digit <= 0;
        end
        else begin 
            clk_cnt <= clk_cnt + 1;
            cnt_digit <= cnt_digit + 1;
        end
    end

    always @(posedge clk_1hz, posedge reset) begin
        if (reset) begin sec <= 0; min <= 0; end
        else
            if (sec == 59) begin sec <= 0; min <= min + 1; end
            else if (min == 60) min <= 0;
            else sec <= sec + 1;
    end
    
    always @ (posedge clk_500hz, posedge reset) begin
        if (reset) seg_digit <= 4'b0001;
        else begin
            seg_digit = {seg_digit[2:0], seg_digit[3]}; // blocking, rotate
            if (seg_digit == 4'b0001) num = sec % 10; // blocking
            else if (seg_digit == 4'b0010) num = sec / 10; // blocking
            else if (seg_digit == 4'b0100) num = min % 10; // blocking
            else if (seg_digit == 4'b1000) num = min / 10; // blocking
       end
    end
    
    always @ (num) begin
        case (num)
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