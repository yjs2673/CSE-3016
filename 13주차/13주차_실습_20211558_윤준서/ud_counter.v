

`timescale 1ns / 1ps

module ud_counter(
    input reset, cp, x,
    output[3:0] out,
    output[6:0] display
);

reg[3:0] out;
reg[6:0] display;

always @(posedge cp) begin
    if(reset) begin
        out <= 4'b0000;
        display <= 1'b0;
    end
    else begin
        if((x == 1'b1)) begin
            out = out + 1;
            display[0] <= 1'b0;
            display[1] <= 1'b1;
            display[2] <= 1'b1;
            display[3] <= 1'b1;
            display[4] <= 1'b1;
            display[5] <= 1'b1;
            display[6] <= 1'b0;
        end
        else begin
            out = out - 1;
            display[0] <= 1'b0;
            display[1] <= 1'b1;
            display[2] <= 1'b1;
            display[3] <= 1'b1;
            display[4] <= 1'b1;
            display[5] <= 1'b0;
            display[6] <= 1'b1;
        end
    end
end

endmodule