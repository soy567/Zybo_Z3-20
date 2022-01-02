`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 09:32:18
// Design Name: 
// Module Name: buzzer
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


module buzzer(
    input clk,
    input [4:0] btn,
    output out_clk
    );
    
    reg [14:0] cnt_c, cnt_d, cnt_e, cnt_g, cnt_a;
    reg clk_c, clk_d, clk_e, clk_g, clk_a;
    
    always @ (posedge clk) begin
        if (btn[4] == 0) begin
            cnt_c <= 0;
            clk_c <= 0;
        end
        else
            if (cnt_c == 23888) begin
                cnt_c <= 0;
                clk_c <= ~clk_c;
            end
            else cnt_c <= cnt_c + 1;
    end
    
    always @ (posedge clk) begin
        if (btn[3] == 0) begin
            cnt_d <= 0;
            clk_d <= 0;
        end
        else
            if (cnt_d == 21282) begin
                cnt_d <= 0;
                clk_d <= ~clk_d;
            end
            else cnt_d <= cnt_d + 1;
    end
    
    always @ (posedge clk) begin
        if (btn[2] == 0) begin
            cnt_e <= 0;
            clk_e <= 0;
        end
        else
            if (cnt_e == 18960) begin
                cnt_e <= 0;
                clk_e <= ~clk_e;
            end
            else cnt_e <= cnt_e + 1;
    end
    
    always @ (posedge clk) begin
        if (btn[1] == 0) begin
            cnt_g <= 0;
            clk_g <= 0;
        end
        else
            if (cnt_g == 15943) begin
                cnt_g <= 0;
                clk_g <= ~clk_g;
            end
            else cnt_g <= cnt_g + 1;
    end
    
    always @ (posedge clk) begin
        if (btn[0] == 0) begin
            cnt_a <= 0;
            clk_a <= 0;
        end
        else 
            if (cnt_a == 14204) begin
                cnt_a <= 0;
                clk_a <= ~clk_a;
            end
            else cnt_a <= cnt_a + 1;
    end
    
    assign out_clk = clk_c | clk_d | clk_e | clk_g | clk_a;
    
endmodule
