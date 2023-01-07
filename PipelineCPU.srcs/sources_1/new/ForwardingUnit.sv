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
    input IF_ID_Reg IF_ID_Result,
    input ID_EX_Reg ID_EX_Result,
    input EX_MEM_Reg EX_MEM_Result,
    input MEM_WB_Reg MEM_WB_Result,

    output Forwarding_t ForwardA,
    output Forwarding_t ForwardB,
    output Forwarding_t ForwardBranchA,
    output Forwarding_t ForwardBranchB
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

    always_comb
    begin
        if(ID_EX_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rs == ID_EX_Result.regWrite
            && IF_ID_Result.instruction.rs != 0)
            ForwardBranchA = Forwarding_ID_EX;
        else if(EX_MEM_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rs == EX_MEM_Result.regWrite
            && IF_ID_Result.instruction.rs != 0)
            ForwardBranchA = Forwarding_EX_MEM;
        else if(MEM_WB_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rs == MEM_WB_Result.regWrite
            && IF_ID_Result.instruction.rs != 0)
            ForwardBranchA = Forwarding_MEM_WB;
        else
            ForwardBranchA = Forwarding_GPR;
    end

    always_comb
    begin
        if(ID_EX_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rt == ID_EX_Result.regWrite
            && IF_ID_Result.instruction.rt != 0)
            ForwardBranchB = Forwarding_ID_EX;
        else if(EX_MEM_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rt == EX_MEM_Result.regWrite
            && IF_ID_Result.instruction.rt != 0)
            ForwardBranchB = Forwarding_EX_MEM;
        else if(MEM_WB_Result.signal.regWriteEnabled
            && IF_ID_Result.instruction.rt == MEM_WB_Result.regWrite
            && IF_ID_Result.instruction.rt != 0)
            ForwardBranchB = Forwarding_MEM_WB;
        else
            ForwardBranchB = Forwarding_GPR;
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
                else if(EX_MEM_Result.signal.regWriteSrc == nextPC)
                    data = EX_MEM_Result.pcValue + 8;
                else if(EX_MEM_Result.signal.regWriteSrc == specialReg)
                    data = EX_MEM_Result.specialReg;
//                else
//                     TODO: Need Stall, Processed by BlockingUnit
//                    $stop;
                    
            end
            Forwarding_MEM_WB: 
            begin
                case(MEM_WB_Result.signal.regWriteSrc)
                    alu: data = MEM_WB_Result.aluResult;
                    mem: data = MEM_WB_Result.memReadData;
                    nextPC: data = MEM_WB_Result.pcValue + 8;
                    specialReg: data = MEM_WB_Result.specialReg;
                endcase
            end
        endcase
    end

endmodule


module ForwardingBranch(
    input Forwarding_t ForwardSignal,
    input int current,
    input ID_EX_Reg ID_EX_Result,
    input EX_MEM_Reg EX_MEM_Result,
    input MEM_WB_Reg MEM_WB_Result,

    output int data,
    output logic stall
    );

    always_comb
    begin
        case(ForwardSignal)
            Forwarding_GPR: 
            begin
                data = current;
                stall = 0;
            end
            Forwarding_EX_MEM: 
            begin
                if(EX_MEM_Result.signal.regWriteSrc == alu)
                begin
                    data = EX_MEM_Result.aluResult;
                    stall = 0;
                end
                else if(EX_MEM_Result.signal.regWriteSrc == nextPC)
                begin
                    data = EX_MEM_Result.pcValue + 8;
                    stall = 0;
                end
                else if(EX_MEM_Result.signal.regWriteSrc == specialReg)
                begin
                    data = EX_MEM_Result.specialReg;
                    stall = 0;
                end
                else
                    // $stop;
                    stall = 1; // need to stall for 1 cycle
            end
            Forwarding_MEM_WB: 
            begin
                case(MEM_WB_Result.signal.regWriteSrc)
                    alu:
                    begin
                        data = MEM_WB_Result.aluResult;
                        stall = 0;
                    end
                    mem: 
                    begin
                        data = MEM_WB_Result.memReadData;
                        stall = 0;
                    end
                    nextPC: 
                    begin
                        data = MEM_WB_Result.pcValue + 8;
                        stall = 0;
                    end
                    specialReg:
                    begin
                        data = MEM_WB_Result.specialReg;
                        stall = 0;
                    end
                endcase
            end
            Forwarding_ID_EX:
            begin
                // if(ID_EX_Result.signal.regWriteSrc == alu)
                //     stallPeriod = 2'b01;
                // else
                //     stallPeriod = 2'b10;
                stall = 1;
            end
        endcase
    end

endmodule