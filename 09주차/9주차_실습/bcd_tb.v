`timescale 1ns / 1ps

module bcd_tb;

reg  a0, a1, a2, a3;
wire b1, b2, b3, b4, b5, b6, b7, b8, b9;

bcd u_bcd (
    .a0(a0 ),
    .a1(a1 ),
    .a2(a2 ),
    .a3(a3 ),
    
    .b1(b1 ),
    .b2(b2 ),
    .b3(b3 ),
    .b4(b4 ),
    .b5(b5 ),
    .b6(b6 ),
    .b7(b7 ),
    .b8(b8 ),
    .b9(b9 )
);

initial begin
    a0 = 1'b0;
    a1 = 1'b0;
    a2 = 1'b0;
    a3 = 1'b0;
end

always@(a0 or a1 or a2 or a3) begin
    a0 <= #50 ~a0;
    a1 <= #100 ~a1;
    a2 <= #200 ~a2;
    a3 <= #400 ~a3;
end

initial begin
    #1000
    $finish;
end

endmodule
