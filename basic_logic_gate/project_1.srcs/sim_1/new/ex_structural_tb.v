`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:17:20
// Design Name: 
// Module Name: ex_structural_tb
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


module ex_structural_tb();
    reg x, y, z;
    
    ex_structural u_ex_structural (
        x, y, z, f
    );
    
    initial begin
        x = 1'b0; y = 1'b0; z = 1'b0;
    end
    
    always #50 x = ~x;
    always #100 y = ~y;
    always #200 z = ~z;
    
endmodule
