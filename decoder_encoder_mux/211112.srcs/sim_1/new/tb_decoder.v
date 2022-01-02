`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 11:53:21
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder();
    reg [1:0] a;
    wire [3:0] y;
    
    decoder u_decoder (.a (a), .y (y));
    
    initial a = 2'b00;
    
    always #100 a = a + 1'b1;
    
endmodule
