`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/16 10:24:03
// Design Name: 
// Module Name: updown_counter
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


module updown_counter(clk, reset, u_dbar, q);
    parameter N = 8;
    input clk, reset, u_dbar;
    output reg [N-1:0] q;
    
    always @ (posedge clk, posedge reset) begin
        if (reset) q <= 0;
        else 
            if (u_dbar == 1) q <= q + 1;
            else if (u_dbar == 0) q <= q - 1;
    end
endmodule
