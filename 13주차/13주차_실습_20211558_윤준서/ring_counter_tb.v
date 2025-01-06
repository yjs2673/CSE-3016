

`timescale 1ns / 1ps

module ring_counter_tb;

reg reset, cp;
wire [3:0] out;

ring_counter u_ring_counter(
    .reset(reset ),
    .cp(cp ),
    .out(out )
);

initial cp = 1'b0;
initial reset = 1'b1;

always cp = #20 ~cp;

always@(reset) begin
    reset = #30 ~reset;
end

initial begin
    #1000
    $finish;
end

endmodule