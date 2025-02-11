

`timescale 1ns / 1ps

module ring_counter(
    input reset, cp,
    output[3:0] out
);

reg[3:0] out = 4'b1000;

always @(posedge cp) begin
    if(reset) begin
        out[3] <= 1'b1;
        out[2] <= 1'b0;
        out[1] <= 1'b0;
        out[0] <= 1'b0;
    end
    else begin
        out[0] <= out[1];
        out[1] <= out[2];
        out[2] <= out[3];
        out[3] <= out[0];
    end
end

endmodule