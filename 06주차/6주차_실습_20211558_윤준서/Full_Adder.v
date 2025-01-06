`timescale 1ns / 1ps

module Full_Adder(
   input a,
   input b,
   input c_in,
   output c_out,
   output sum
    );

assign c_out = (c_in & (a^b)) | (a&b);
assign sum = (a^b)^c_in;
 
endmodule
