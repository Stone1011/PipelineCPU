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
    output Instruction instruction
    );

    Vec32 memory [1023:0];

    initial
    begin
        $readmemh(`testbench, memory);
    end

    assign instruction.instructionCode = InstructionCode_t'(memory[address[11:2]]);
    assign instruction.rs = memory[address[11:2]][25:21];
    assign instruction.rt = memory[address[11:2]][20:16];
    assign instruction.rd = memory[address[11:2]][15:11];
    assign instruction.imm16 = memory[address[11:2]][15:0];
    assign instruction.imm26 = memory[address[11:2]][25:0];
    assign instruction.funct = memory[address[11:2]][5:0];

endmodule
