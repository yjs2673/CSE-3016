

`timescale 1ns / 1ps

module BCD_tb;
reg cin;
reg [3:0] a, b;
wire [3:0] s;
wire check;

BCD u_BCD (
    .cin(cin ),
    .a(a ),
    .b(b ),

    .s(s ),
    .check(check )
);

initial begin
    cin = 1'b0;
    a = 4'D0;
    b = 4'D0;
end

always@(cin or a or b) begin
    cin <= #10 ~cin;
    a <= #20 a+4'D1;
    b <= #40 b+4'D1;
end

initial begin
    #1000
    $finish;
end

endmodule