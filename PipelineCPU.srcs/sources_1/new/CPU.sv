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

    Forwarding_t ForwardA, ForwardB, ForwardBranchA, ForwardBranchB;
    logic stall, stallPeriod;

    logic jump;
    int jumpValue;

    InstructionFetch IF(
        .system(system),
        .jumpValue(jumpValue),
        .jumpEnabled(jump),
        .stall(stall),
        .result(IF_ID_Result)
    );

    InstructionDecode ID(
        .system(system),
        .clear(stall),
        .ForwardBranchA(ForwardBranchA),
        .ForwardBranchB(ForwardBranchB),
        .IF_ID_Result(IF_ID_Result),
        .ID_EX_Result(ID_EX_Result),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .regReadDataA(regReadDataA),
        .regReadDataB(regReadDataB),
        .jump(jump),
        .jumpValue(jumpValue),
        .stallPeriod(stallPeriod)
    );

    Execution EX(
        .system(system),
        .ID_EX_Result(ID_EX_Result),

        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .ForwardSignalA(ForwardA),
        .ForwardSignalB(ForwardB)
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
        .readNoA(IF_ID_Result.instruction.rs),
        .readNoB(IF_ID_Result.instruction.rt),
        .writeNo(regWriteDst),
        .writeEnabled(regWriteEnabled),
        .writeContent(regWriteData),
        .readResultA(regReadDataA),
        .readResultB(regReadDataB),
        .programCounter(MEM_WB_Result.pcValue)
    );

    ForwardingUnit FU(
        .IF_ID_Result(IF_ID_Result),
        .ID_EX_Result(ID_EX_Result),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .ForwardA(ForwardA),
        .ForwardB(ForwardB),
        .ForwardBranchA(ForwardBranchA),
        .ForwardBranchB(ForwardBranchB)
    );

    BlockingUnit BU(
        .system(system),
        .ID_EX_Result(ID_EX_Result),
        .IF_ID_Result(IF_ID_Result),
        .stallPeriod(stallPeriod),
        .stall(stall)
    );

endmodule
