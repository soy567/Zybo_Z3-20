`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 15:35:23
// Design Name: 
// Module Name: mux_2to1_reg
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


module mux_2to1_reg(
    input a,
    input b,
    input sel,
    output reg out
    );
    
    always @ (a, b, sel)
        if (sel) out = a;
        else out = b;

endmodule
