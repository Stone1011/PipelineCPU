`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 01:01:25
// Design Name: 
// Module Name: DataMemory
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

module DataMemory(
    SystemSignal system,
    input int address, 
    input writeEnabled, 
    input readEnabled,
    input int writeInput,
    output int readResult
    );

    Vec32 memory [2047:0];

    assign readResult = readEnabled ? memory[address[12:2]] : 0;

    always_ff @(posedge system.clock) 
    begin
        if(system.reset)
        begin
            for(int i = 0; i < 2048; i++)
                memory[i] <= 0;
        end
        else if(writeEnabled)
        begin
            memory[address[12:2]] <= writeInput;
        end
    end

endmodule
