`timescale 1ns / 1ps

module Full_Substractor_tb;
reg a, b, b_n_1;
wire b_n, difference;
    
Full_Substractor u_Full_Substractor (
   .a(a ),
   .b(b ),
   .b_n_1(b_n_1 ),
   .b_n(b_n ),
   .difference(difference )
);    
  
initial begin
   a = 1'b0;
   b = 1'b0;
   b_n_1 = 1'b0;
end

always@(a or b or b_n_1) begin
   a <= #50 ~a;
   b <= #100 ~b;
   b_n_1 <= #150 ~b_n_1;
end

initial begin
   #1000
   $finish;
end   
    
endmodule

