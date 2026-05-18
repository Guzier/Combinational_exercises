`timescale 1ns / 1ps
module Mux8_1(
input [11:0]sw,
output [0:0]LED
    );
    
logic [2:0] sel;
logic out;

assign sel = sw[11:9];


always_comb begin
    case(sel)
        3'b000: out = sw[0];
        3'b001: out = sw[1];
        3'b010: out = sw[2];
        3'b011: out = sw[3];
        3'b100: out = sw[4];
        3'b101: out = sw[5];
        3'b110: out = sw[6];
        3'b111: out = sw[7];
        default: out = 1'b0;
    endcase
end

assign LED = out;

endmodule
