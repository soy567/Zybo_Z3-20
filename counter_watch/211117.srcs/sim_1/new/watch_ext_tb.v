`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 10:20:02
// Design Name: 
// Module Name: and2_tb
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


module watch_ext_tb();
    reg sys_clk, reset;
    wire [3:0] seg_digit;
    wire [6:0] seg_data;
    
    watch_ext u_watch_ext (
        .sys_clk (sys_clk), .reset (reset), 
        .seg_digit (seg_digit), .seg_data (seg_data) );
        
    initial begin
        sys_clk = 0; reset = 1; 
        #10 reset = 0;
    end
    
    always #4 sys_clk = ~sys_clk;
endmodule
