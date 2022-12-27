`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/26 23:16:17
// Design Name: 
// Module Name: WriteBack
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


module WriteBack(
    input SystemSignal system,
    input MEM_WB_Reg MEM_WB_Result,

    output logic writeEnabled,
    output Vec5 regWriteDst,
    output int regWriteData
    );

    assign regWriteDst = MEM_WB_Result.regWrite;
    assign writeEnabled = MEM_WB_Result.signal.regWriteEnabled;

    always_comb
    begin
        case(MEM_WB_Result.signal.regWriteSrc)
            alu: regWriteData = MEM_WB_Result.aluResult;
            mem: regWriteData = MEM_WB_Result.memReadData;
            nextPC: regWriteData = MEM_WB_Result.pcValue + 4;
            default: regWriteData = 0;
        endcase
    end

    always_ff @(negedge system.clock)
    begin
        if(MEM_WB_Result.instruction.instructionCode == syscall)
            $finish;
    end

endmodule
