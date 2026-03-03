`timescale 1ns / 1ps

module twoOneMultiplexer_tb();
    reg[1:0] I0, I1;
    reg S, E;
    wire[1:0] Y;
    
    twoOneMultiplexer uut(I0,I1,S,E,Y);
    
    initial begin
        #10 S = 1'b1;
        E = 1'b0;
        I0 = 1'b1;
        I1 = 2'b10;
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
