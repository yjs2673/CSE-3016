`timescale 1ns / 1ps

module encoder_tb;

reg w, x, y, z;
wire e0, e1;

encoder u_encoder (
    .w(w ),
    .x(x ),
    .y(y ),
    .z(z ),
    .e0(e0 ),
    .e1(e1 )
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
    y <= #200 ~y;
    z <= #400 ~z;
end

initial begin
    #1000
    $finish;
end

endmodule
