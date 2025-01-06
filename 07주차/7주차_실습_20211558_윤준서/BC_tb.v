`timescale 1ns / 1ps

module BC_tb;

reg a1, a2, b1, b2;
wire c, d, e;

BC u_BC(
    .a1(a1 ),
    .a2(a2 ),
    .b1(b1 ),
    .b2(b2 ),

    .c(c ),
    .d(d ),    
    .e(e )
    );

initial begin
    a1 = 1'b0;
    a2 = 1'b0;
    b1 = 1'b0;
    b2 = 1'b0;
end

always @(a1 or a2 or b1 or b2) begin
    a1 <= #50 ~a1;
    a2 <= #100 ~a2;
    b1 <= #200 ~b1;
    b2 <= #400 ~b2;
end

initial begin
    #1000
    $finish;
end

endmodule
