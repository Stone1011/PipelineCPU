`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/01 19:41:20
// Design Name: 
// Module Name: ForwardingUnit
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

module ForwardingUnit(
    input ID_EX_Reg ID_EX_Result,
    input EX_MEM_Reg EX_MEM_Result,
    input MEM_WB_Reg MEM_WB_Result,

    output Forwarding_t ForwardA,
    output Forwarding_t ForwardB
    );

    always_comb
    begin
        if(EX_MEM_Result.signal.regWriteEnabled
            && EX_MEM_Result.regWrite == ID_EX_Result.regReadA
            && EX_MEM_Result.regWrite != 0)
            ForwardA = Forwarding_EX_MEM;
        else if(MEM_WB_Result.signal.regWriteEnabled
            && MEM_WB_Result.regWrite == ID_EX_Result.regReadA
            && MEM_WB_Result.regWrite != 0)
            ForwardA = Forwarding_MEM_WB;
        else
            ForwardA = Forwarding_GPR;
    end

    always_comb
    begin
        if(EX_MEM_Result.signal.regWriteEnabled
            && EX_MEM_Result.regWrite == ID_EX_Result.regReadB
            && EX_MEM_Result.regWrite != 0)
            ForwardB = Forwarding_EX_MEM;
        else if(MEM_WB_Result.signal.regWriteEnabled
            && MEM_WB_Result.regWrite == ID_EX_Result.regReadB
            && MEM_WB_Result.regWrite != 0)
            ForwardB = Forwarding_MEM_WB;
        else
            ForwardB = Forwarding_GPR;
    end

endmodule


module ForwardingALU(
    input Forwarding_t ForwardSignal,
    input int current,
    input EX_MEM_Reg EX_MEM_Result,
    input MEM_WB_Reg MEM_WB_Result,

    output int data
    );

    always_comb
    begin
        case(ForwardSignal)
            Forwarding_GPR: data = current;
            Forwarding_EX_MEM: 
            begin
                if(EX_MEM_Result.signal.regWriteSrc == alu)
                    data = EX_MEM_Result.aluResult;
                else
                    // TODO: Need Stall, Processed by BlockingUnit
                    $stop;
            end
            Forwarding_MEM_WB: 
            begin
                case(MEM_WB_Result.signal.regWriteSrc)
                    alu: data = MEM_WB_Result.aluResult;
                    mem: data = MEM_WB_Result.memReadData;
                    nextPC: data = MEM_WB_Result.pcValue + 4;
                endcase
            end
        endcase
    end

endmodule