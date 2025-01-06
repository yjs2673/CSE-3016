`timescale 1ns / 1ps

module Half_Adder(
   input a,
   input b,
   output c,
   output sum
    );

assign c = a & b;
assign sum = a ^ b;
 
endmodule