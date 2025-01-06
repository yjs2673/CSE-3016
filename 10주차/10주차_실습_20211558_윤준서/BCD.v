
`timescale 1ns / 1ps

module BCD(
    input cin,
    input [3:0] a,
    input [3:0] b,
    
    output [3:0] s,
    output check
    );

wire [3:0] c;

assign s[0] = a[0]^b[0]^cin;
assign c[0] = (cin & (a[0]^b[0])) | (a[0] & b[0]);

assign s[1] = a[1]^b[1]^c[0];
assign c[1] = (c[0] & (a[1]^b[1])) | (a[1] & b[1]);

assign s[2] = a[2]^b[2]^c[1];
assign c[2] = (c[1] & (a[2]^b[2])) | (a[2] & b[2]);

assign s[3] = a[3]^b[3]^c[2];
assign c[3] = (c[2] & (a[3]^b[3])) | (a[3] & b[3]);

assign check = (c[3] | (s[2] & s[3]) | (s[1] & s[3]));

endmodule

