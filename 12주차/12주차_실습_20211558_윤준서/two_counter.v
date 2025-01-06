

`timescale 1ns / 1ps

module two_counter(
    input cp,
    input reset,
    input x,
    output q,
    output [1:0] bit
);
    
reg q;
reg [1:0] bit;

always@(posedge cp) begin
    if(reset) begin
        bit[0] <= 1'b0;
        bit[1] <= 1'b0;
        q <= 1'b0;
    end
    else begin
        if((x == 1'b1)) begin
            if(bit[0] && bit[1]) q <= 1'b1;
	if(bit[0] == 1'b1) begin
	    bit[0] <= ~bit[0];
	    bit[1] <= ~bit[1];		
	end
	else bit[0] <= ~bit[0]; 
        end
    end
end

endmodule
