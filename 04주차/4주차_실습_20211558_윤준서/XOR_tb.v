`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 15:17:51
// Design Name: 
// Module Name: XOR_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module XOR_tb;
reg a, b, c, d;
wire e, f, g;

XOR u_XOR (
   .a(a ),
   .b(b ),
   .c(c ),
   .d(d ),
   .e(e ),
   .f(f ),
   .g(g )
);

initial begin
   a = 1'b0;
   b = 1'b0;
   c = 1'b0;
   d = 1'b0;
end
  
always@(a or b or c or d) begin
   a <= #50 ~a;
   b <= #100 ~b;
   c <= #150 ~c;
   d <= #200 ~d;
end

initial begin
   #1000
   $finish;
end

endmodule
