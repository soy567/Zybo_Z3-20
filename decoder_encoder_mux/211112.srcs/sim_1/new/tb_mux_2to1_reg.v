`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 15:40:41
// Design Name: 
// Module Name: tb_mux_2to1_reg
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


module tb_mux_2to1_reg();
    reg a, b, sel;
    wire out;
    
    mux_2to1_reg u_mux_2to1_reg (
        .a (a), .b (b), .sel (sel), .out (out)
    );
    
    initial begin
        a = 1'b0; b = 1'b0; sel = 1'b0;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;
    always #200 sel = ~sel;
    
endmodule
