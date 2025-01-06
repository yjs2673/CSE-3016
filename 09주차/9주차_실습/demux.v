`timescale 1ns / 1ps

module demux(
    input x, y, f,
    output e1, e2, e3, e4
    );
    
    assign e1 = f & (~x) & (~y);
    assign e2 = f & (~x) & y;
    assign e3 = f & x & (~y);
    assign e4 = f & x & y;

endmodule