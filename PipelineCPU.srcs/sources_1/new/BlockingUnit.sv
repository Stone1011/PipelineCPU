`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/01 21:03:10
// Design Name: 
// Module Name: BlockingUnit
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

module BlockingUnit(
    input SystemSignal system,
    input IF_ID_Reg IF_ID_Result,
    input ID_EX_Reg ID_EX_Result,

    output logic stall
    );

    logic needRegRead;

    always_comb
    begin
        casex(IF_ID_Result.instruction.instructionCode)
            // TODO: Add all instructions that don't need to read from registers
            nop: needRegRead = 1'b0;
            default: needRegRead = 1'b1;
        endcase
    end

    // always_ff @(posedge system.clock)
    // begin
    //     if (system.reset)
    //     begin
    //         stall <= 1'b0;
    //     end
    //     else
    //     begin
    //         if(ID_EX_Result.signal.memReadEnabled
    //             && ID_EX_Result.signal.regWriteEnabled
    //             && (ID_EX_Result.regWrite == IF_ID_Result.instruction.rt
    //             || ID_EX_Result.regWrite == IF_ID_Result.instruction.rs)
    //             && needRegRead)
    //         begin
    //             stall <= 1'b1;
    //         end
    //         else
    //             stall <= 1'b0;
    //     end
    // end

    always_comb
    begin
        if(ID_EX_Result.signal.memReadEnabled
            && ID_EX_Result.signal.regWriteEnabled
            && (ID_EX_Result.regWrite == IF_ID_Result.instruction.rt
            || ID_EX_Result.regWrite == IF_ID_Result.instruction.rs)
            && needRegRead)
        begin
            stall = 1'b1;
        end
        else
            stall = 1'b0;
    end

endmodule
