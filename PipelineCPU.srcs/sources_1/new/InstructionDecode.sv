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

    assign ID_EX_Result.pcValue = IF_ID_Result.pcValue;
    assign ID_EX_Result.instruction = IF_ID_Result.instruction;
    assign ID_EX_Result.signal = signal;
    
    always_comb
    begin
        ID_EX_Result.regReadA = IF_ID_Result.instruction.rs;
        ID_EX_Result.regReadB = IF_ID_Result.instruction.rt;

        case(signal.regWriteDst)
            rtDst: ID_EX_Result.regWrite = IF_ID_Result.instruction.rt;
            rdDst: ID_EX_Result.regWrite = IF_ID_Result.instruction.rd;
            raDst: ID_EX_Result.regWrite = 5'b11111;
            otherDst: ID_EX_Result.regWrite = 5'b00000;
        endcase
    end

    

endmodule
