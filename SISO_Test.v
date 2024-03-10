`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 20:56:23
// Design Name: 
// Module Name: SISO_Test
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


module SISO_Test();

    reg clk;
    reg reset;
    reg D; 
    wire v; // Output
    
    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in nanoseconds
    
    // Instantiating the module
    SISO Dut (
        .clk(clk),
        .reset(reset),
        .d(D),
        .v(v)
    );
    
    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;
    always #10 D = ~D;
    
    initial begin
        
        clk = 0;
        reset = 1;
        D = 0;
        #10 reset = 0;
    end

   // Dislaying output
    
    initial begin
    
        $monitor("Time : %d ns, Clk = %B, D = %B, Output = %B",$time,clk,D,v);
        #100 $finish;
    end
endmodule
