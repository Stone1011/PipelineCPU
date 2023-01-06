# MIPS32五级流水全旁路CPU设计

## 1  设计概述

本实验使用System Verilog语言设计了一个基于MIPS 32指令集的五级流水全旁路CPU。

它支持50条指令，如下所示：

* ALU类型： `ADD / ADDU / SUB / SUBU / SLL / SRL / SRA / SLLV / SRLV / SRAV / AND / OR / XOR / NOR / SLT / SLTU`
* 加载立即数到高位： `LUI`
* 带有立即数的ALU类型： `ADDI / ADDIU / ANDI / ORI / XORI / SLTI / SLTIU`
* 访存类型： `LB / LBU / LH / LHU / LW / SB / SH / SW`
* 分支类型： `BEQ / BNE / BLEZ / BGTZ / BGEZ / BLTZ`
* 无条件跳转类型： `JR / JALR / J / JAL`
* 乘除及LOHI寄存器类型： `MULT / MULTU / DIV / DIVU / MFHI / MTHI / MFLO / MTLO`
* 其他： `SYSCALL / NOP`

它包含了五级流水线和其他必要的组件，结构如下：

* 取指模块（InstructionFetch）
  * 程序计数器（ProgramCounter）
  * 指令内存（InstructionMemory）
* 译码模块（InstructionDecode）
  * 控制单元（ControllerUnit）
  * 分支数据转发模块（ForwardingBranch）
* 执行模块（Execution）
  * 算术逻辑单元（ArighmaticLogicUnit）
  * 乘除运算单元（MultiplicationDivisionUnit）
  * 符号扩展单元（SignExtendUnit）
  * ALU、MDU数据转发模块（ForwardingALU）
* 访存模块（Memory）
  * 数据内存（DataMemory）
* 回写寄存器模块（WriteBack）
* 通用寄存器堆（GeneralPurposeRegisters）
* 转发控制单元（ForwardingUnit）
* 阻塞控制单元（BlockingUnit）

流水线间寄存器共4个，分别在五级流水之间。

## 2  控制信号设计

CPU中的控制信号设计如下所示：

```systemverilog
typedef struct packed {
    RegWriteDst_t regWriteDst; // Which register is going to be written
    RegWriteSrc_t regWriteSrc; // What data is going to be written into register
    ALUSrc_t aluSrc; // What are ALU&MDU's operands from
    PCSrc_t pcSrc; // What is new PC value from
    ALUOp_t aluOp; // What is ALU's operator

    logic special; // Whether it uses MDU
    logic regWriteEnabled; // Whether it writes register
    logic memReadEnabled; // Whether it reads data memory
    logic memWriteEnabled; // Whether it writes data memory
    logic branch; // Whether it modifies PC value
    logic realBranch; // Whether the branch needs conditions
} ControlSignal;
```

对于前半部分的多值信号，使用枚举`enum`类型包装。实现控制单元时，使用硬布线的方式，通过`casex`分支，对相似的指令进行分类，之后赋上其对应的控制信号值。

控制信号在译码阶段根据赋给流水线间寄存器，随后将随流水线移动，并在不同的阶段指导不同的元件。

## 3  竞争冒险处理

### 3.1  全旁路转发设计

首先，设计转发控制单元，根据`ID_EX`、`EX_MEM`、`MEM_WB`流水线间寄存器的值，确定位于`IF_ID`、`ID_EX`寄存器中指令所使用通用寄存器数据的来源，以分别应对控制冒险和数据冒险。对于非零的通用寄存器地址，转发控制单元按照由先及后的顺序，依次判断不同流水线间寄存器的数据有效性，并发出信号。转发信号如下定义：

```systemverilog
typedef enum Vec2
{
    Forwarding_GPR = 2'b00, // From Register Files
    Forwarding_EX_MEM = 2'b01, // From Last time ALU Result
    Forwarding_MEM_WB = 2'b10,  // From DM or The Second Last ALU Result
    Forwarding_ID_EX = 2'b11 // For Control Hazard, need to wait ALU's result
} Forwarding_t;
```

其次，设计数据转发单元。对于数据冒险而言，根据`EX_MEM`和`MEM_WB`寄存器的值，获取到最新的通用寄存器值作为ALU操作数。对于控制冒险而言，根据`ID_EX`、`EX_MEM`、`MEM_WB`等寄存器的值，确定分支判断操作数的最新值，并给出是否需要阻塞的信号。

### 3.2  阻塞控制

此设计中的“阻塞”定义如下。一旦阻塞信号发出，则：

* 下一时钟信号到来时，PC值保持不变；
* 下一时钟信号到来时，`IF_ID`寄存器保持不变；
* 下一时钟信号到来时，`ID_EX`寄存器清零。

这等价于在下一时钟信号到来之时，使取指、译码阶段指令保持，并在执行阶段插入`NOP`指令。

阻塞控制单元会根据输入的`IF_ID`、`ID_EX`寄存器判断是否存在需要阻塞的数据冒险，以及由控制冒险旁路单元发出的是否需要阻塞信号，和`MDU`发出的“忙”信号给出CPU的阻塞信号，发送给取指和译码模块。阻塞情况为下面情况任一成立：

* 取指阶段结束的指令将在执行阶段需要访问刚刚译码结束的指令待写回的数据，且待写回数据由内存读而产生；
* 控制冒险旁路单元指出需要阻塞；
* 取指结束的指令乘除法或LOHI寄存器访问指令，且下面情况任一成立：
  * `MDU`正忙；
  * 刚译码结束的指令为乘除法。

