

`timescale 1ns / 1ps

module decade_counter_tb;

reg cp, reset, x;
wire q;
wire [3:0] bit;

decade_counter u_decade_counter(
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
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
end

initial begin
    #860
    $finish;
end

endmodule
