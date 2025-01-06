`timescale 1ns / 1ps

module Half_Substractor(
   input a,
   input b,
   output borrow,
   output difference
    );

assign borrow = (~a) & b;
assign difference = a ^ b;
 
endmodule