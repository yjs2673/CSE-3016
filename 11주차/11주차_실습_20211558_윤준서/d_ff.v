

`timescale 1ns / 1ps

module d_ff(
    input D, clk, clr,
    output Q, Q_p
);

reg Q;

always@(posedge !clk) begin
    if(clr) Q <= 1'b0;
    else begin
        if(D == 1'b0) Q <= 1'b0;
        else if(D == 1'b1) Q <= 1'b1;
    end
end
   
assign Q_p = ~Q;   
    
endmodule