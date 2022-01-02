`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 13:51:59
// Design Name: 
// Module Name: tb_cnt_no1
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


module tb_cnt_no1();
    reg [3:0] in_sws;
    wire [6:0] seg_data;
    
    cnt_no1 u_cnt_no1(.in_sws (in_sws), .seg_data (seg_data));
    
    always #5 in_sws = in_sws + 1;

   initial in_sws = 0;
endmodule
