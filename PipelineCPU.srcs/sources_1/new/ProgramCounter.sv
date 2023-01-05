`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 00:15:14
// Design Name: 
// Module Name: ProgramCounter
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

module ProgramCounter(
    input SystemSignal system,
    input logic jumpEnabled,
    input int jumpValue,
    input logic stall,
    output int pcValue
    );

    always_ff @(posedge system.clock)
    begin
        if(system.reset)
        begin
            pcValue <= 32'h3000;
        end
        else
        begin
            if(stall)
            begin
                pcValue <= pcValue;
                `ifdef SHOW_STALLS
                $display("Stall at PC: 0x%08x", pcValue);
                `endif
            end
            else if(jumpEnabled)
                pcValue <= jumpValue;
            else
                pcValue <= pcValue + 4;
        end
    end

    `ifdef DEBUG
    always_ff @(posedge system.clock)
    begin
        if(system.reset)
            $display("PC: 0x%08x", 32'h3000);
        else
            $display("PC: 0x%08x", pcValue);
    end
    `endif

endmodule
