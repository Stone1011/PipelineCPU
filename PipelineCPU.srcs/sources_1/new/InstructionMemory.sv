`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 00:46:54
// Design Name: 
// Module Name: InstructionMemory
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

module InstructionMemory(
    input int address,
    output Vec32 instruction
    );

    Vec32 memory [1023:0];

    initial
    begin
        $readmemh("C:\\CPU\\mips1.txt", data);
    end

    assign instruction = memory[address[11:2]];

endmodule
