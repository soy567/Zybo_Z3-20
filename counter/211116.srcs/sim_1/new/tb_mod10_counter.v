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


module tb_mod10_counter();
    parameter N=4;
    reg clk, reset;
    wire [N-1:0] q;
    
    mod10_counter u_mod10_counter(.clk (clk), .reset (reset), .q (q));
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0; reset = 1; #20;
        reset = 0;
    end    
       
endmodule
