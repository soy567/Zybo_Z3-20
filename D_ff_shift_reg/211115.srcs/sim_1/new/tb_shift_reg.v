`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/15 14:25:30
// Design Name: 
// Module Name: tb_shift_reg
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


module tb_shift_reg();
    parameter N = 8;

    reg clk = 0, reset, load, sin;
    reg [N-1:0] d;
    wire sout;
    wire [N-1:0] q;
    
    shift_reg u_shitf_reg(.clk (clk), .reset (reset), .load (load), 
        .sin (sin), .d (d), .q (q), .sout (sout));
    
    always #5 clk = ~clk;
    
    initial begin
        sin <= 1'b0;
        d <= 8'b1010_0000;
        reset <= 1'b1;
        load <= 1'b0;
        #30;
        
        reset <= 1'b0;
        load <= 1'b1;
        #30;
        
        load <= 1'b0;
        #80;
        
        sin <= 1'b1;  
        #20;
    end
endmodule
