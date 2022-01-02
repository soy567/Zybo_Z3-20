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


module tb_mod10_counter();
    reg sys_clk, reset;
    wire [3:0] count;
    wire [6:0] seg_data;
    
    mod10_counter u_mod10_counter(.sys_clk (sys_clk), .reset (reset),
        .count (count), .seg_data (seg_data));
    
    always #4 sys_clk = ~sys_clk;
    
    initial begin
        sys_clk = 0; reset = 1; #10;
        reset = 0;
    end    
       
endmodule
