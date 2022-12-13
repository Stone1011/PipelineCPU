`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/13 17:31:03
// Design Name: 
// Module Name: InstructionFetch
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

module InstructionFetch(
    input SystemSignal system,
    input int jumpValue,
    input logic jumpEnabled,
    input logic stall,
    output IF_ID_Reg result
    );

    int pc;
    Instruction ins;

    ProgramCounter PC(
        .system(system),
        .jumpValue(jumpValue),
        .jumpEnabled(jumpEnabled),
        .pcValue(pc),
        .stall(stall)
    );

    InstructionMemory IM(
        .address(pc),
        .instruction(ins)
    );

    always_ff @(posedge system.clock)
    begin
        if (system.reset)
        begin
            result <= {32'b0, 32'b0};
        end
        else if (stall)
        begin
            result <= result;
        end
        else
        begin
            result.instruction <= ins;
            result.pcValue <= pc;
        end
    end

endmodule
