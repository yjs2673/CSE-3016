`timescale 1ns / 1ps

module BC(
   input a1, a2, b1, b2,
   output c, d, e
    );
    
assign c = (a1 & (~b1)) || (a1 & a2 & (~b2)) || (a2 & (~b1) & (~b2));
assign d = ~(a1 ^ b1) & ~(a2 ^ b2);
assign e = ((~a1) & b1) || ((~a2) & b1 & b2) || ((~a1) & (~a2) & b2);
    
endmodule
