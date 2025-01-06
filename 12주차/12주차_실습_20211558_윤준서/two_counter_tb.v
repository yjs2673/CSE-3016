

`timescale 1ns / 1ps

module two_counter_tb;

reg cp, reset, x;
wire q;
wire [1:0] bit;

two_counter u_two_counter(
    .cp(cp ),
    .reset(reset ),
    .x(x ),
    .q(q ),
    .bit(bit )
);

initial cp = 1'b0;
initial reset = 1'b1;
initial x = 1'b0;

always #10 cp = ~cp;

always@(reset) begin
    reset = #50 ~reset;
end

always@(x) begin
    x = #110 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
end

initial begin
    #380
    $finish;
end

endmodule
