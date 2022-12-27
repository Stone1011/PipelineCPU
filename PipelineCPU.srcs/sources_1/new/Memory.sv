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
    input logic stall,

    output MEM_WB_Reg MEM_WB_Result
    );

    int memReadData;
    DataMemory DM(
        .system(system),
        .address(EX_MEM_Result.aluResult), 
        .writeEnabled(EX_MEM_Result.signal.memWriteEnabled), 
        .readEnabled(EX_MEM_Result.signal.memReadEnabled),
        .writeInput(EX_MEM_Result.regReadDataB),
        .readResult(memReadData)
    );

    always_ff @(posedge system.clock) 
    begin
        if (system.reset) 
        begin
            MEM_WB_Result.pcValue <= 32'h3000;
            MEM_WB_Result.instruction <= `reset_Instruction;
            MEM_WB_Result.signal <= `reset_ControlSignal;
            MEM_WB_Result.regWrite <= 0;
            MEM_WB_Result.aluResult <= 0;
            MEM_WB_Result.aluOverflow <= 0;
            MEM_WB_Result.memReadData <= 0;
        end 
        else if(stall) 
        begin
            MEM_WB_Result.pcValue <= MEM_WB_Result.pcValue;
            MEM_WB_Result.instruction <= MEM_WB_Result.instruction;
            MEM_WB_Result.signal <= MEM_WB_Result.signal;
            MEM_WB_Result.regWrite <= MEM_WB_Result.regWrite;
            MEM_WB_Result.aluResult <= MEM_WB_Result.aluResult;
            MEM_WB_Result.aluOverflow <= MEM_WB_Result.aluOverflow;
            MEM_WB_Result.memReadData <= MEM_WB_Result.memReadData;
        end
        else
        begin
            MEM_WB_Result.pcValue <= EX_MEM_Result.pcValue;
            MEM_WB_Result.instruction <= EX_MEM_Result.instruction;
            MEM_WB_Result.signal <= EX_MEM_Result.signal;
            MEM_WB_Result.regWrite <= EX_MEM_Result.regWrite;
            MEM_WB_Result.aluResult <= EX_MEM_Result.aluResult;
            MEM_WB_Result.aluOverflow <= EX_MEM_Result.aluOverflow;
            MEM_WB_Result.memReadData <= memReadData;
        end
    end

endmodule
