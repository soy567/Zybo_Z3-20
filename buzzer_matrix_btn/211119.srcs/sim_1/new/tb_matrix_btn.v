`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 13:37:18
// Design Name: 
// Module Name: tb_matrix_btn
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


module tb_matrix_btn();
    reg clk, reset;
    reg [3:0] col;
    wire [3:0] row;
    wire [3:0] led_out;
    
    matrix_btn u_matrix_btn (.clk (clk), .reset (reset), 
    .col (col), .row (row), .led_out (led_out));
    
    always #50 clk = ~clk;
    always #50 col = {col[2:0], col[3]};
    
    initial begin
        reset = 1; clk = 0; col = 1;
        #100 reset = 0;
    end
    
endmodule
