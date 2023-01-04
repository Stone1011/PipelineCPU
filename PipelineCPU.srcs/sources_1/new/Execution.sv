`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/26 17:48:28
// Design Name: 
// Module Name: Execution
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

module Execution(
    input SystemSignal system,
    input ID_EX_Reg ID_EX_Result,
    input MEM_WB_Reg MEM_WB_Result,

    input logic stall,
    input Forwarding_t ForwardSignalA,
    input Forwarding_t ForwardSignalB,

    output EX_MEM_Reg EX_MEM_Result
    );

    int signExtOfImm;

    SignExtendUnit SEU(
        .in(ID_EX_Result.instruction.imm16),
        .out(signExtOfImm)
    );

    int AluOprandA, AluOprandB, tempAluOprandB, tempAluOprandA;
    int regReadDataA, regReadDataB;
    assign regReadDataA = ID_EX_Result.regReadDataA;
    assign regReadDataB = ID_EX_Result.regReadDataB;

    ForwardingALU FUA(
        .ForwardSignal(ForwardSignalA),
        .current(regReadDataA),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .data(tempAluOprandA)
    );
    // assign AluOprandA = regReadDataA;

    ForwardingALU FUB(
        .ForwardSignal(ForwardSignalB),
        .current(regReadDataB),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .data(tempAluOprandB)
    );

    // AluOprandA
    always_comb
    begin
        case(ID_EX_Result.signal.aluSrc)
            shamtAluSrc: AluOprandA = {27'h0000000, ID_EX_Result.instruction.shamt[4:0]};   // rt
            default: AluOprandA = tempAluOprandA;
        endcase
    end

    // AluOprandB
    always_comb
    begin
        case(ID_EX_Result.signal.aluSrc)
            rtAluSrc: AluOprandB = tempAluOprandB;
            signExtOfImm: AluOprandB = signExtOfImm;
            leftShiftOfImm: AluOprandB = {ID_EX_Result.instruction.imm16[15:0], 16'b0};
            zeroExtOfImm: AluOprandB = {16'b0, ID_EX_Result.instruction.imm16[15:0]};
            shamtAluSrc: AluOprandB = tempAluOprandB;
            default: AluOprandB = 0;
        endcase
    end

    int aluResult;
    logic aluOverflow;
    ArithmaticLogicUnit ALU(
        .A(AluOprandA),
        .B(AluOprandB),
        .Op(ID_EX_Result.signal.aluOp),
        .C(aluResult),
        .Over(aluOverflow)
    );

    always_comb
    begin
        if(aluOverflow)
            $stop;
    end

    always_ff @(posedge system.clock)
    begin
        if(system.reset)
        begin
            EX_MEM_Result.pcValue <= 32'h3000;
            EX_MEM_Result.instruction <= `reset_Instruction;
            EX_MEM_Result.signal <= `reset_ControlSignal;
            EX_MEM_Result.regWrite <= 0;
            EX_MEM_Result.aluResult <= 0;
            EX_MEM_Result.aluOverflow <= 0;
            EX_MEM_Result.regReadDataB <= 0;
        end
        else if(stall)
        begin
            // EX_MEM_Result.pcValue <= EX_MEM_Result.pcValue;
            // EX_MEM_Result.instruction <= EX_MEM_Result.instruction;
            // EX_MEM_Result.signal <= EX_MEM_Result.signal;
            // EX_MEM_Result.regWrite <= EX_MEM_Result.regWrite;
            // EX_MEM_Result.aluResult <= EX_MEM_Result.aluResult;
            // EX_MEM_Result.aluOverflow <= EX_MEM_Result.aluOverflow;
            // EX_MEM_Result.regReadDataB <= EX_MEM_Result.regReadDataB;
            EX_MEM_Result <= EX_MEM_Result;
        end
        else
        begin
            EX_MEM_Result.pcValue <= ID_EX_Result.pcValue;
            EX_MEM_Result.instruction <= ID_EX_Result.instruction;
            EX_MEM_Result.signal <= ID_EX_Result.signal;
            EX_MEM_Result.regWrite <= ID_EX_Result.regWrite;
            EX_MEM_Result.aluResult <= aluResult;
            EX_MEM_Result.aluOverflow <= aluOverflow;
            EX_MEM_Result.regReadDataB <= tempAluOprandB;
        end
    end

endmodule
