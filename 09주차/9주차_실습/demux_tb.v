`timescale 1ns / 1ps

module demux_tb;

reg  x, y, f;
wire e1, e2, e3, e4;

demux u_demux (
    .x(x ),
    .y(y ),
    .f(f ), 
    
    .e1(e1 ),
    .e2(e2 ),
    .e3(e3 ),
    .e4(e4 )
);

initial begin
    x = 1'b0;
    y = 1'b0;
    f = 1'b0;
end

always@(x or y or f) begin
    x <= #100 ~x;
    y <= #200 ~y;
    f <= #400 ~f;
end

initial begin
    #1000
    $finish;
end

endmodule
