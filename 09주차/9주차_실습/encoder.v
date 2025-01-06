`timescale 1ns / 1ps

module encoder(
    input w, x, y, z,
    output e0, e1
    );
    
    assign e0 = (~x) & (~z);
    assign e1 = (~y) & (~z);
    
endmodule
