

`timescale 1ns / 1ps

module shift_counter(
    input reset, cp, x,
    output[3:0] out
);

reg[3:0] out;

always @(posedge cp) begin
    if(reset) begin
        out = 4'b1000;
    end
    else begin
        if((x == 1'b1)) begin
            out[3] <= out[2];
            out[2] <= out[1];
            out[1] <= out[0];
            out[0] <= 1'b1;
        end
        else begin
            out[3] <= out[2];
            out[2] <= out[1];
            out[1] <= out[0];
            out[0] <= 1'b0;
        end
    end
end


endmodule