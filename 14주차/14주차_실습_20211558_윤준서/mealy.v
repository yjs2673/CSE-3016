`timescale 1ns / 1ps

module mealy(
    input cp,
    input reset,
    input x,
    output y,
    output[3:0] state
);

reg y;
reg[3:0] state;
reg[3:0] T = 5'b1101;

always @(posedge cp) begin
    if(reset) begin
        state <= 4'b0000;
        y <= 1'b0;
    end
    else begin
        state[3] = state[2];
        state[2] = state[1];
        state[1] = state[0];
        state[0] = x;
        if(state == T) y = 1'b1;
        else y = 1'b0;
    end
end

endmodule