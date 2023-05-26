# Design of a Five-Stage Pipelined CPU with Full Forwarding for MIPS32 Architecture

## 1 Design Overview

This experiment implements a five-stage pipelined CPU with full forwarding using the System Verilog language and based on the MIPS32 instruction set.

### 1.1 Instruction Set Support

The CPU supports 50 instructions, as follows:

- ALU instructions: `ADD / ADDU / SUB / SUBU / SLL / SRL / SRA / SLLV / SRLV / SRAV / AND / OR / XOR / NOR / SLT / SLTU`
- Load immediate to upper: `LUI`
- ALU instructions with immediate value: `ADDI / ADDIU / ANDI / ORI / XORI / SLTI / SLTIU`
- Memory access instructions: `LB / LBU / LH / LHU / LW / SB / SH / SW`
- Branch instructions: `BEQ / BNE / BLEZ / BGTZ / BGEZ / BLTZ`
- Unconditional jump instructions: `JR / JALR / J / JAL`
- Multiplication, division, and LOHI register instructions: `MULT / MULTU / DIV / DIVU / MFHI / MTHI / MFLO / MTLO`
- Other instructions: `SYSCALL / NOP`

### 1.2 Component Architecture

The CPU consists of a five-stage pipeline and other necessary components, structured as follows:

- Instruction Fetch module (InstructionFetch)
  - Program Counter (PC)
  - Instruction Memory (InstructionMemory)
- Instruction Decode module (InstructionDecode)
  - Control Unit (ControllerUnit)
  - Forwarding Branch module (ForwardingBranch)
- Execution module (Execution)
  - Arithmetic Logic Unit (ArithmeticLogicUnit)
  - Multiplication Division Unit (MultiplicationDivisionUnit)
  - Sign Extend Unit (SignExtendUnit)
  - Forwarding ALU and MDU module (ForwardingALU)
- Memory module (Memory)
  - Data Memory (DataMemory)
- Write Back Register module (WriteBack)
- General Purpose Register File (GeneralPurposeRegisters)
- Forwarding Control Unit (ForwardingUnit)
- Blocking Control Unit (BlockingUnit)
- Log Output Unit (Printer)

There are four pipeline registers between the five pipeline stages.

## 2 Control Signal Design

The control signal design in the CPU is as follows:

```systemverilog
typedef struct packed {
    RegWriteDst_t regWriteDst; // Which register is going to be written
    RegWriteSrc_t regWriteSrc; // What data is going to be written into the register
    ALUSrc_t aluSrc; // What are the ALU & MDU's operands from
    PCSrc_t pcSrc; // What is the new PC value from
    ALUOp_t aluOp; // What is the ALU's operator

    logic special; // Whether it uses the MDU
    logic regWriteEnabled; // Whether it writes to the register
    logic memReadEnabled; // Whether it reads from data memory
    logic memWriteEnabled; // Whether it writes to data memory
    logic branch; // Whether it modifies the PC value
    logic realBranch; // Whether the branch needs conditions
} ControlSignal;
```

For the multi-valued signals in the first half, they are wrapped using an enumeration `enum` type. When implementing the control unit, a hardwired approach is used. Similar instructions are classified using `casex` branches, and their corresponding control signal values are assigned.

The control signals are assigned to the pipeline registers in the decode stage, then propagated through the pipeline stages, guiding different components in different stages.

## 3 Handling Data Hazards

### 3.1 Full Forwarding Design

Firstly, a forwarding control unit is designed to determine the source of data used by the instructions in the `IF_ID` and `ID_EX` registers based on the values of the `ID_EX`, `EX_MEM`, and `MEM_WB` pipeline registers. This is done to handle control hazards and data hazards separately. For non-zero general-purpose register addresses, the forwarding control unit sequentially checks the validity of the data in different pipeline registers in a predetermined order and issues signals accordingly. The forwarding signals are defined as follows:

```systemverilog
typedef enum Vec2
{
    Forwarding_GPR = 2'b00, // From Register Files
    Forwarding_EX_MEM = 2'b01, // From Last time ALU Result
    Forwarding_MEM_WB = 2'b10,  // From DM or The Second Last ALU Result
    Forwarding_ID_EX = 2'b11 // For Control Hazard, need to wait for ALU's result
} Forwarding_t;
```

Secondly, a data forwarding unit is designed. For data hazards, it retrieves the latest values from the general-purpose registers based on the values of the `EX_MEM` and `MEM_WB` registers and uses them as ALU operands. For control hazards, it determines the latest value for the branch comparison operand based on the values of the `ID_EX`, `EX_MEM`, `MEM_WB`, and other registers, and provides a signal indicating whether blocking is required.

### 3.2 Blocking Control

In this design, "blocking" is defined as follows: Once a blocking signal is issued, the following actions take place:

- When the next clock signal arrives, the PC value remains unchanged.
- When the next clock signal arrives, the `IF_ID` register remains unchanged.
- When the next clock signal arrives, the `ID_EX` register is cleared.

This is equivalent to keeping the fetch and decode stage instructions when the next clock signal arrives and inserting a `NOP` instruction during the execution stage.

The blocking control unit determines whether there is a data hazard that requires blocking based on the values of the `IF_ID` and `ID_EX` registers, whether a blocking signal is issued by the control hazard forwarding unit, and whether the `MDU` issues a "busy" signal. The blocking signal is then sent to the instruction fetch and decode modules. Blocking occurs under any of the following conditions:

- The instruction at the end of the fetch stage needs to access the data to be written back by the just-decoded instruction, and the data to be written back is produced by a memory read.
- The control hazard forwarding unit indicates that blocking is required.
- The instruction at the end of the fetch stage is a multiplication, division, or LOHI register access instruction, and any of the following conditions are met:
  - The `MDU` is busy.
  - The just-decoded instruction is a multiplication or division instruction.

## 4 Functional Testing

### 4.1 Testing Method

The `Mars.jar` tool is used to generate logs for the register file and data memory for different test assembly files. These logs are then compared with the output files from the log output unit `Printer` for verification.

### 4.2 Testing Results

Customized small-scale test cases were created and passed for different instructions, including the following:

- `add-series`: Overall framework and data hazard testing
- `branch-series`: Branch instruction and control hazard testing
- `arith-series`: ALU operation instruction testing
- `memory-series`: Memory read/write instruction testing
- `multi-series`: Multiplication, division, and LOHI register read/write testing

Subsequently, comprehensive testing was performed using the integrated tests from `Mips50TestCodeAns`. The generated output from the CPU is compared against the standard answer, and the results are as shown in the image provided. All test cases passed, and there were no differences between the generated output and the standard answer, except for whitespace.

![image-20230107203317122](/image-20230107203317122.png)

## 5 Conclusion and Future Prospects

This design has completed a five-stage pipelined CPU model based on the MIPS32 architecture, incorporating full forwarding and bypassing mechanisms. In terms of functionality, it performs well and can handle the majority of the defined instruction set. In terms of performance, it has a constant-level difference in clock cycle consumption compared to CPU models that do not use optimization techniques such as multi-issuing and branch prediction.

In summary, the main limitation of this design is its relatively simplistic blocking control, which may result in additional blocking cycles for multiplication and division instructions. Additionally, considering the inclusion of simple branch prediction techniques could further optimize performance.
