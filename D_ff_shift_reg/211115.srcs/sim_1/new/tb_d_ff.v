`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/15 10:47:31
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff();
    reg clk, d;
    wire q;
    
    parameter clk_period = 10;
    
    d_ff u_d_ff (.clk (clk), .d (d), .q (q));
    
    always begin
        clk =1;
        forever #(clk_period / 2) clk = ~clk;
    end
    
    initial begin
        d = 1'b0; #3;
        d = 1'b1; #(clk_period*2);
        d = 1'b0; #(clk_period*3);
        d = 1'b1; #(clk_period*3);
        d = 1'b0; #(clk_period*3);
        d = 1'b1; #(clk_period*3);
    end
endmodule
