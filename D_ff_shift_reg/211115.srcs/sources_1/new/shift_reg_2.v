`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/15 14:04:16
// Design Name: 
// Module Name: shift_reg
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


module shift_reg_2(clk, reset, sin, q);

    parameter N = 4;
    
    input clk, reset, sin;
    output reg [N-1:0] q;
    
    always @(posedge clk, posedge reset) begin
        if (reset) q <= 0;
        else
            q <= {sin, q[N-1:1]};
    end
    
endmodule
