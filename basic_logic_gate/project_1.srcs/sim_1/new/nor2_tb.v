`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:24:46
// Design Name: 
// Module Name: nor2_tb
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


module nor2_tb();
    reg a, b;
    wire y;
    
    nor2 u_nor2 (
        .a (a), .b (b), .y (y)
    );
    
    initial begin
        a = 1'b0;
        b = 1'b0;
    end
    
    always #10 a = ~a;
    always #20 b = ~b;
    
endmodule
