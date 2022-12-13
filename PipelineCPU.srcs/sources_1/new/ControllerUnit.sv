`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/14 00:24:22
// Design Name: 
// Module Name: ControllerUnit
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


module ControllerUnit(
    input SystemSignal system,
    Instruction instruction,

    output ControlSignal signal
    );

    always_comb 
    begin
        case(instruction.instructionCode)
        begin
            nop:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(0);
                regWriteEnabled = 0;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 0;
            end
            // addu: 000000, rs, rt, rd, 00000, 100001 => rd := rs + rt
            // subu: 000000, rs, rt, rd, 00000, 100011 => rd := rs - rt
            addu, subu:
            begin
                signal.regWriteDst = rdDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = rtAluSrc;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(instruction.funct);
                regWriteEnabled = 1;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 0;
            end
            // jr:   000000, rs, 00000 00000, hint, 001000 => PC := rs
            jr:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = regReadA; // rs
                aluOp = ALUOp_t'(0);
                regWriteEnabled = 0;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 1;
            end
            // syscall: 000000, [19:0] code, 001100 => $finish
            syscall:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(0);
                regWriteEnabled = 0;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 0;
            end
            // ori:  001101, rs, rt, 16'imm => rt := rs or zeroExt(imm)
            ori:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = zeroExtOfImm;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(instruction.funct);
                regWriteEnabled = 1;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 0;
            end
            // lw:   100011, base(rs), rt, offset(imm) => rt := M[base+offset]
            lw:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = mem;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(ADD);
                regWriteEnabled = 1;
                memReadEnabled = 1;
                memWriteEnabled = 0;
                branch = 0;
            end
            // sw:   101011, base(rs), rt, offset(imm) => M[base+offset] := rt
            sw:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(ADD);
                regWriteEnabled = 0;
                memReadEnabled = 0;
                memWriteEnabled = 1;
                branch = 0;
            end
            // beq:  000100, rs, rt, offset(imm) => if rs=rt then PC = PC + offset
            beq:
            begin
                signal.regWriteDst = raDst;
                signal.regWriteSrc = nextPC;
                signal.aluSrc = rtAluSrc;
                signal.pcSrc = plusImm;
                aluOp = ALUOp_t'(SUB);
                regWriteEnabled = 1;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 1;
            end
            // lui:  001111, 00000, rt, imm => rt := (imm<<16) | 0
            lui:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = leftShiftOfImm;
                signal.pcSrc = normalPC;
                aluOp = ALUOp_t'(OR);
                regWriteEnabled = 1;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 0;
            end
            jal:
            // jal:  000011, target  => ($ra := PC + 8;) PC := PC[31:28] | target[25:0] | 2'b00
            begin
                signal.regWriteDst = raDst;
                signal.regWriteSrc = nextPC;
                signal.aluSrc = otherAlu;
                signal.pcSrc = targetImm;
                aluOp = ALUOp_t'(0);
                regWriteEnabled = 1;
                memReadEnabled = 0;
                memWriteEnabled = 0;
                branch = 1;
            end
        end
    end

endmodule