`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: soy567
// 
// Create Date: 2021/11/11 09:37:16
// Design Name: 
// Module Name: or2
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

module and2 (
    input a, b,
    output y
    );
    
    assign y = a & b;
    
endmodule
