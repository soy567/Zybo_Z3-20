`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 10:28:38
// Design Name: 
// Module Name: tb_updown_counter
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


module tb_updown_counter();
    parameter N=4;
    reg clk, reset, u_dbar;
    wire [N-1:0] q;
    
    updown_counter u_updown_counter(.clk (clk), .reset (reset), 
        .u_dbar (u_dbar), .q (q));
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0; reset = 1; u_dbar = 1; #20;
        reset = 0; #160;
        u_dbar = 0; #16;
        reset = 1;
    end    
       
endmodule
