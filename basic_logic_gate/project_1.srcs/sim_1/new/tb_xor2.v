`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 14:24:56
// Design Name: 
// Module Name: tb_xor2
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


module tb_xor2();
    reg c, d;
    wire z;
    
    xor2 u_xor2 (.c (c), .d (d), .z (z));
    
    initial begin
        c = 1'b0;
        d = 1'b0;
    end
    
    always #10 c = ~c;
    always #20 d = ~d;
    
endmodule
