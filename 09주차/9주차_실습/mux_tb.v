`timescale 1ns / 1ps

module mux_tb;

reg  x, y, a, b, c, d;
wire e1, e2, e3, e4;

mux u_mux (
    .x(x ),
    .y(y ),
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    
    .e1(e1 ),
    .e2(e2 ),
    .e3(e3 ),
    .e4(e4 )
);

initial begin
    x = 1'b0;
    y = 1'b0;
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(x or y or a or b or c or d) begin
    x <= #10 ~x;
    y <= #20 ~y;
    a <= #40 ~a;
    b <= #80 ~b;
    c <= #160 ~c;
    d <= #320 ~d;
end

initial begin
    #1000
    $finish;
end

endmodule
