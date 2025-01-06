`timescale 1ns / 1ps

module PG_tb;

reg a ,b, c, d;
wire e;

PG u_PG(
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    
    .e(e )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always @(a or b or c or d) begin
    a <= #50 ~a;
    b <= #100 ~b;
    c <= #200 ~c;
    d <= #400 ~d;
end

initial begin
    #1000
    $finish;
end

endmodule
