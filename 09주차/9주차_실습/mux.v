`timescale 1ns / 1ps

module mux(
    input x, y, a, b, c, d,
    output e1, e2, e3, e4  
    );

assign e1 = a & (~x) & (~y);
assign e2 = b & x & (~y);
assign e3 = c & (~x) & y;
assign e4 = d & x & y;

endmodule