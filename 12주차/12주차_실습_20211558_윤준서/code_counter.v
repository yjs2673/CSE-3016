

`timescale 1ns / 1ps

module code_counter(
    input cp,
    input reset,
    input x,
    output q,
    output [3:0] bit
);
    
reg q;
reg [3:0] bit;

always@(posedge cp) begin
    if(reset) begin
        bit[0] = 1'b0;
        bit[1] = 1'b0;
        bit[2] = 1'b0;
        bit[3] = 1'b0;
        q = 1'b0;
    end
    else begin
        if((x == 1'b1)) begin
	bit[0] <= ((~bit[3])&(~bit[1])&(~bit[0])) | (bit[3]&bit[2]&(~bit[1])&(~bit[0])) | (bit[3]&bit[2]&bit[1]&(~bit[0])) | ((~bit[3])&(~bit[2])&bit[1]&(~bit[0]));
	bit[1] <= ((~bit[3])&(~bit[2])&(~bit[1])&bit[0]) | ((~bit[3])&(~bit[2])&bit[1]&(~bit[0])) | ((~bit[3])&bit[2]&(~bit[1])&(~bit[0])) | (bit[3]&bit[2]&(~bit[1])&bit[0]) | (bit[3]&bit[2]&bit[1]&(~bit[0]));
	bit[2] <= (bit[3]&bit[2]&(~bit[1])) | ((~bit[2])&bit[1]&bit[0]) | (bit[3]&bit[2]&bit[1]&(~bit[0]));
	bit[3] <= (bit[2]&(~bit[1])&(~bit[0])) | (bit[3]&(~bit[2])&bit[1]&bit[0]) | (bit[3]&bit[2]&(~bit[1])&bit[0]) | (bit[3]&bit[2]&bit[1]&(~bit[0]));
        if(bit[0] && bit[1] && bit[2] && bit[3]) q <= 1'b1;
        end
    end
end

endmodule
