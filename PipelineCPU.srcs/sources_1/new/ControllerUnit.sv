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
        casex(instruction.instructionCode)
            nop:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // addu: 000000, rs, rt, rd, 00000, 100001 => rd := rs + rt
            // subu: 000000, rs, rt, rd, 00000, 100011 => rd := rs - rt
            // add/sub will trap($stop) if overflow
            // sllv: 000000, rs, rt, rd, 00000, 000100 => rd := rt << rs
            // srlv: 000000, rs, rt, rd, 00000, 000110 => rd := rt >> rs
            // srav: 000000, rs, rt, rd, 00000, 000111 => rd := rt >>> rs
            // and:  000000, rs, rt, rd, 00000, 100100 => rd := rs and rt
            // or:   000000, rs, rt, rd, 00000, 100101 => rd := rs or rt
            // xor:  000000, rs, rt, rd, 00000, 100110 => rd := rs xor rt
            // nor:  000000, rs, rt, rd, 00000, 100111 => rd := nor(rs, rt)
            // slt:  000000, rs, rt, rd, 00000, 101010 => rd := rs < rt
            // sltu: 000000, rs, rt, rd, 00000, 101011 => rd := rs < rt (unsigned)
            addu, subu, add, sub, sllv, srlv, srav, And, Or, Xor, Nor, slt, sltu:
            begin
                signal.regWriteDst = rdDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = rtAluSrc;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(instruction.funct);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // sll:  000000, 00000, rt, rd, shamt, 000000 => rd := rt << shamt
            // srl:  000000, 00000, rt, rd, shamt, 000010 => rd := rt >> shamt
            // sra:  000000, 00000, rt, rd, shamt, 000011 => rd := rt >>> shamt
            sll, srl, sra:
            begin
                signal.regWriteDst = rdDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = shamtAluSrc;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(instruction.funct);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // jr:   000000, rs, 00000 00000, hint, 001000 => PC := rs
            jr:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = regReadA; // rs
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 1;
                signal.realBranch = 1; // actually it's not a branch, but we need to set it to 1 to avoid the hazard
            end
            // jalr: 000000, rs, 00000, rd, 00000, 001001 => rd := PC + 8; PC := rs
            jalr:
            begin
                signal.regWriteDst = rdDst;
                signal.regWriteSrc = nextPC;
                signal.aluSrc = otherAlu;
                signal.pcSrc = regReadA; // rs
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 1;
                signal.realBranch = 1; // actually it's not a branch, but we need to set it to 1 to avoid the hazard
            end
            // syscall: 000000, [19:0] code, 001100 => $finish
            syscall:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // addi: 001000, rs, rt, 16'imm => rt := rs + signExt(imm)
            addi:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = ADD;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // addiu: 001001, rs, rt, 16'imm => rt := rs + signExt(imm)
            addiu:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = UADD;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // andi: 001100, rs, rt, 16'imm => rt := rs and zeroExt(imm)
            andi:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = zeroExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = AND;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // ori:  001101, rs, rt, 16'imm => rt := rs or zeroExt(imm)
            ori:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = zeroExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = OR;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // xori: 001110, rs, rt, 16'imm => rt := rs xor zeroExt(imm)
            xori:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = zeroExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = XOR;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // slti: 001010, rs, rt, 16'imm => rt := rs < signExt(imm)
            slti:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = SLT;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // sltiu: 001011, rs, rt, 16'imm => rt := unsigned(rs) < unsigned(signExt(imm))
            sltiu:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = SLTU;
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // lw:   100011, base(rs), rt, offset(imm) => rt := M[base+offset]
            // lb:   100000, base(rs), rt, offset(imm) => rt := M[base+offset]
            // lbu:  100100, base(rs), rt, offset(imm) => rt := M[base+offset]
            // lh:   100001, base(rs), rt, offset(imm) => rt := M[base+offset]
            // lhu:  100101, base(rs), rt, offset(imm) => rt := M[base+offset]
            lw, lb, lbu, lh, lhu:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = mem;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(UADD);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 1;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // sw:   101011, base(rs), rt, offset(imm) => M[base+offset] := rt
            // sb:   101000, base(rs), rt, offset(imm) => M[base+offset] := rt[7:0]
            // sh:   101001, base(rs), rt, offset(imm) => M[base+offset] := rt[15:0]
            sw, sb, sh:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = signExtOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(UADD);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 1;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            // beq:  000100, rs, rt, offset(imm) => if rs=rt then PC = PC + offset
            // bne:  000101, rs, rt, offset(imm) => if rs!=rt then PC = PC + offset
            // blez: 000110, rs, 00000, offset(imm) => if rs<=0 then PC = PC + offset
            // bgtz: 000111, rs, 00000, offset(imm) => if rs>0 then PC = PC + offset
            // bgez: 000001, rs, 00001, offset(imm) => if rs>=0 then PC = PC + offset
            // bltz: 000001, rs, 00000, offset(imm) => if rs<0 then PC = PC + offset
            beq, bne, blez, bgtz, bgez, bltz:
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = nextPC;
                signal.aluSrc = rtAluSrc;
                signal.pcSrc = plusImm;
                signal.aluOp = ALUOp_t'(USUB);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 1;
                signal.realBranch = 1;
            end
            // lui:  001111, 00000, rt, imm => rt := (imm<<16) | 0
            lui:
            begin
                signal.regWriteDst = rtDst;
                signal.regWriteSrc = alu;
                signal.aluSrc = leftShiftOfImm;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(OR);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
            jal:
            // jal:  000011, target  => ($ra := PC + 8;) PC := PC[31:28] | target[25:0] | 2'b00
            begin
                signal.regWriteDst = raDst;
                signal.regWriteSrc = nextPC;
                signal.aluSrc = otherAlu;
                signal.pcSrc = targetImm;
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 1;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 1;
                signal.realBranch = 0;
            end
            j:
            // j:    000010, target  => PC := PC[31:28] | target[25:0] | 2'b00
            begin
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = targetImm;
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 1;
                signal.realBranch = 0;
            end
            default:
            begin
                $stop;
                signal.regWriteDst = otherDst;
                signal.regWriteSrc = zeroRegWrite;
                signal.aluSrc = otherAlu;
                signal.pcSrc = normalPC;
                signal.aluOp = ALUOp_t'(0);
                signal.regWriteEnabled = 0;
                signal.memReadEnabled = 0;
                signal.memWriteEnabled = 0;
                signal.branch = 0;
                signal.realBranch = 0;
            end
        endcase
    end

endmodule
