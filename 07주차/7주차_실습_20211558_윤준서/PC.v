`timescale 1ns / 1ps

module PC(
   input a, b, c, d, e,
   output f
);
    
assign f = a ^ b ^ c ^ d ^ e;
    
endmodule
