`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/24 01:32:31
// Design Name: 
// Module Name: GeneralPurposeRegisters
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


module GeneralPurposeRegisters(
    input SystemSignal system,
    input Vec5 readNoA,
    input Vec5 readNoB,
    input Vec5 writeNo,
    input writeEnabled,
    input int writeContent,
    input int programCounter,

    output int readResultA,
    output int readResultB
    );

    int GPR [31:0];
    
    function RESET;
    ;
        for(int i = 0; i < 32; i++)
            GPR[i] <= 0;
    endfunction

    initial
    begin
        RESET();
    end

    always_ff @(posedge system.clock) 
    begin
        if(system.reset)
            RESET();
        else if(writeEnabled && writeNo != 0)
        begin
            $display("@%h: $%d <= %h", programCounter, writeNo, writeContent);
            GPR[writeNo] <= writeContent;
        end
    end

    assign readResultA = GPR[readNoA];
    assign readResultB = GPR[readNoB];

endmodule
