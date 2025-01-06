

`timescale 1ns / 1ps

module d_ff_tb;

reg D, clk, clr;
wire Q, Q_p;

d_ff u_test (
    .D(D ),
    .clk(clk ),
    .clr(clr ),
    .Q(Q ),
    .Q_p(Q_p )
);


initial D = 1'b0;
initial clk = 1'b0;
initial clr = 1'b1;

always clk = #50 ~clk;

always@(clr) begin
    clr = #125 ~clr;
end

always@(D) begin
    D = #375 ~D;
    D = #50 ~D;
end

always@(D) begin
    D = #575 ~D;
    D = #50 ~D;
end

always@(D) begin
    D = #675 ~D;
    D = #50 ~D;
end

initial begin
    #1000
    $finish;
end

endmodule
