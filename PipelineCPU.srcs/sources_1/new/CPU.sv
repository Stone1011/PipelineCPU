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
    input logic clock,
    input logic reset
    );

    SystemSignal system;
    assign system.reset = reset;
    assign system.clock = clock;

    IF_ID_Reg IF_ID_Result;
    ID_EX_Reg ID_EX_Result;
    EX_MEM_Reg EX_MEM_Result;
    MEM_WB_Reg MEM_WB_Result;

    logic regWriteEnabled;
    Vec5 regWriteDst;
    int regWriteData;
    int regReadDataA, regReadDataB;

    // TODO: Implement jump using PCSrc...
    InstructionFetch IF(
        .system(system),
        .jumpValue(0),
        .jumpEnabled(1'b0),
        .stall(1'b0),
        .result(IF_ID_Result)
    );

    InstructionDecode ID(
        .system(system),
        .stall(1'b0),
        .IF_ID_Result(IF_ID_Result),
        .ID_EX_Result(ID_EX_Result)
    );

    Execution EX(
        .system(system),
        .ID_EX_Result(ID_EX_Result),
        .regReadDataA(regReadDataA),
        .regReadDataB(regReadDataB),
        .EX_MEM_Result(EX_MEM_Result)
    );

    Memory MEM(
        .system(system),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result)
    );

    WriteBack WB(
        .system(system),
        .MEM_WB_Result(MEM_WB_Result),
        .writeEnabled(regWriteEnabled),
        .regWriteDst(regWriteDst),
        .regWriteData(regWriteData)
    );

    GeneralPurposeRegisters GPR(
        .system(system),
        .readNoA(ID_EX_Result.regReadA),
        .readNoB(ID_EX_Result.regReadB),
        .writeNo(regWriteDst),
        .writeEnabled(regWriteEnabled),
        .writeContent(regWriteData),
        .readResultA(regReadDataA),
        .readResultB(regReadDataB)
    );

endmodule
