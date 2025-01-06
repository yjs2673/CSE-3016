`timescale 1ns / 1ps

module DeMorgan2_tb;

reg a, b, c;
wire d;

DeMorgan2 u_DeMorgan2 (
   .a(a ),
   .b(b ),
   .c(c ),
   .d(d )
);

initial begin
   a = 1'b0;
   b = 1'b0;
   c = 1'b0;
end

always@(a or b or c) begin
   a <= #50 ~a;
   b <= #100 ~b;
   c <= #150 ~c;   
end

initial begin
   #1000
   $finish;
end

endmodule
