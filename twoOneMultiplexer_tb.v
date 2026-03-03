`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2026 08:05:09 AM
// Design Name: 
// Module Name: twoOneMultiplexer_tb
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


module twoOneMultiplexer_tb();
    reg I0, I1, S, E;
    wire Y;
    
    twoOneMultiplexer uut(I0,I1,S,E,Y);
    
    initial begin
        #10 S = 1'b1;
        E = 1'b0;
        I0 = 1'b1;
        I1 = 2'b2;
        #10 $display("S = %b, E = %b, Y = %b, I0 = %b, I1 = %b", S,E,Y,I0,I1);
        
        #10 S = 1'b0;
        E = 1'b0;
        I0 = 1'b0;
        I1 = 1'b1;
        #10 $display("S = %b, E = %b, Y = %b, I0 = %b, I1 = %b", S,E,Y,I0,I1);
        
        #10 S = 1'b1;
        E = 1'b1;
        I0 = 1'b0;
        I1 = 1'b1;
        #10 $display("S = %b, E = %b, Y = %b, I0 = %b, I1 = %b", S,E,Y,I0,I1);
        
        #10 S = 1'b0;
        E = 1'b1;
        I0 = 1'b0;
        I1 = 1'b1;
        #10 $display("S = %b, E = %b, Y = %b, I0 = %b, I1 = %b", S,E,Y,I0,I1);
    end
endmodule
