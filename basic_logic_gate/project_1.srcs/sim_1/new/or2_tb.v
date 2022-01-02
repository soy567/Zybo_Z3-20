`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: soy567
// 
// Create Date: 2021/11/11 10:20:14
// Design Name: 
// Module Name: or2_tb
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


module or2_tb();
    reg a, b;
    wire y;
    
    // or2 instantiation
    or2 u_or2 (
        .a (a), .b (b), .y (y)
    );
    
    initial begin
        a = 1'b0; b = 1'b0;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;

endmodule
