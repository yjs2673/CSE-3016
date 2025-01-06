`timescale 1ns / 1ps

module bcd(
    input a0, a1, a2, a3,
    output b1, b2, b3, b4, b5, b6, b7, b8, b9
    );
      
    assign b1 = a0 & ~a1 & ~a2 & ~a3;
    assign b2 = ~a0 & a1 & ~a2 & ~a3;
    assign b3 = a0 & a1 & ~a2 & ~a3;
    assign b4 = ~a0 & ~a1 & a2 & ~a3;
    assign b5 = a0 & ~a1 & a2 & ~a3;
    assign b6 = ~a0 & a1 & a2 & ~a3;
    assign b7 = a0 & a1 & a2 & ~a3;
    assign b8 = ~a0 & ~a1 & ~a2 & a3;
    assign b9 = a0 & ~a1 & ~a2 & a3;
    
endmodule