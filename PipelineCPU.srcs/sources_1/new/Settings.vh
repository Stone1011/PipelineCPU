`ifndef SETTINGS_VH
`define SETTINGS_VH

typedef struct packed 
{
    logic reset;
    logic clock;
} SystemSignal;

typedef logic [31:0] Vec32;
typedef logic [5:0] Vec6;
typedef logic [4:0] Vec5;
typedef logic [1:0] Vec2;
typedef logic [2:0] Vec3;
typedef logic [32:0] Vec33;
typedef logic [25:0] Vec26;
typedef logic [15:0] Vec16;

typedef enum Vec6
{
    ADD = 6'b100000,
    UADD = 6'b100001,
    SUB = 6'b100010,
    USUB = 6'b100011,
    LSHIFT = 6'b000000,
    LRSHIFT = 6'b000010,
    ARSHIFT = 6'b000011,
    AND = 6'b100100,
    OR = 6'b100101,
    XOR = 6'b100110,
    NOR = 6'b100111
} ALUOp_t;

typedef enum Vec32
{
    // 6 + 5 + 5 + 5 + 5 + 6 = 32
    nop     = 32'b000000_00000_00000_00000_00000_000000,
    // codet + rs + rt + rd + 00000 + funct
    addu    = 32'b000000_?????_?????_?????_00000_100001,
    subu    = 32'b000000_?????_?????_?????_00000_100011,
    jr      = 32'b000000_?????_00000_00000_00000_001000, // what is hint?
    syscall = 32'b000000_00000_00000_00000_00000_001100, // what is code?
    // xor     = 32'b000000_?????_?????_?????_00000_100110,
    // codet + rs + rt + 16'imm
    ori     = 32'b001101_?????_?????_????????????????,
    lw      = 32'b100011_?????_?????_????????????????,
    sw      = 32'b101011_?????_?????_????????????????,
    beq     = 32'b000100_?????_?????_????????????????,
    lui     = 32'b001111_00000_?????_????????????????,
    // codet + 26'imm
    jal     = 32'b000011_??????????????????????????
    // j       = 32'b000010_??????????????????????????
} InstructionCode_t;

typedef enum Vec2 
{  
    rtDst = 2'b00,
    rdDst = 2'b01,
    raDst = 2'b10,
    otherDst = 2'b11
} RegWriteDst_t;

typedef enum Vec3
{
    rtAluSrc = 3'b000,
    signExtOfImm = 3'b001,
    leftShiftOfImm = 3'b010,
    zeroExtOfImm = 3'b011,
    otherAlu = 3'b100
} ALUSrc_t;

typedef enum Vec2 
{
    regReadA = 2'b00,
    plusImm = 2'b01,
    targetImm = 2'b10,
    normalPC = 2'b11
} PCSrc_t;

typedef enum  
{  
    alu = 2'b00,
    mem = 2'b01,
    nextPC = 2'b10,
    zeroRegWrite = 2'b11
} RegWriteSrc_t;

typedef struct packed {
    InstructionCode_t instructionCode;
    Vec5 rs, rt, rd;
    Vec16 imm16;
    Vec26 imm26;
    Vec6 funct;
} Instruction;

typedef struct packed {
    RegWriteDst_t regWriteDst;
    RegWriteSrc_t regWriteSrc;
    ALUSrc_t aluSrc;
    PCSrc_t pcSrc;
    ALUOp_t aluOp;

    logic regWriteEnabled;
    logic memReadEnabled;
    logic memWriteEnabled;
    logic branch;
} ControlSignal;

typedef struct packed {
    int pcValue;
    Instruction instruction;
} IF_ID_Reg;

typedef struct packed {
    int pcValue;
    Instruction instruction;
    ControlSignal signal;
    Vec5 regReadA;
    Vec5 regReadB;
    Vec5 regWrite;
} ID_EX_Reg;

typedef struct packed {
    int pcValue;
    Instruction instruction;
    ControlSignal signal;
    Vec5 regWrite;
    int aluResult;
    logic aluOverflow;
} EX_MEM_Reg;

typedef struct packed {
    int pcValue;
    Instruction instruction;
    ControlSignal signal;
    Vec5 regWrite;
    int aluResult;
    logic aluOverflow;
    int memReadData;
} MEM_WB_Reg;

`endif
