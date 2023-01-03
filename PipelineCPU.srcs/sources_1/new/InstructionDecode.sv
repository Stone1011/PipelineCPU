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
    input logic clear,
    input Forwarding_t ForwardBranchA,
    input Forwarding_t ForwardBranchB,
    input int regReadDataA,
    input int regReadDataB,
    
    input IF_ID_Reg IF_ID_Result,
    input EX_MEM_Reg EX_MEM_Result,
    input MEM_WB_Reg MEM_WB_Result,

    output ID_EX_Reg ID_EX_Result,
    output logic jump,
    output int jumpValue,
    output logic stallPeriod
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

    int regDataA, regDataB;
    logic stallPeriodA, stallPeriodB;
    ForwardingBranch FBA(
        .ForwardSignal(ForwardBranchA),
        .current(regReadDataA),
        .ID_EX_Result(ID_EX_Result),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .data(regDataA),
        .stall(stallPeriodA)
    );
    ForwardingBranch FBB(
        .ForwardSignal(ForwardBranchB),
        .current(regReadDataB),
        .ID_EX_Result(ID_EX_Result),
        .EX_MEM_Result(EX_MEM_Result),
        .MEM_WB_Result(MEM_WB_Result),
        .data(regDataB),
        .stall(stallPeriodB)
    );
    logic equal;
    assign equal = (regDataA == regDataB);
    
    assign stallPeriod = (stallPeriodA | stallPeriodB) & signal.realBranch;
    assign jump = signal.realBranch & equal & !stallPeriod | signal.branch & !signal.realBranch;
    always_comb
    begin
        casex(IF_ID_Result.instruction.instructionCode)
            beq: jumpValue = IF_ID_Result.pcValue + 4 + {IF_ID_Result.instruction.imm16[13:0], 2'b00};
            jal: jumpValue = {IF_ID_Result.pcValue[31:28], IF_ID_Result.instruction.imm26, 2'b00};
            jr: jumpValue = regDataA;
        endcase
    end
    
//    always_comb
//    begin
//        if(signal.realBranch)
//            $stop;
//    end

    always_ff @( posedge system.clock )
    begin
        if(system.reset || clear)
        begin
            ID_EX_Result.pcValue <= 32'h3000;
            ID_EX_Result.instruction <= `reset_Instruction;
            ID_EX_Result.signal <= `reset_ControlSignal;
            ID_EX_Result.regReadA <= 5'b00000;
            ID_EX_Result.regReadB <= 5'b00000;
            ID_EX_Result.regWrite <= 5'b00000;
            ID_EX_Result.regReadDataA <= 32'h00000000;
            ID_EX_Result.regReadDataB <= 32'h00000000;
        end
        // else if(ID_EX_Result.stallPeriod != 2'b00)
        // begin
        //     ID_EX_Result.pcValue <= ID_EX_Result.pcValue;
        //     ID_EX_Result.instruction <= ID_EX_Result.instruction;
        //     ID_EX_Result.signal <= ID_EX_Result.signal;
        //     ID_EX_Result.regReadA <= ID_EX_Result.regReadA;
        //     ID_EX_Result.regReadB <= ID_EX_Result.regReadB;
        //     ID_EX_Result.regWrite <= ID_EX_Result.regWrite;
        //     ID_EX_Result.regReadDataA <= ID_EX_Result.regReadDataA;
        //     ID_EX_Result.regReadDataB <= ID_EX_Result.regReadDataB;
        //     ID_EX_Result.stallPeriod <= ID_EX_Result.stallPeriod - 1;
        // end
        else
        begin
            ID_EX_Result.pcValue <= IF_ID_Result.pcValue;
            ID_EX_Result.instruction <= IF_ID_Result.instruction;
            ID_EX_Result.signal <= signal;
            ID_EX_Result.regReadA <= IF_ID_Result.instruction.rs;
            ID_EX_Result.regReadB <= IF_ID_Result.instruction.rt;
            ID_EX_Result.regWrite <= regWriteDst;
            ID_EX_Result.regReadDataA <= regDataA;
            ID_EX_Result.regReadDataB <= regDataB;
        end
    end

endmodule
