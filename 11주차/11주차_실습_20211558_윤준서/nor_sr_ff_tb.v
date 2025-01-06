

`timescale 1ns / 1ps

module nor_sr_ff_tb;

reg s, r, clock;
wire q, nq;

nor_sr_ff u_test (
    .s(s ),
    .r(r ),
    .clock(clock ),
    .q(q ),
    .nq(nq )
);

initial begin
    s = 1'b0;
    r = 1'b0;
    clock = 1'b1;
end

always@(s or r or clock) begin
    s <= #400 ~s;
    r <= #200 ~r;
    clock <= #100 ~clock; 
end

initial begin
    #1000
    $finish;
end

endmodule
