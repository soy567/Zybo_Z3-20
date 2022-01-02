`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:42:33
// Design Name: 
// Module Name: gates
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


module inv(
    input a,
    output y
    );
    assign y = ~a;
endmodule

module and3 (
    input a, b, c,
    output y
    );
    assign y = a & b & c;
 endmodule
 
 module or3 (
    input a, b, c,
    output y
    );
    assign y = a | b | c;
endmodule

module ex_structural (
    input x, y, z,
    output f
    );
    
    wire w_inv_x, w_inv_z;
    wire w_and3_0, w_and3_1, w_and2_0;
    
    // instantiation (Ordered)
    inv inv_x (x, w_inv_x);
    inv inv_z (z, w_inv_z);
    
    and3 and3_0 (w_inv_x, y, z, w_and3_0);
    and3 and3_1 (w_inv_x, y, w_inv_z, w_and3_1);
    and2 and2_0 (x, z, w_and2_0);
    
    or3 or3_0 (w_and3_0, w_and3_1, w_and2_0, f);

endmodule