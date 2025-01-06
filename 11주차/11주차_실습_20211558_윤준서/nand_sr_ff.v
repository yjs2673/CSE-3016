

`timescale 1ns / 1ps

module nand_sr_ff(
    input s, r, clock,
    output q, nq
);

assign q = ~((~(s & clock)) & nq);
assign nq = ~((~(r & clock)) & q);
    
endmodule