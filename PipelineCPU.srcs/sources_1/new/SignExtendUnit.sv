`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/27 00:05:33
// Design Name: 
// Module Name: SignExtendUnit
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

`include "Settings.vh"

module SignExtendUnit(
    input Vec16 in,
    output int out
    );

    assign out[15:0] = in;
    assign out[31:16] = in[15] ? 16'hFFFF : 16'h0000;

endmodule
