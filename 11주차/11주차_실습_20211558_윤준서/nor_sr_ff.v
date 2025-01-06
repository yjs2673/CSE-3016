

`timescale 1ns / 1ps

module nor_sr_ff(
    input s, r, clock,
    output q, nq
);

assign q = ~((r & clock) | nq);
assign nq = ~((s & clock) | q);
    
endmodule