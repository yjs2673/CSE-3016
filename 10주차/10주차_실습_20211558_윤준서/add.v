
`timescale 1ns / 1ps

module add(
    input cin,
    
    input [3:0] a,

    input [3:0] b,

    output [3:0] C,

    output [3:0] S
    );

assign S[0] = a[0] ^ b[0] ^ cin;
assign C[0] = (cin & (a[0] ^ b[0])) | (a[0] & b[0]);

assign S[1] = a[1] ^ b[1] ^ C[0];
assign C[1] = (C[0] & (a[1] ^ b[1])) | (a[1] & b[1]);

assign S[2] = a[2] ^ b[2] ^ C[1];
assign C[2] = (C[1] & (a[2] ^ b[2])) | (a[2] & b[2]);

assign S[3] = a[3] ^ b[3] ^ C[2];
assign C[3] = (C[2] & (a[3] ^ b[3])) | (a[3] & b[3]);

endmodule

