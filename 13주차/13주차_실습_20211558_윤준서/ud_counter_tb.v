

`timescale 1ns / 1ps

module ud_counter_tb;

reg reset, cp, x;
wire [3:0] out;
wire [6:0] display;

ud_counter u_ud_counter(
    .reset(reset ),
    .cp(cp ),
    .x(x ),
    .out(out ),
    .display(display )
);

initial reset = 1'b1;
initial cp = 1'b0;
initial x = 1'b1;

always cp = #10 ~cp;

always@(reset) begin
    reset = #30 ~reset;
end

always@(x) begin
    x = #500 ~x;
end

initial begin
    #1000
    $finish;
end

endmodule