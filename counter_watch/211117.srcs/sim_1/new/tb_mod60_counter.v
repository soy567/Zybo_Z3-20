`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/17 11:49:20
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


module tb_mod60_counter();
    reg sys_clk, reset;
    wire [6:0] seg_data;
    wire [1:0] seg_digit;
    
    mod60_counter u_mod60_counter(.sys_clk (sys_clk), .reset (reset),
        .seg_digit (seg_digit), .seg_data (seg_data));
    
    always #4 sys_clk = ~sys_clk;
    
    initial begin
        sys_clk = 0; reset = 1; #20;
        reset = 0;
    end    
       
endmodule
