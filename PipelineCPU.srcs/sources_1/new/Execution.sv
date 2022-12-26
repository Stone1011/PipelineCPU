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
    input int regReadDataA,
    input int regReadDataB,

    output EX_MEM_Reg EX_MEM_Result
    );

    int signExtOfImm;

    SignExtendUnit SEU(
        .in(ID_EX_Result.instruction.imm16),
        .out(signExtOfImm)
    );

    assign EX_MEM_Result.pcValue = ID_EX_Result.pcValue;
    assign EX_MEM_Result.signal = ID_EX_Result.signal;
    assign EX_MEM_Result.instruction = ID_EX_Result.instruction;
    assign EX_MEM_Result.regWrite = ID_EX_Result.regWrite;

    int AluOprandA, AluOprandB;
    assign AluOprandA = regReadDataA;

    always_comb
    begin
        case(ID_EX_Result.signal.aluSrc)
            rtAluSrc: AluOprandB = regReadDataB;
            signExtOfImm: AluOprandB = signExtOfImm;
            leftShiftOfImm: AluOprandB = {ID_EX_Result.instruction.imm16[15:0], 16'b0};
            zeroExtOfImm: AluOprandB = {16'b0, ID_EX_Result.instruction.imm16[15:0]};
            default: AluOprandB = 0;
        endcase
    end

    // TODO: Implement ALU module wiring
    ArithmaticLogicUnit ALU(
        .A(AluOprandA),
        .B(AluOprandB),
        .Op(ID_EX_Result.signal.aluOp),
        .C(EX_MEM_Result.aluResult),
        .Over(EX_MEM_Result.aluOverflow)
    );

endmodule
