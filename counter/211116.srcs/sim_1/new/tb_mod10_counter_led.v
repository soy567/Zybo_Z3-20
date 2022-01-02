`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 13:24:59
// Design Name: 
// Module Name: tb_mod10_counter
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


module tb_mod10_counter_led();
    reg clk, reset;
    wire [3:0] count;
    wire [6:0] seg_data;
    
    mod10_counter_led u_mod10_counter_led(.clk (clk), .reset (reset),
        .count (count), .seg_data (seg_data));
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0; reset = 1; #20;
        reset = 0;
    end    
       
endmodule
