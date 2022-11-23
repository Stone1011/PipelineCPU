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
    input jumpEnabled,
    input int jumpValue,
    input stall,
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
                pcValue <= pcValue;
            else if(jumpEnabled)
                pcValue <= jumpValue;
            else
                pcValue += 4;
        end
    end

endmodule
