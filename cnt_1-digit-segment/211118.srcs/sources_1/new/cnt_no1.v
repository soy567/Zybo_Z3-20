`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 13:35:29
// Design Name: 
// Module Name: cnt_no1
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


module cnt_no1(
    input [3:0] in_sws,
    output reg [6:0] seg_data
    );
    
    reg [2:0] sw_num;
    // integer i;
    
    always @ (in_sws)
        /*
        for(i = 0; i <= 3 ; i = i + 1) 
            if(in_sws[i] == 1'b1)
                sw_num = sw_num + 1;  
        */
        sw_num = in_sws[3] + in_sws[2] + in_sws[1] + in_sws[0];     
 
    
    always @ (sw_num) begin
        case (sw_num)
            0 : seg_data <= ~(7'b111_1110);
            1 : seg_data <= ~(7'b011_0000);
            2 : seg_data <= ~(7'b110_1101);
            3 : seg_data <= ~(7'b111_1001);
            4 : seg_data <= ~(7'b011_0011);
            default : seg_data <= ~(7'b000_0000);
        endcase
    end    
endmodule
