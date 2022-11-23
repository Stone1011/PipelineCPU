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

`endif
