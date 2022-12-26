`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/26 18:07:31
// Design Name: 
// Module Name: Memory
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

module Memory(
    input SystemSignal system,
    input EX_MEM_Reg EX_MEM_Result,

    output MEM_WB_Reg MEM_WB_Result
    );

    DataMemory DM(
        .system(system),
        .address(EX_MEM_Result.aluResult), 
        .writeEnabled(EX_MEM_Result.signal.memWriteEnabled), 
        .readEnabled(EX_MEM_Result.signal.memReadEnabled),
        .writeInput(), // TODO
        .readResult(MEM_WB_Result.memReadData)
    );

    assign MEM_WB_Result.pcValue = EX_MEM_Result.pcValue;
    assign MEM_WB_Result.signal = EX_MEM_Result.signal;
    assign MEM_WB_Result.instruction = EX_MEM_Result.instruction;
    assign MEM_WB_Result.regWrite = EX_MEM_Result.regWrite;
    assign MEM_WB_Result.aluResult = EX_MEM_Result.aluResult;
    assign MEM_WB_Result.aluOverflow = EX_MEM_Result.aluOverflow;

endmodule
