

`timescale 1ns / 1ps

module sub_tb;

reg bin;
reg [3:0] a, b;
wire [3:0] B, D;

sub u_sub (
    .bin(bin ),

    .a(a ),
    .b(b ),

    .B(B ),
    .D(D )
);

initial begin
    bin = 1'b0;
    a = 4'D0;
    b = 4'D0;
end

always@(bin or a or b) begin
    bin <= #10 ~bin;
    a <= #20 a+4'D1;
    b <= #40 b+4'D1;
end

initial begin
    #1000
    $finish;
end

endmodule

