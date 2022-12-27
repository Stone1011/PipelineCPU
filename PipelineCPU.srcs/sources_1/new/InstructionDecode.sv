`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/14 00:07:44
// Design Name: 
// Module Name: InstructionDecode
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

module InstructionDecode(
    input SystemSignal system,
    input logic stall,
    
    input IF_ID_Reg IF_ID_Result,
    output ID_EX_Reg ID_EX_Result
    );

    ControlSignal signal;

    ControllerUnit CU(
        .system(system), 
        .instruction(IF_ID_Result.instruction), 
        .signal(signal));

    Vec5 regWriteDst;
    always_comb
    begin
        case(signal.regWriteDst)
            rtDst: regWriteDst = IF_ID_Result.instruction.rt;
            rdDst: regWriteDst = IF_ID_Result.instruction.rd;
            raDst: regWriteDst = 5'b11111;
            otherDst: regWriteDst = 5'b00000;
        endcase
    end

    always_ff @( posedge system.clock )
    begin
        if(system.reset)
        begin
            ID_EX_Result.pcValue <= 32'h3000;
            ID_EX_Result.instruction <= `reset_Instruction;
            ID_EX_Result.signal <= `reset_ControlSignal;
            ID_EX_Result.regReadA <= 5'b00000;
            ID_EX_Result.regReadB <= 5'b00000;
            ID_EX_Result.regWrite <= 5'b00000;
        end
        else if(stall)
        begin
            ID_EX_Result.pcValue <= ID_EX_Result.pcValue;
            ID_EX_Result.instruction <= ID_EX_Result.instruction;
            ID_EX_Result.signal <= ID_EX_Result.signal;
            ID_EX_Result.regReadA <= ID_EX_Result.regReadA;
            ID_EX_Result.regReadB <= ID_EX_Result.regReadB;
            ID_EX_Result.regWrite <= ID_EX_Result.regWrite;
        end
        else
        begin
            ID_EX_Result.pcValue <= IF_ID_Result.pcValue;
            ID_EX_Result.instruction <= IF_ID_Result.instruction;
            ID_EX_Result.signal <= signal;
            ID_EX_Result.regReadA <= IF_ID_Result.instruction.rs;
            ID_EX_Result.regReadB <= IF_ID_Result.instruction.rt;
            ID_EX_Result.regWrite <= regWriteDst;
        end
    end

endmodule
