`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: 
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


module watch_ext(
    input reset, sys_clk, 
    output reg [3:0] seg_digit,
    output reg [6:0] seg_data
    );
    
    reg clk_1hz, clk_500;
    reg [25:0] clk_cnt;
    reg [16:0] digit_cnt;
    
    reg [6:0] sec;
    reg [6:0] min;
    reg [3:0] sec_1digit;
    reg [3:0] sec_10digit;
    reg [3:0] min_1digit;
    reg [3:0] min_10digit;
    
    // Ŭ�� ����ȸ�� : 1 Hz
    always @(posedge sys_clk or posedge reset) begin
        if (reset)  begin 
            clk_cnt <= 0; clk_1hz <= 0; end
        // else if (clk_cnt == 20000000 ) begin // �� 3 Hz ����
        // else if (clk_cnt == 62499999 ) begin  // ���� 1 Hz ����
        else if (clk_cnt == 12 ) begin   //�ùķ��̼�
            clk_1hz <= ~clk_1hz;
            clk_cnt <= 0; end
        else clk_cnt <= clk_cnt + 1;
    end
    
    // �ڸ� ���� Ŭ�� ���� 500Hz
    always @(posedge sys_clk or posedge reset) begin
        if (reset)  begin 
            digit_cnt <= 0; clk_500 <= 0; end
        // else if (digit_cnt == 125000 ) begin  // ���� ����
        else if (digit_cnt == 2 ) begin   //�ùķ��̼�
            clk_500 <= ~clk_500;
            digit_cnt <= 0; end
        else digit_cnt <= digit_cnt + 1;
    end
    
    always @(posedge reset or posedge clk_1hz)
        if (reset) begin sec <= 0; min <= 0; end
        else 
            if ( (sec == 59) && (min == 60) ) begin 
                sec <= 0; min <= 0; end
            else if ( sec == 59 && !(min == 60)) min <= min + 1;
            else sec <= sec + 1;
        
     always @(posedge reset or posedge clk_500)
        if (reset) seg_digit <= 4'b0001;
        else  seg_digit <= {seg_digit[2:0], seg_digit[3]}; // left rotate
        
    always @ (sec, min) begin
        sec_1digit <= sec % 10;
        sec_10digit <= sec / 10;
        min_1digit <= min % 10;
        min_10digit <= min / 10;
    end
    
    always @ (seg_digit) 
        case (seg_digit)
            4'b0001 :  case (sec_1digit)
                        0 : seg_data <= ~(7'b111_1110);
                        1 : seg_data <= ~(7'b011_0000);
                        2 : seg_data <= ~(7'b110_1101);
                        3 : seg_data <= ~(7'b111_1001);
                        4 : seg_data <= ~(7'b011_0011);
                        5 : seg_data <= ~(7'b101_1011);
                        6 : seg_data <= ~(7'b101_1111);
                        7 : seg_data <= ~(7'b111_0000);
                        8 : seg_data <= ~(7'b111_1111);
                        9 : seg_data <= ~(7'b111_1011);
                        default : seg_data <= ~(7'b000_0000);
                  endcase
            4'b0010 :  case (sec_10digit)
                        0 : seg_data <= ~(7'b111_1110);
                        1 : seg_data <= ~(7'b011_0000);
                        2 : seg_data <= ~(7'b110_1101);
                        3 : seg_data <= ~(7'b111_1001);
                        4 : seg_data <= ~(7'b011_0011);
                        5 : seg_data <= ~(7'b101_1011);
                        6 : seg_data <= ~(7'b101_1111);
                        7 : seg_data <= ~(7'b111_0000);
                        8 : seg_data <= ~(7'b111_1111);
                        9 : seg_data <= ~(7'b111_1011);
                        default : seg_data <= ~(7'b000_0000);
                  endcase
            4'b0100 :  case (min_1digit)
                        0 : seg_data <= ~(7'b111_1110);
                        1 : seg_data <= ~(7'b011_0000);
                        2 : seg_data <= ~(7'b110_1101);
                        3 : seg_data <= ~(7'b111_1001);
                        4 : seg_data <= ~(7'b011_0011);
                        5 : seg_data <= ~(7'b101_1011);
                        6 : seg_data <= ~(7'b101_1111);
                        7 : seg_data <= ~(7'b111_0000);
                        8 : seg_data <= ~(7'b111_1111);
                        9 : seg_data <= ~(7'b111_1011);
                        default : seg_data <= ~(7'b000_0000);
                  endcase
            4'b1000 :  case (min_10digit)
                        0 : seg_data <= ~(7'b111_1110);
                        1 : seg_data <= ~(7'b011_0000);
                        2 : seg_data <= ~(7'b110_1101);
                        3 : seg_data <= ~(7'b111_1001);
                        4 : seg_data <= ~(7'b011_0011);
                        5 : seg_data <= ~(7'b101_1011);
                        6 : seg_data <= ~(7'b101_1111);
                        7 : seg_data <= ~(7'b111_0000);
                        8 : seg_data <= ~(7'b111_1111);
                        9 : seg_data <= ~(7'b111_1011);
                        default : seg_data <= ~(7'b000_0000);
                  endcase 
        endcase
endmodule
