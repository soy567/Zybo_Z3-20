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


module shift_reg(clk, reset, load, sin, d, q, sout);

    parameter N = 8;
    input clk, reset, load, sin;
    input [N-1:0] d;
    output reg [N-1:0] q;
    output sout; 
    
    assign sout = q[0];
    
    always @(posedge clk, posedge reset) begin
        if (reset) q <= 0;
        else
            if (load) q <= d;
            else q <= {sin, q[N-1:1]};
    end
    
endmodule
