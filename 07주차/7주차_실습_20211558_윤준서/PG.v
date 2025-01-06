`timescale 1ns / 1ps

module PG(
   input a, b, c, d,
   output e
);
    
assign e = a ^ b ^ c ^ d;
    
endmodule
