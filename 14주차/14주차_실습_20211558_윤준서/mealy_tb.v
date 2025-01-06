`timescale 1ns / 1ps

module mealy_tb;

reg cp, reset, x;
wire y;
wire[3:0] state;

mealy u_mealy(
    .cp(cp ),
    .reset(reset ),
    .x(x ),
    .y(y ),
    .state(state )
);

initial cp = 1'b0;
initial reset = 1'b1;
initial x = 1'b0;


always cp = #20 ~cp;

always@(reset) begin
    reset = #30 ~reset;
end

always@(x) begin
    x = #90 ~x;
    x = #20 ~x;
    
    x = #20 ~x;
    x = #20 ~x;
    
    x = #60 ~x;
    x = #20 ~x;
    
    x = #20 ~x;
    x = #20 ~x;
    
    x = #100 ~x;
    x = #20 ~x;
    
    x = #20 ~x;
    x = #20 ~x;
    
    x = #60 ~x;
    x = #20 ~x;
end

initial begin
    #760
    $finish;
end

endmodule