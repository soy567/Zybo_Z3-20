`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 09:49:59
// Design Name: 
// Module Name: tb_buzzer
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


module tb_buzzer();
    reg clk;
    reg [4:0] btn;
    wire out_clk;
    
    buzzer u_buzzer(.clk (clk), .btn (btn), .out_clk (out_clk));
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0; btn = 0;
        #100 btn = 5'b10000;
        #10000000 btn = 5'b01000;
        #10000000 btn = 5'b00100;
        #10000000 btn = 5'b00010;
        #10000000 btn = 5'b00001;
    end
    
endmodule
