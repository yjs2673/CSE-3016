
`timescale 1ns / 1ps

module sub(
    input bin,
    
    input [3:0] a,
    input [3:0] b,

    output [3:0] B,
    output [3:0] D
);

assign D[0] = a[0] ^ b[0] ^ bin;
assign B[0] = ((~(a[0] ^ b[0])) & bin) | ((~a[0]) & b[0]);

assign D[1] = a[1] ^ b[1] ^ B[0];
assign B[1] = ((~(a[1] ^ b[1])) & B[0]) | ((~a[1]) & b[1]);

assign D[2] = a[2] ^ b[2] ^ B[1];
assign B[2] = ((~(a[2] ^ b[2])) & B[1]) | ((~a[2]) & b[2]);

assign D[3] = a[3] ^ b[3] ^ B[2];
assign B[3] = ((~(a[3] ^ b[3])) & B[2]) | ((~a[3]) & b[3]);

endmodule

