`timescale 1ns / 1ps

module one_bit_tb;

reg a, b;
wire c, d, e, f;

one_bit u_one_bit (
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
end

always@(a or b) begin
   a <= #50 ~a;
   b <= #100 ~b;
end

initial begin
   #1000
   $finish;
end

endmodule
