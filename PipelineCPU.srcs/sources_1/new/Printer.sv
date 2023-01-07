`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/07 17:40:24
// Design Name: 
// Module Name: Printer
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

module Printer(
    input SystemSignal system,

    input Vec5 GPRWriteNo,
    input int GPRWriteContent,
    input int GPRProgramCounter,
    input logic GPRWriteEnabled,

    input int address,
    input int DMProgramCounter,
    input int DMWriteInput,
    input logic DMWriteEnabled
    );
    integer fd;

    initial 
    begin
        $fclose($fopen(`outputPath, "w+"));
    end

    always_ff @(posedge system.clock)
    begin
        if(!system.reset)
        begin
            if(GPRWriteEnabled)
                $display("@%h: $%d <= %h", GPRProgramCounter, GPRWriteNo, GPRWriteContent);
            if(DMWriteEnabled)
                $display("@%h: *%h <= %h", DMProgramCounter, address, DMWriteInput);

            fd = $fopen(`outputPath, "a+");
            if(GPRWriteEnabled)
                $fdisplay(fd, "@%h: $%d <= %h", GPRProgramCounter, GPRWriteNo, GPRWriteContent);
            if(DMWriteEnabled)
                $fdisplay(fd, "@%h: *%h <= %h", DMProgramCounter, address, DMWriteInput);
            $fclose(fd);
        end
    end
endmodule
