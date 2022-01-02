`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 13:27:21
// Design Name: 
// Module Name: matrix_btn
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


module matrix_btn(
    input clk, reset,
    input [3:0] col,
    output reg [3:0] row,
    output reg [3:0] led_out
    );
   
    reg [16:0] scan_clk_cnt;
    reg scan_clk;
    
    // gen 1KHz clock signal
    always @ (posedge clk, posedge reset) begin
        if (reset) begin
            scan_clk_cnt <= 0;
            scan_clk <= 0;
        end
        else if (scan_clk_cnt == 62500) begin
        // else if (scan_clk_cnt == 5) begin
            scan_clk_cnt <= 0;
            scan_clk <= ~scan_clk;
        end
        else scan_clk_cnt = scan_clk_cnt + 1;
    end  
    
    // gen scan pulse (row)
    always @ (posedge reset, posedge  scan_clk) begin
        if (reset) row = 4'b0001;
        else row <= {row[2:0], row[3]};
    end
    
    always @ (row, col) begin
        case (row)
            4'b0001:
                case (col)
                    4'b0001 : led_out <= 1;
                    4'b0010 : led_out <= 2;
                    4'b0100 : led_out <= 3;
                    4'b1000 : led_out <= 4;
                    default : led_out <= 0;
                 endcase
         endcase
         
         case (row)
            4'b0010:
                case (col)
                    4'b0001 : led_out <= 5;
                    4'b0010 : led_out <= 6;
                    4'b0100 : led_out <= 7;
                    4'b1000 : led_out <= 8;
                    default : led_out <= 0;
                 endcase
         endcase
         
         case (row)
            4'b0100:
                case (col)
                    4'b0001 : led_out <= 9;
                    4'b0010 : led_out <= 10;
                    4'b0100 : led_out <= 11;
                    4'b1000 : led_out <= 12;
                    default : led_out <= 0;
                 endcase
         endcase
         
         case (row)
            4'b1000:
                case (col)
                    4'b0001 : led_out <= 13;
                    4'b0010 : led_out <= 14;
                    4'b0100 : led_out <= 15;
                    4'b1000 : led_out <= 15;
                    default : led_out <= 0;
                 endcase
         endcase
         
    end    
endmodule
