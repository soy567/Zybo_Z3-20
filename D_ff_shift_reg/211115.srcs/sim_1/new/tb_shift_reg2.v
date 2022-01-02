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


module tb_shift_reg2();

    parameter N = 4;
    
    reg clk, reset, sin;
    wire [N-1:0] q;
    
    shift_reg_2 u_shift_reg2 (
        .clk (clk), .reset (reset), .sin (sin), 
        .q (q) );
        
    initial begin
        clk = 0; sin = 1; reset = 1; 
        #100 reset = 0;
        #200 sin = 0;
        #200 sin = 1;
    end 
    
    always #50 clk = ~clk;

    
endmodule
