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

    function int signExtByte(logic [7:0] b);
        if(b[7])
            return {24'hffffff, b};
        else
            return {24'h000000, b};
    endfunction

    function int zeroExtByte(logic [7:0] b);
        return {24'h000000, b};
    endfunction

    function int signExtHalf(logic [15:0] h);
        if(h[15])
            return {16'hffff, h};
        else
            return {16'h0000, h};
    endfunction

    function int zeroExtHalf(logic [15:0] h);
        return {16'h0000, h};
    endfunction

    int memReadDataOriginal;
    int memReadData, memWriteInput;
    DataMemory DM(
        .system(system),
        .address({EX_MEM_Result.aluResult[31:2], 2'b00}), 
        .writeEnabled(EX_MEM_Result.signal.memWriteEnabled), 
        .readEnabled(1),
        .writeInput(memWriteInput),
        .programCounter(EX_MEM_Result.pcValue),
        .readResult(memReadDataOriginal)
    );

    Vec2 location;
    logic halfLocation;
    assign location = EX_MEM_Result.aluResult[1:0];
    assign halfLocation = EX_MEM_Result.aluResult[1];

    // TODO
    always_comb
    begin
        // Calc memReadData using memReadDataOriginal
        // little endian method
        casex(EX_MEM_Result.instruction.instructionCode)
            lb:
            begin
                case(location)
                    2'b00: memReadData = signExtByte(memReadDataOriginal[7:0]);
                    2'b01: memReadData = signExtByte(memReadDataOriginal[15:8]);
                    2'b10: memReadData = signExtByte(memReadDataOriginal[23:16]);
                    2'b11: memReadData = signExtByte(memReadDataOriginal[31:24]);
                endcase
            end
            lbu:
            begin
                case(location)
                    2'b00: memReadData = zeroExtByte(memReadDataOriginal[7:0]);
                    2'b01: memReadData = zeroExtByte(memReadDataOriginal[15:8]);
                    2'b10: memReadData = zeroExtByte(memReadDataOriginal[23:16]);
                    2'b11: memReadData = zeroExtByte(memReadDataOriginal[31:24]);
                endcase
            end
            lh:
            begin
                case(halfLocation)
                    1'b0: memReadData = signExtHalf(memReadDataOriginal[15:0]);
                    1'b1: memReadData = signExtHalf(memReadDataOriginal[31:16]);
                endcase
            end
            lhu:
            begin
                case(halfLocation)
                    1'b0: memReadData = zeroExtHalf(memReadDataOriginal[15:0]);
                    1'b1: memReadData = zeroExtHalf(memReadDataOriginal[31:16]);
                endcase
            end
            lw: memReadData = memReadDataOriginal;
            default: memReadData = 0;
        endcase
    end

    always_comb
    begin
        // Calc memWriteInput using EX_MEM_Result.regReadDataB and memReadDataOriginal
        // little endian method
        casex(EX_MEM_Result.instruction.instructionCode)
            sb:
            begin
                case(location)
                    2'b00: memWriteInput = {memReadDataOriginal[31:8], EX_MEM_Result.regReadDataB[7:0]};
                    2'b01: memWriteInput = {memReadDataOriginal[31:16], EX_MEM_Result.regReadDataB[7:0], memReadDataOriginal[7:0]};
                    2'b10: memWriteInput = {memReadDataOriginal[31:24], EX_MEM_Result.regReadDataB[7:0], memReadDataOriginal[15:0]};
                    2'b11: memWriteInput = {EX_MEM_Result.regReadDataB[7:0], memReadDataOriginal[23:0]};
                endcase
            end
            sh:
            begin
                case(halfLocation)
                    1'b0: memWriteInput = {memReadDataOriginal[31:16], EX_MEM_Result.regReadDataB[15:0]};
                    1'b1: memWriteInput = {EX_MEM_Result.regReadDataB[15:0], memReadDataOriginal[15:0]};
                endcase
            end
            sw: memWriteInput = EX_MEM_Result.regReadDataB;
            default: memWriteInput = 0;
        endcase
    end

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
            MEM_WB_Result.specialReg <= 0;
        end
//        else if(stall) 
//        begin
//            MEM_WB_Result.pcValue <= MEM_WB_Result.pcValue;
//            MEM_WB_Result.instruction <= MEM_WB_Result.instruction;
//            MEM_WB_Result.signal <= MEM_WB_Result.signal;
//            MEM_WB_Result.regWrite <= MEM_WB_Result.regWrite;
//            MEM_WB_Result.aluResult <= MEM_WB_Result.aluResult;
//            MEM_WB_Result.aluOverflow <= MEM_WB_Result.aluOverflow;
//            MEM_WB_Result.memReadData <= MEM_WB_Result.memReadData;
//        end
        else
        begin
            MEM_WB_Result.pcValue <= EX_MEM_Result.pcValue;
            MEM_WB_Result.instruction <= EX_MEM_Result.instruction;
            MEM_WB_Result.signal <= EX_MEM_Result.signal;
            MEM_WB_Result.regWrite <= EX_MEM_Result.regWrite;
            MEM_WB_Result.aluResult <= EX_MEM_Result.aluResult;
            MEM_WB_Result.aluOverflow <= EX_MEM_Result.aluOverflow;
            if(EX_MEM_Result.signal.memReadEnabled)
                MEM_WB_Result.memReadData <= memReadData;
            else
                MEM_WB_Result.memReadData <= 0;
            MEM_WB_Result.specialReg <= EX_MEM_Result.specialReg;
        end
    end

endmodule
