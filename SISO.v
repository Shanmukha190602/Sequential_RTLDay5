`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 20:34:58
// Design Name: 
// Module Name: SISO
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


module SISO(

    input clk,reset,d,
    output v
    );
    
    reg [3:0] q;
    
    always @ (posedge clk)
        
        if (reset==1) begin
            q <= 4'b0000;
        end
        else begin
        q <= q>>1;
        q[3] <= d;
        end 
     
     assign v = q[0];
endmodule
