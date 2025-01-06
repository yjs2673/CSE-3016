`timescale 1ns / 1ps

module Full_Substractor(
   input a,
   input b,
   input b_n_1,
   output b_n,
   output difference
    );

assign b_n = (b_n_1 & (~(a^b))) | ((~a)&b);
assign difference = (a^b)^b_n_1;
 
endmodule