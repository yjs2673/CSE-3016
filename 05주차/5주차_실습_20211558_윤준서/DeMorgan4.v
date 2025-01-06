`timescale 1ns / 1ps

module DeMorgan4(
   input a,
   input b,
   input c,
   output d
    );
    
assign d = ~((a|b)&c);
endmodule
