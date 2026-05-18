`timescale 1ns / 1ps

module BCD_to_7Seg(
input [2:0]sw,
output [6:0] seg,
output [3:0] an
    );

logic [2:0] A; //Primer variable
logic [6:0] out; //variable de salida 
assign A = sw[2:0]; //Asignacion de la variable con switches

always_comb begin
    case(A)
        3'd0: out = 7'b1000000;
        3'd1: out = 7'b1111001;
        3'd2: out = 7'b0100100;
        3'd3: out = 7'b0110000;
        3'd4: out = 7'b0011001;
        3'd5: out = 7'b0010010;
        3'd6: out = 7'b0000010;
        3'd7: out = 7'b1111000;
        default: out = 7'b1111111;
    endcase
end
    
assign seg = out; 
assign an = 4'b0000;   
    
endmodule
