`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 13:20:15
// Design Name: 
// Module Name: mod10_counter
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


module mod10_counter(clk, reset, q);
    parameter N = 4;
    input clk, reset;
    output reg [N-1:0] q;
    
    always @(posedge clk, posedge reset) begin
        if (reset) q <= 0;
        else
            if (q == 9) q <= 0;
            else q <= q + 1;
    end
endmodule
