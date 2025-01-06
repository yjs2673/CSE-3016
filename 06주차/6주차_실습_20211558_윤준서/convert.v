`timescale 1ns / 1ps

module convert(
   input a,
   input b,
   input c,
   input d,
   output e,
   output f,
   output g,
   output h
    );
   
assign e = (b & c) | (b & d) | a;
assign f = a | (b & (~d)) | (b & c);
assign g = a | ((~b) & c) | (b & (~c) & d);
assign h = d;
    
endmodule
