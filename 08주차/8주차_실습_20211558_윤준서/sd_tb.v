`timescale 1ns / 1ps

module sd_tb;
reg w,x,y,z;
wire a,b,c,d,e,f,g,dp;

sd u_sd (
    .w(w ),
    .x(x ),
    .y(y ),
    .z(z ),
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    .f(f ),
    .g(g ),
    .dp(dp )

  
);

initial begin
    w = 1'b0;
    x = 1'b0;
    y = 1'b0;
    z = 1'b0;
end

always@(w or x or y or z) begin
    w <= #50 ~w;
    x <= #100 ~x;
    y <= #150 ~y;
    z <= #200 ~z;
end

initial begin
    #1000
    $finish;
end

endmodule