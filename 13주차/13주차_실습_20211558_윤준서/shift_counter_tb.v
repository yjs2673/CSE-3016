

`timescale 1ns / 1ps

module shift_counter_tb;

reg reset, cp, x;
wire [3:0] out;

shift_counter u_shift_counter(
    .reset(reset ),
    .cp(cp ),
    .x(x ),
    .out(out )
);

initial cp = 1'b0;
initial reset = 1'b1;
initial x = 1'b0;

always cp = #10 ~cp;
always x = #50 ~x;

always@(reset) begin
    reset = #30 ~reset;
end

initial begin
    #1000
    $finish;
end

endmodule