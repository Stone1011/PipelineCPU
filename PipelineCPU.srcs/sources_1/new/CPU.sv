`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 01:07:14
// Design Name: 
// Module Name: CPU
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

module CPU(
    input clock,
    input reset
    );

    SystemSignal system;
    assign system.reset = reset;
    assign system.clock = clock;

    DataMemory DM();
    InstructionMemory IM();
    ProgramCounter PCModule();

endmodule
