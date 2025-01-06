`timescale 1ns / 1ps

module DeMorgan3(
   input a,
   input b,
   input c,
   output d
    );
    
assign d = ((~a)&(~b))|(~c);
endmodule
