`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/27 20:54:53
// Design Name: 
// Module Name: mips_tb
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


module mips_tb;

reg reset, clock;

// Change the TopLevel module's name to yours
CPU CPU(.reset(reset), .clock(clock));

integer k;
initial begin
    // posedge clock

    // Hold reset for one cycle
    reset = 1;
    clock = 0; #10;
    clock = 1; #10;
    clock = 0; #1;
    reset = 0; #9;
    
    // $stop; // Comment this line if you don't need per-cycle debugging

    for (k = 0; ; k = k + 1) begin // 5000 clocks
        clock = 1; #5;
        clock = 0; #5;
    end

    // Please finish with `syscall`, finishes here may mean the clocks are not enough
    $finish;
end
    
endmodule

