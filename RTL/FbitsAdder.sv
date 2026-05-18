`timescale 1ns / 1ps

module FbitsAdder(

input [7:0]sw,
output [4:0]LED
    );

logic [3:0] A;
logic [3:0] B;
logic [4:0] out;

assign A = sw[7:4];
assign B = sw[3:0];

assign out = A+B;
assign LED[4:0] = out;    
    
endmodule
