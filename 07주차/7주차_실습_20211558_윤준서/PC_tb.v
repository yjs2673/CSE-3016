`timescale 1ns / 1ps

module PC_tb;

reg a ,b, c, d, e;
wire f;

PC u_PC(
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    
    .f(f )
    );

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    e = 1'b0;
end

always @(a or b or c or d or e) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c <= #80 ~c;
    d <= #160 ~d;
    e <= #320 ~e;
end

initial begin
    #1000
    $finish;
end

endmodule
