`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/23 15:14:56
// Design Name: 
// Module Name: AOI
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


module AOI(
   input a,
   input b,
   input c,
   input d,
   output e,
   output f,
   output g
    );
    
assign e = a&&b;
assign f = c&&d;
assign g = ~(e||f);

endmodule
